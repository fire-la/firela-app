import 'package:built_collection/built_collection.dart';
import 'package:firela_api/firela_api.dart' hide FirelaApi;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../api/api.dart';
import '../../../../api/src/api_client.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../shared/signals/region_signal.dart';
import '../../domain/mappers/transaction_mapper.dart';
import '../../domain/models/tag_suggestion.dart';
import '../signals/transaction_mutation_signal.dart';
import '../signals/transaction_refresh_signal.dart';

class TransactionDetailState {
  final bool isLoading;
  final bool isSaving;
  final String? error;
  final Map<String, dynamic>? transaction;
  final TextEditingController narrationController;
  final TextEditingController amountController;
  final int selectedSegment;
  final String selectedDate;
  final String payee;
  final List<String> tags;
  final String firstAccount;
  final bool learnRule;
  final VoidCallback loadDetail;
  final Future<bool> Function() save;
  final Future<bool> Function() delete;
  final Future<bool> Function() createLearnRule;
  final void Function(int) setSelectedSegment;
  final void Function(String) setDate;
  final void Function(String) setPayee;
  final void Function(List<String>) setTags;
  final void Function(bool) setLearnRule;
  final Future<List<TagSuggestion>> Function(String) suggestTags;

  const TransactionDetailState({
    required this.isLoading,
    required this.isSaving,
    this.error,
    this.transaction,
    required this.narrationController,
    required this.amountController,
    required this.selectedSegment,
    required this.selectedDate,
    required this.payee,
    required this.tags,
    required this.firstAccount,
    required this.learnRule,
    required this.loadDetail,
    required this.save,
    required this.delete,
    required this.createLearnRule,
    required this.setSelectedSegment,
    required this.setDate,
    required this.setPayee,
    required this.setTags,
    required this.setLearnRule,
    required this.suggestTags,
  });

  /// Per-currency balance deltas for postings.
  /// Skips interpolated postings (units == null). Balanced when every |delta| < 1e-9.
  List<PostingBalance> get postingBalances {
    final tx = transaction;
    if (tx == null) return const [];
    final postings = (tx['postings'] as List<dynamic>?) ?? const [];
    final byCurrency = <String, double>{};
    for (final raw in postings) {
      if (raw is! Map<String, dynamic>) continue;
      final p = raw;
      final units = p['units'];
      if (units == null) continue; // interpolated posting
      final cur = (p['currency'] as String?) ?? 'UNKNOWN';
      byCurrency[cur] =
          (byCurrency[cur] ?? 0) + (double.tryParse(units.toString()) ?? 0);
    }
    return byCurrency.entries
        .map((e) => PostingBalance(e.key, e.value))
        .toList(growable: false);
  }

  /// True when every currency delta is ~0 (or there are no postings).
  bool get isBalanced {
    final balances = postingBalances;
    return balances.isEmpty || balances.every((b) => b.isZero);
  }
}

