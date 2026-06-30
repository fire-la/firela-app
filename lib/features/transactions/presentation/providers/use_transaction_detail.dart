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
import '../../domain/models/posting_edit.dart';
import '../../domain/models/tag_suggestion.dart';
import '../../domain/posting_rebuild.dart';
import '../../domain/structural_change.dart' as domain;
import '../signals/transaction_mutation_signal.dart';
import '../signals/transaction_refresh_signal.dart';

class TransactionDetailState {
  final bool isLoading;
  final bool isSaving;
  final String? error;
  final TransactionDetailDto? transaction;
  final TextEditingController narrationController;
  final TextEditingController amountController;
  final int selectedSegment;
  final String selectedDate;
  final String payee;
  final List<String> tags;
  final List<PostingEdit> postings;
  final bool learnRule;
  final VoidCallback loadDetail;
  final Future<bool> Function() save;
  final Future<bool> Function() delete;
  final Future<bool> Function() createLearnRule;
  final void Function(String) onAmountChanged;
  final void Function(String) setCategoryAccount;
  final void Function(String) setPaymentAccount;
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
    required this.postings,
    required this.learnRule,
    required this.loadDetail,
    required this.save,
    required this.delete,
    required this.createLearnRule,
    required this.onAmountChanged,
    required this.setCategoryAccount,
    required this.setPaymentAccount,
    required this.setDate,
    required this.setPayee,
    required this.setTags,
    required this.setLearnRule,
    required this.suggestTags,
  });

  /// Whether structural edits are allowed (only ACTIVE transactions can be
  /// corrected; superseding an already-superseded/voided tx is undefined).
  bool get canEditStructural =>
      transaction?.status == TransactionDetailDtoStatusEnum.ACTIVE;

  /// The quick amount field rebalances a 2-posting pair; multi-posting amounts
  /// need the per-posting editor (deferred), so the field stays read-only there.
  bool get canEditAmount => canEditStructural && postings.length == 2;

  /// First Expense/Income posting account (the "category"), or null.
  String? get categoryAccount => categoryAccountOf(postings);

  /// First Assets/Liabilities posting account (the payment account), else the
  /// first posting's account.
  String? get paymentAccount {
    for (final p in postings) {
      if (p.account.startsWith('Assets') || p.account.startsWith('Liabilities')) {
        return p.account;
      }
    }
    return postings.isEmpty ? null : postings.first.account;
  }

  String get categoryLeaf => _leaf(categoryAccount);
  String get paymentAccountLeaf => _leaf(paymentAccount);

  static String _leaf(String? path) {
    if (path == null || path.isEmpty) return '—';
    return path.split(':').last;
  }

  List<domain.PostingBalance> get postingBalances =>
      domain.postingBalances(postings);
  bool get isBalanced => domain.isBalanced(postings);
}

