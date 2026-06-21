import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../api/api.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/entities/transaction.dart';
import '../../domain/mappers/transaction_mapper.dart';
import '../signals/transaction_refresh_signal.dart';

class TransactionListState {
  final bool isLoading;
  final String? error;
  final Map<String, List<Transaction>> groupedTransactions;
  final int loadedCount;
  final int total;
  final bool hasMore;
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
    required this.loadedCount,
    required this.total,
    required this.hasMore,
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
  final transactions = useState<List<Transaction>>([]);
  final total = useState<int>(0);
  final offset = useState<int>(0);
  final hasMore = useState<bool>(true);
  final filterDateFrom = useState<String?>(null);
  final filterDateTo = useState<String?>(null);
  final filterStatus = useState<String?>(null);
  final filterSearch = useState<String?>(null);
  final filterAccountId = useState<String?>(initialAccountId);
  final accountDisplayName = useState<String?>(initialAccountName);

  Map<String, List<Transaction>> groupByDate(List<Transaction> items) {
    final groups = <String, List<Transaction>>{};
    for (final tx in items) {
      final date = tx.date.length >= 10 ? tx.date.substring(0, 10) : tx.date;
      groups.putIfAbsent(date, () => []).add(tx);
    }
    final sorted = groups.keys.toList()..sort((a, b) => b.compareTo(a));
    return {for (final k in sorted) k: groups[k]!};
  }

  String computeSummary(List<Transaction> items) {
    final sum = items.fold<double>(0, (acc, tx) => acc + tx.displayAmount);
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
      // dev single-region; a multi-region selector is a separate task.
      const region = 'cn';
      final response = await FirelaApi().transactions.transactionControllerList(
        region: region,
        limit: 20,
        offset: offset.value,
        dateFrom: filterDateFrom.value,
        dateTo: filterDateTo.value,
        status: filterStatus.value,
        search: filterSearch.value,
        accountId: filterAccountId.value,
      );
      final dto = response.data;
      final newItems = dto == null
          ? <Transaction>[]
          : dto.data.map(toTransaction).toList();
      final t = dto?.total.toInt() ?? 0;

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
    loadedCount: transactions.value.length,
    total: total.value,
    hasMore: hasMore.value,
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
