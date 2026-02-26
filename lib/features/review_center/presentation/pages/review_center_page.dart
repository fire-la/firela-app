import 'package:flutter/material.dart';

/// Placeholder page for Review Center list
/// Will be implemented in Plan 01-03
class ReviewCenterPage extends StatelessWidget {
  const ReviewCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('审核中心'),
      ),
      body: const Center(
        child: Text('Review Center - Coming Soon'),
      ),
    );
  }
}
