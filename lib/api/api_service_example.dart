/// Example: Using generated API types in Flutter
///
/// After running `flutter pub run build_runner build`,
/// this file demonstrates how to use the generated types.
///
/// Note: This example uses placeholder types until generation is complete.
library;

import 'package:dio/dio.dart';
import 'api_client.dart';

// Import generated types (uncomment after running build_runner)
// import 'generated/openapi.dart';

/// Example Service: Health Check
class HealthService {
  final Dio _dio = ApiClient().dio;

  /// Check API health status
  Future<Map<String, dynamic>> checkHealth() async {
    try {
      final response = await _dio.get('/health');
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      print('Health check failed: ${e.message}');
      rethrow;
    }
  }
}

/// Example Service: Transactions (placeholder until OpenAPI spec expands)
class TransactionService {
  final Dio _dio = ApiClient().dio;

  /// List transactions for a region
  Future<List<dynamic>> listTransactions(String region) async {
    try {
      final response = await _dio.get('/$region/bean/transactions');
      return response.data as List<dynamic>;
    } on DioException catch (e) {
      print('Failed to list transactions: ${e.message}');
      rethrow;
    }
  }

  /// Get single transaction
  Future<Map<String, dynamic>> getTransaction(
    String region,
    String id,
  ) async {
    try {
      final response = await _dio.get('/$region/bean/transactions/$id');
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      print('Failed to get transaction: ${e.message}');
      rethrow;
    }
  }
}

/// Example: Using in a Flutter widget
///
/// ```dart
/// import 'package:flutter/material.dart';
///
/// class TransactionList extends StatefulWidget {
///   final String region;
///
///   const TransactionList({required this.region, super.key});
///
///   @override
///   State<TransactionList> createState() => _TransactionListState();
/// }
///
/// class _TransactionListState extends State<TransactionList> {
///   final _service = TransactionService();
///   List<dynamic>? _transactions;
///
///   @override
///   void initState() {
///     super.initState();
///     _loadTransactions();
///   }
///
///   Future<void> _loadTransactions() async {
///     final transactions = await _service.listTransactions(widget.region);
///     setState(() {
///       _transactions = transactions;
///     });
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     if (_transactions == null) {
///       return const CircularProgressIndicator();
///     }
///
///     return ListView.builder(
///       itemCount: _transactions!.length,
///       itemBuilder: (context, index) {
///         final txn = _transactions![index];
///         return ListTile(
///           title: Text(txn['date'] ?? ''),
///           subtitle: Text(txn['payee'] ?? ''),
///         );
///       },
///     );
///   }
/// }
/// ```
