import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Placeholder page for Review Center detail
/// Will be implemented in Plan 01-04
class ReviewDetailPage extends StatelessWidget {
  const ReviewDetailPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('交易详情'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Text('Review Detail - ID: $id\nComing Soon'),
      ),
    );
  }
}
