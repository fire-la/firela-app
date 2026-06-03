import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../signals/transaction_refresh_signal.dart';

class TransactionListState {
  final bool isLoading;
  final String? error;
  final Map<String, List<Map<String, dynamic>>> groupedTransactions;
  final int total;
  final bool hasMore;
  final String summaryLabel;
  final String summaryValue;
  final String? filterDateFrom;
  final String? filterDateTo;
  final String? filterStatus;
  final String? filterSearch;
  final String? filterAccountId;
  final String? accountDisplayName;
  final VoidCallback loadMore;
  final VoidCallback refresh;
  final void Function(String? dateFrom, String? dateTo, String? status, String? search) applyFilters;
  final VoidCallback clearFilters;

  const TransactionListState({
    required this.isLoading,
    this.error,
    required this.groupedTransactions,
    required this.total,
    required this.hasMore,
    required this.summaryLabel,
    required this.summaryValue,
    this.filterDateFrom,
    this.filterDateTo,
    this.filterStatus,
    this.filterSearch,
    this.filterAccountId,
    this.accountDisplayName,
    required this.loadMore,
    required this.refresh,
    required this.applyFilters,
    required this.clearFilters,
  });
}

TransactionListState useTransactionList({
  String? initialAccountId,
  String? initialAccountName,
}) {
  final isLoading = useState<bool>(true);
  final error = useState<String?>(null);
  final transactions = useState<List<Map<String, dynamic>>>([]);
  final total = useState<int>(0);
  final offset = useState<int>(0);
  final hasMore = useState<bool>(true);
  final filterDateFrom = useState<String?>(null);
  final filterDateTo = useState<String?>(null);
  final filterStatus = useState<String?>(null);
  final filterSearch = useState<String?>(null);
  final filterAccountId = useState<String?>(initialAccountId);
  final accountDisplayName = useState<String?>(initialAccountName);

  Map<String, List<Map<String, dynamic>>> groupByDate(List<Map<String, dynamic>> items) {
    final groups = <String, List<Map<String, dynamic>>>{};
    for (final tx in items) {
      final dateStr = tx['date'] as String? ?? '';
      final date = dateStr.length >= 10 ? dateStr.substring(0, 10) : dateStr;
      groups.putIfAbsent(date, () => []).add(tx);
    }
    final sorted = groups.keys.toList()..sort((a, b) => b.compareTo(a));
    return {for (final k in sorted) k: groups[k]!};
  }

  String computeSummary(List<Map<String, dynamic>> items) {
    double sum = 0;
    for (final tx in items) {
      final postings = tx['postings'] as List<dynamic>?;
      if (postings != null && postings.isNotEmpty) {
        final units = (postings[0] as Map<String, dynamic>)['units'];
        if (units is num) sum += units.toDouble();
      }
    }
    return sum.toStringAsFixed(2);
  }

  Future<void> fetchData({bool reset = false}) async {
    if (!reset && !hasMore.value) return;
    if (isLoading.value && !reset) return;

    isLoading.value = true;
    error.value = null;

    if (reset) {
      offset.value = 0;
      transactions.value = [];
      hasMore.value = true;
    }

    try {
      final params = <String, String>{
        'limit': '20',
        'offset': offset.value.toString(),
      };
      if (filterDateFrom.value != null) params['dateFrom'] = filterDateFrom.value!;
      if (filterDateTo.value != null) params['dateTo'] = filterDateTo.value!;
      if (filterStatus.value != null) params['status'] = filterStatus.value!;
      if (filterSearch.value != null) params['search'] = filterSearch.value!;
      if (filterAccountId.value != null) params['accountId'] = filterAccountId.value!;

      final result = await IgnApiService.instance.getTransactions(params: params);
      final data = result['data'] as List<dynamic>? ?? [];
      final t = (result['total'] as num?)?.toInt() ?? 0;
      final newItems = data.map((e) => Map<String, dynamic>.from(e as Map)).toList();

      transactions.value = [...transactions.value, ...newItems];
      total.value = t;
      offset.value += newItems.length;
      hasMore.value = transactions.value.length < t;
    } catch (e) {
      logger.e('[TransactionList] fetch failed: $e');
      error.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  useEffect(() {
    fetchData(reset: true);
    return null;
  }, []);

  useEffect(() {
    return effect(() {
      if (transactionRefreshSignal.value > 0) {
        Future.microtask(() => fetchData(reset: true));
      }
    });
  }, []);

  return TransactionListState(
    isLoading: isLoading.value,
    error: error.value,
    groupedTransactions: groupByDate(transactions.value),
    total: total.value,
    hasMore: hasMore.value,
    summaryLabel: '${transactions.value.length} / $total transactions',
    summaryValue: computeSummary(transactions.value),
    filterDateFrom: filterDateFrom.value,
    filterDateTo: filterDateTo.value,
    filterStatus: filterStatus.value,
    filterSearch: filterSearch.value,
    filterAccountId: filterAccountId.value,
    accountDisplayName: accountDisplayName.value,
    loadMore: () => fetchData(),
    refresh: () => fetchData(reset: true),
    applyFilters: (dateFrom, dateTo, status, search) {
      filterDateFrom.value = dateFrom;
      filterDateTo.value = dateTo;
      filterStatus.value = status;
      filterSearch.value = search;
      fetchData(reset: true);
    },
    clearFilters: () {
      filterDateFrom.value = null;
      filterDateTo.value = null;
      filterStatus.value = null;
      filterSearch.value = null;
      filterAccountId.value = null;
      accountDisplayName.value = null;
      fetchData(reset: true);
    },
  );
}