TransactionDetailState useTransactionDetail(String id) {
  final isLoading = useState<bool>(true);
  final isSaving = useState<bool>(false);
  final error = useState<String?>(null);
  final transaction = useState<Map<String, dynamic>?>(null);

  final narrationController = useTextEditingController();
  final amountController = useTextEditingController();
  final selectedSegment = useState<int>(1);
  final selectedDate = useState<String>('');
  final payee = useState<String>('');
  final tagsState = useState<List<String>>([]);
  final firstAccount = useState<String>('');
  final learnRule = useState<bool>(false);

  void populateFromData(Map<String, dynamic> data) {
    transaction.value = data;
    narrationController.text = data['narration'] as String? ?? '';
    selectedDate.value = data['date'] as String? ?? '';
    payee.value = data['payee'] as String? ?? '';
    tagsState.value = (data['tags'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [];

    final postings = data['postings'] as List<dynamic>? ?? [];
    if (postings.isNotEmpty) {
      final p = Map<String, dynamic>.from(postings[0] as Map);
      final units = p['units']?.toString() ?? '0';
      amountController.text = units.replaceAll('-', '');
      firstAccount.value = p['accountName'] as String? ?? p['account'] as String? ?? '';
      selectedSegment.value = units.startsWith('-') ? 1 : 0;
    }
  }

  Future<void> loadDetail() async {
    isLoading.value = true;
    error.value = null;
    try {
      final data = await IgnApiService.instance.getTransactionDetail(id);
      populateFromData(data);
    } catch (e) {
      logger.e('[TransactionDetail] load failed: $e');
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() {
    loadDetail();
    return null;
  }, [id]);

  Future<bool> save() async {
    isSaving.value = true;
    try {
      final region = regionSignal.value;
      // Metadata-only PATCH (IGN-298). Structural changes (date/amount/account/
      // postings) must route to correctTransaction() once those fields become
      // editable — see TODO below.
      final dto = await FirelaApi().updateTransactionMeta(
        region,
        id,
        narration: narrationController.text,
        payee: payee.value,
        tags: tagsState.value,
      );
      // TODO(结构字段可编辑): on structural change, build CorrectTransactionDto
      // (date/narration/postings) and call correctTransaction(region, id, dto),
      // then mutateTransaction(SupersedeTransaction(oldId: id, newTx: ...)).
      mutateTransaction(ReplaceTransaction(toTransaction(dto)));
      return true;
    } catch (e) {
      logger.e('[TransactionDetail] save failed: $e');
      error.value = e.toString();
      return false;
    } finally {
      isSaving.value = false;
    }
  }

  /// Create an auto-categorization rule (ADR-0064) — independent of the
  /// transaction PATCH/correct save. Returns false on failure (caller shows a
  /// toast); never throws so it cannot block the transaction save.
  Future<bool> createLearnRule() async {
    final payeeStr = payee.value;
    if (payeeStr.isEmpty) {
      logger.w('[TransactionDetail] createLearnRule skipped: empty payee');
      return false;
    }
    try {
      final region = regionSignal.value;
      final dto = CreateTransactionRuleDto((b) => b
        ..name = 'Rule: $payeeStr'
        ..payeeKeywords = ListBuilder<BuiltList>([
          BuiltList<dynamic>([payeeStr]),
        ])
        // categoryAccount intentionally null: PostingDetailDto exposes only
        // accountName (display), not the beancount-qualified `account` the
        // rule DTO wants. Sending a display name would silently misroute
        // future transactions. TODO: set once account mapping is resolved.
        ..categoryAccount = null
        ..upsertByPayee = true);
      await FirelaApi().createCategoryRule(region, dto);
      return true;
    } catch (e) {
      logger.e('[TransactionDetail] createLearnRule failed: $e');
      return false;
    }
  }

  Future<bool> deleteTx() async {
    try {
      await IgnApiService.instance.deleteTransaction(id);
      refreshTransactionData();
      return true;
    } catch (e) {
      logger.e('[TransactionDetail] delete failed: $e');
      error.value = e.toString();
      return false;
    }
  }

  /// Fetch tag suggestions. Empty query returns the user's most-used tags
  /// (state-1 "recent/common" picker); non-empty does a prefix match.
  /// Failures are silent (returns []) so autocomplete outages don't block editing.
  Future<List<TagSuggestion>> suggestTags(String query) async {
    final q = query.trim();
    try {
      final region = regionSignal.value;
      final qp = <String, dynamic>{'limit': 10};
      if (q.isNotEmpty) qp['q'] = q;
      final resp = await ApiClient().dio.get(
        '/api/v1/$region/bean/transactions/tags',
        queryParameters: qp,
      );
      final data = resp.data as Map<String, dynamic>?;
      final list = (data?['data'] as List?) ?? const [];
      return list
          .map((e) => TagSuggestion.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      logger.e('[TransactionDetail] suggestTags failed: $e');
      return [];
    }
  }

  return TransactionDetailState(
    isLoading: isLoading.value,
    isSaving: isSaving.value,
    error: error.value,
    transaction: transaction.value,
    narrationController: narrationController,
    amountController: amountController,
    selectedSegment: selectedSegment.value,
    selectedDate: selectedDate.value,
    payee: payee.value,
    tags: tagsState.value,
    firstAccount: firstAccount.value,
    learnRule: learnRule.value,
    loadDetail: loadDetail,
    save: save,
    delete: deleteTx,
    createLearnRule: createLearnRule,
    setSelectedSegment: (index) => selectedSegment.value = index,
    setDate: (date) => selectedDate.value = date,
    setPayee: (name) => payee.value = name,
    setTags: (list) => tagsState.value = list,
    setLearnRule: (v) => learnRule.value = v,
    suggestTags: suggestTags,
  );
}

/// Per-currency posting balance delta (sum of posting units in one currency).
class PostingBalance {
  const PostingBalance(this.currency, this.delta);

  final String currency;
  final double delta;

  bool get isZero => delta.abs() < 1e-9;
}
