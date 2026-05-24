import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/accounts/presentation/pages/accounts_page.dart';
import '../../features/expense/presentation/pages/bill_import_page.dart';
import '../../features/review_center/presentation/pages/review_center_page.dart';
import '../../features/review_center/presentation/pages/review_detail_page.dart';
import '../../features/assets/presentation/pages/asset_detail_placeholder_page.dart';
import '../../features/transactions/presentation/pages/transaction_list_page.dart';
import '../../features/transactions/presentation/pages/transaction_detail_edit_page.dart';
import '../../features/recurring/presentation/pages/recurring_transaction_dialog_page.dart';
import '../../features/recurring/presentation/pages/recurring_transaction_setup_page.dart';
import 'route_names.dart';

/// Application router configuration
final appRouter = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    GoRoute(
      path: RouteNames.home,
      name: 'home',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: RouteNames.accounts,
      name: 'accounts',
      builder: (context, state) => const AccountsPage(),
    ),
    GoRoute(
      path: RouteNames.billImport,
      name: 'bill_import',
      builder: (context, state) => const BillImportPage(),
    ),
    GoRoute(
      path: RouteNames.reviewCenter,
      name: 'review_center',
      builder: (context, state) => const ReviewCenterPage(),
    ),
    GoRoute(
      path: RouteNames.reviewCenterDetail,
      name: 'review_center_detail',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        return ReviewDetailPage(id: id);
      },
    ),
    GoRoute(
      path: RouteNames.assetsDetails,
      name: 'assets_details',
      builder: (context, state) => const AssetDetailPlaceholderPage(title: 'Details'),
    ),
    GoRoute(
      path: RouteNames.assetsStatistics,
      name: 'assets_statistics',
      builder: (context, state) => const AssetDetailPlaceholderPage(title: 'Statistics'),
    ),
    GoRoute(
      path: RouteNames.transactions,
      name: 'transactions',
      builder: (context, state) => const TransactionListPage(),
    ),
    GoRoute(
      path: RouteNames.transactionDetail,
      name: 'transaction_detail',
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        return TransactionDetailEditPage(id: id);
      },
    ),
    GoRoute(
      path: RouteNames.recurringDialog,
      name: 'recurring_dialog',
      builder: (context, state) {
        final txId = state.uri.queryParameters['transactionId'] ?? '';
        final matchedDate = state.uri.queryParameters['matchedDate'] ?? '';
        final amount = state.uri.queryParameters['amount'] ?? '';
        return RecurringTransactionDialogPage(
          transactionId: txId,
          matchedDate: matchedDate,
          amount: amount,
        );
      },
    ),
    GoRoute(
      path: RouteNames.recurringSetup,
      name: 'recurring_setup',
      builder: (context, state) {
        final txId = state.uri.queryParameters['transactionId'];
        return RecurringTransactionSetupPage(transactionId: txId);
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(
            'Page not found',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(state.uri.toString()),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => context.go(RouteNames.home),
            child: const Text('Go Home'),
          ),
        ],
      ),
    ),
  ),
);
