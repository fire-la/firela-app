/// Example: Using IGN API in Flutter
///
/// This file demonstrates how to use the IgnApi service
/// in a Flutter application.
library;

// ignore_for_file: unused_import

/// Example usage in Flutter widget
///
/// ```dart
/// import 'package:flutter/material.dart';
/// import 'api/ign_api.dart';
///
/// class TransactionListScreen extends StatefulWidget {
///   final String region;
///
///   const TransactionListScreen({required this.region, super.key});
///
///   @override
///   State<TransactionListScreen> createState() => _TransactionListScreenState();
/// }
///
/// class _TransactionListScreenState extends State<TransactionListScreen> {
///   final _api = IgnApi();
///   List<dynamic>? _transactions;
///   bool _isLoading = false;
///   String? _error;
///
///   @override
///   void initState() {
///     super.initState();
///     _loadTransactions();
///   }
///
///   Future<void> _loadTransactions() async {
///     setState(() {
///       _isLoading = true;
///       _error = null;
///     });
///
///     try {
///       final response = await _api.transactions.listTransactions(
///         widget.region,
///         limit: 50,
///       );
///       final data = response.data;
///       setState(() {
///         _transactions = data['data'] as List<dynamic>?;
///         _isLoading = false;
///       });
///     } on DioException catch (e) {
///       setState(() {
///         _error = e.message ?? 'Failed to load transactions';
///         _isLoading = false;
///       });
///     }
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     if (_isLoading) {
///       return const Center(child: CircularProgressIndicator());
///     }
///
///     if (_error != null) {
///       return Center(
///         child: Column(
///           mainAxisAlignment: MainAxisAlignment.center,
///           children: [
///             Text('Error: $_error'),
///             ElevatedButton(
///               onPressed: _loadTransactions,
///               child: const Text('Retry'),
///             ),
///           ],
///         ),
///       );
///     }
///
///     if (_transactions == null || _transactions!.isEmpty) {
///       return const Center(child: Text('No transactions found'));
///     }
///
///     return RefreshIndicator(
///       onRefresh: _loadTransactions,
///       child: ListView.builder(
///         itemCount: _transactions!.length,
///         itemBuilder: (context, index) {
///           final txn = _transactions![index];
///           return ListTile(
///             title: Text(txn['narration'] ?? 'No description'),
///             subtitle: Text(txn['date'] ?? ''),
///             trailing: Text(
///               txn['postings'] != null
///                   ? '${txn['postings'].length} postings'
///                   : '',
///             onTap: () {
///               // Navigate to transaction detail
///             },
///           );
///         },
///       ),
///     );
///   }
/// }
/// ```
///
/// ## Setting Auth Token
///
/// ```dart
/// // After user login
/// final api = IgnApi();
/// api.setAuthToken('your-jwt-token');
///
/// // Now all API calls will include the Bearer token
/// final response = await api.transactions.listTransactions('cn');
/// ```
///
/// ## Clearing Auth Token (Logout)
///
/// ```dart
/// final api = IgnApi();
/// api.clearAuthToken();
/// ```
class IgnApiExample {
  // This class is for documentation purposes only.
  // See the comments above for usage examples.
}