TransactionDetailState useTransactionDetail(String id) {
  final isLoading = useState<bool>(true);
  final isSaving = useState<bool>(false);
  final error = useState<String?>(null);
  final transaction = useState<TransactionDetailDto?>(null);

  final narrationController = useTextEditingController();
  final amountController = useTextEditingController();
  final selectedSegment = useState<int>(1);
  final selectedDate = useState<String>('');
  final payee = useState<String>('');
  final tagsState = useState<List<String>>([]);
  final postingsState = useState<List<PostingEdit>>(const []);
  final learnRule = useState<bool>(false);

  void populate(TransactionDetailDto tx) {
    transaction.value = tx;
    narrationController.text = tx.narration;
    selectedDate.value = tx.date;
    payee.value = tx.payee ?? '';
    tagsState.value = tx.tags.toList();
    final postings = tx.postings.map(PostingEdit.from).toList();
    postingsState.value = postings;
    if (postings.isNotEmpty) {
      final first = tx.postings.first;
      final units = first.units;
      amountController.text = units == null ? '' : units.replaceAll('-', '');
      selectedSegment.value =
          units != null && units.startsWith('-') ? 1 : 0;
    }
  }

  Future<void> loadDetail() async {
    isLoading.value = true;
    error.value = null;
    try {
      final dto = await FirelaApi().getTransactionDetail(regionSignal.value, id);
      populate(dto);
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

  /// Replace the posting at [predicate] with an updated account, leaving the
  /// rest of the postings untouched.
  void setAccountWhere(bool Function(String) predicate, String path) {
    final next = List<PostingEdit>.from(postingsState.value);
    final i = next.indexWhere((p) => predicate(p.account));
    if (i != -1) next[i] = next[i].copyWith(account: path);
    postingsState.value = next;
  }

  Future<bool> save() async {
    if (isSaving.value) return false;
    final tx = transaction.value;
    if (tx == null) return false;
    isSaving.value = true;
    try {
      final region = regionSignal.value;
      final structural = domain.isStructuralChange(
        original: tx,
        date: selectedDate.value,
        postings: postingsState.value,
      );
      if (!structural) {
        final dto = await FirelaApi().updateTransactionMeta(
          region,
          id,
          narration: narrationController.text,
          payee: payee.value,
          tags: tagsState.value,
        );
        mutateTransaction(ReplaceTransaction(toTransaction(dto)));
        return true;
      }
      // Structural change → supersede via /correct. Amount editing is gated to
      // 2-posting transactions (see canEditAmount), so allowed edits keep
      // postings balanced; this is a backstop for an originally-unbalanced tx.
      if (!domain.isBalanced(postingsState.value)) {
        return false;
      }
      final corrected = await FirelaApi().correctTransaction(
        region,
        id,
        CorrectTransactionDto((b) => b
          ..date = selectedDate.value
          ..narration = narrationController.text
          ..payee = payee.value
          ..tags = ListBuilder<String>(tagsState.value)
          ..postings = ListBuilder<CreatePostingDto>(
              postingsState.value.map((p) => p.toCreatePostingDto()))
          ..autoCreateAccounts = false),
      );
      mutateTransaction(
          SupersedeTransaction(oldId: id, newTx: toTransaction(corrected)));
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
    final category = categoryAccountOf(postingsState.value);
    // ADR-0064: rules only target Expense/Income (flow) category accounts. The
    // UI hides the toggle when `category` is null, but guard here too — this is
    // the money-path to the backend, and a future caller (or a relaxed gate)
    // must never send a malformed null-category rule.
    if (payeeStr.isEmpty || category == null) {
      logger.w(
          '[TransactionDetail] createLearnRule skipped: empty payee or no category account');
      return false;
    }
    try {
      final dto = CreateTransactionRuleDto((b) => b
        ..name = 'Rule: $payeeStr'
        ..payeeKeywords = ListBuilder<BuiltList>([
          BuiltList<dynamic>([payeeStr]),
        ])
        ..categoryAccount = category
        ..upsertByPayee = true);
      await FirelaApi().createCategoryRule(regionSignal.value, dto);
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
    postings: postingsState.value,
    learnRule: learnRule.value,
    loadDetail: loadDetail,
    save: save,
    delete: deleteTx,
    createLearnRule: createLearnRule,
    onAmountChanged: (text) {
      final amount = double.tryParse(text) ?? 0;
      postingsState.value =
          rebuildForAmountChange(postingsState.value, amount, selectedSegment.value);
    },
    setCategoryAccount: (path) => setAccountWhere(
        (a) => a.startsWith('Expenses') || a.startsWith('Income'), path),
    setPaymentAccount: (path) => setAccountWhere(
        (a) => a.startsWith('Assets') || a.startsWith('Liabilities'), path),
    setDate: (date) => selectedDate.value = date,
    setPayee: (name) => payee.value = name,
    setTags: (list) => tagsState.value = list,
    setLearnRule: (v) => learnRule.value = v,
    suggestTags: suggestTags,
  );
}

/// First Expense/Income account path in [postings], or null. Used by the
/// learn-rule creation (ADR-0064: rules target the category account).
String? categoryAccountOf(List<PostingEdit> postings) {
  for (final p in postings) {
    if (p.account.startsWith('Expenses') || p.account.startsWith('Income')) {
      return p.account;
    }
  }
  return null;
}
