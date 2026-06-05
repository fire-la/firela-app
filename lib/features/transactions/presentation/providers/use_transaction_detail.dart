import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
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
  final VoidCallback loadDetail;
  final Future<bool> Function() save;
  final Future<bool> Function() delete;
  final void Function(int) setSelectedSegment;
  final void Function(String) setDate;
  final void Function(String) setPayee;
  final void Function(List<String>) setTags;

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
    required this.loadDetail,
    required this.save,
    required this.delete,
    required this.setSelectedSegment,
    required this.setDate,
    required this.setPayee,
    required this.setTags,
  });
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
      final data = <String, dynamic>{
        'narration': narrationController.text,
        'payee': payee.value,
        'tags': tagsState.value,
      };
      await IgnApiService.instance.updateTransaction(id, data);
      refreshTransactionData();
      return true;
    } catch (e) {
      logger.e('[TransactionDetail] save failed: $e');
      error.value = e.toString();
      return false;
    } finally {
      isSaving.value = false;
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
    loadDetail: loadDetail,
    save: save,
    delete: deleteTx,
    setSelectedSegment: (index) => selectedSegment.value = index,
    setDate: (date) => selectedDate.value = date,
    setPayee: (name) => payee.value = name,
    setTags: (list) => tagsState.value = list,
  );
}
