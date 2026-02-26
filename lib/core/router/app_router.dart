import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/accounts/presentation/pages/accounts_page.dart';
import '../../features/expense/presentation/pages/bill_import_page.dart';
import '../../features/review_center/presentation/pages/review_center_page.dart';
import '../../features/review_center/presentation/pages/review_detail_page.dart';
import 'route_names.dart';

/// Application router configuration
final appRouter = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    GoRoute(
      path: RouteNames.home,
      name: RouteNames.home,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: RouteNames.accounts,
      name: RouteNames.accounts,
      builder: (context, state) => const AccountsPage(),
    ),
    GoRoute(
      path: RouteNames.billImport,
      name: RouteNames.billImport,
      builder: (context, state) => const BillImportPage(),
    ),
    GoRoute(
      path: RouteNames.reviewCenter,
      name: RouteNames.reviewCenter,
      builder: (context, state) => const ReviewCenterPage(),
    ),
    GoRoute(
      path: RouteNames.reviewCenterDetail,
      name: RouteNames.reviewCenterDetail,
      builder: (context, state) {
        final id = state.pathParameters['id'] ?? '';
        return ReviewDetailPage(id: id);
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
