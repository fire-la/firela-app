import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../domain/models/confidence_level.dart';
import '../providers/use_review_center.dart';
import '../widgets/pending_transaction_card.dart';

/// Review Center list page with confidence level tabs
class ReviewCenterPage extends HookWidget {
  const ReviewCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = useReviewCenter();
    final scrollController = useScrollController();
    final tabController = useTabController(initialLength: 4);

    // Tab definitions
    final tabs = [
      (null, '全部'),
      (ConfidenceLevel.high, '高置信度'),
      (ConfidenceLevel.medium, '需确认'),
      (ConfidenceLevel.low, '建议核对'),
    ];

    // Handle tab change
    useEffect(() {
      void listener() {
        final index = tabController.index;
        if (index >= 0 && index < tabs.length) {
          state.changeTab(tabs[index].$1);
          // Track tab switch
          final tabNames = ['all', 'high', 'medium', 'low'];
          AnalyticsService().trackReviewCenter(
            eventType: AnalyticsEvents.reviewTabSwitched,
            tabName: tabNames[index],
          );
        }
      }

      tabController.addListener(listener);
      return () => tabController.removeListener(listener);
    }, [tabController]);

    // Infinite scroll listener
    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          state.loadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, state]);

    // Delete confirmation dialog
    Future<bool> showDeleteConfirmation() async {
      final result = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('确认删除'),
          content: const Text('确定要删除这条待审核交易吗？此操作不可撤销。'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              style: FilledButton.styleFrom(
                backgroundColor: theme.colorScheme.error,
              ),
              child: const Text('删除'),
            ),
          ],
        ),
      );
      return result ?? false;
    }

    // Show toast message
    void showToast(String message, {bool isError = false}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? theme.colorScheme.error : null,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    // Handle confirm
    Future<void> handleConfirm(String id) async {
      final success = await state.confirmTransaction(id);
      if (success) {
        showToast('已保留该交易');
        // Track transaction approved
        AnalyticsService().trackReviewCenter(
          eventType: AnalyticsEvents.reviewTransactionApproved,
          transactionId: id,
        );
      } else {
        showToast('操作失败，请重试', isError: true);
      }
    }

    // Handle delete
    Future<void> handleDelete(String id) async {
      final confirmed = await showDeleteConfirmation();
      if (!confirmed) return;

      final success = await state.deleteTransaction(id);
      if (success) {
        showToast('已删除该交易');
        // Track transaction rejected
        AnalyticsService().trackReviewCenter(
          eventType: AnalyticsEvents.reviewTransactionRejected,
          transactionId: id,
        );
      } else {
        showToast('删除失败，请重试', isError: true);
      }
    }

    // Navigate to detail
    void navigateToDetail(String id) {
      context.push('/review-center/$id');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('审核中心'),
        bottom: TabBar(
          controller: tabController,
          isScrollable: false,
          labelStyle: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Watch((context) => Tab(
              text: '全部(${state.getCountForLevel(null)})',
            )),
            Watch((context) => Tab(
              text: '高(${state.getCountForLevel(ConfidenceLevel.high)})',
            )),
            Watch((context) => Tab(
              text: '需确认(${state.getCountForLevel(ConfidenceLevel.medium)})',
            )),
            Watch((context) => Tab(
              text: '核对(${state.getCountForLevel(ConfidenceLevel.low)})',
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: List.generate(4, (tabIndex) {
          return Watch((context) {
            final transactions = state.transactions;
            final isLoading = state.isLoading;
            final hasMore = state.hasMore;
            final error = state.error;

            // Error state
            if (error != null && transactions.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64,
                      color: theme.colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(error),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: () => state.loadTransactions(refresh: true),
                      child: const Text('重试'),
                    ),
                  ],
                ),
              );
            }

            // Empty state
            if (transactions.isEmpty && !isLoading) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 64,
                      color: theme.colorScheme.primary.withValues(alpha: 0.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '暂无待审核交易',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              );
            }

            // List with refresh
            return RefreshIndicator(
              onRefresh: () => state.loadTransactions(refresh: true),
              child: ListView.builder(
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: transactions.length + (hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  // Loading indicator at bottom
                  if (index == transactions.length) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }

                  final transaction = transactions[index];
                  return PendingTransactionCard(
                    transaction: transaction,
                    onDelete: () => handleDelete(transaction.id),
                    onConfirm: () => handleConfirm(transaction.id),
                    onTap: () => navigateToDetail(transaction.id),
                  );
                },
              ),
            );
          });
        }),
      ),
    );
  }
}
