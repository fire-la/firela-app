import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/expense_entry_bottom_sheet.dart';
import '../widgets/expense_recognition_result_sheet.dart';
import '../../../../core/router/route_names.dart';

/// Show expense entry bottom sheet
void showExpenseEntrySheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => ExpenseEntryBottomSheet(
      onPhotoRecognition: () {
        // Photo recognition is handled within the sheet
      },
      onBillImport: () {
        context.push(RouteNames.billImport);
      },
      onSubmit: (text) {
        // TODO: Call AI recognition API
        // For now, simulate recognition result
        _simulateRecognition(context, text);
      },
    ),
  );
}

/// Simulate AI recognition (replace with actual API call)
void _simulateRecognition(BuildContext context, String text) {
  // Simulate API delay
  Future.delayed(const Duration(milliseconds: 500), () {
    if (!context.mounted) return;

    // Parse text to extract information
    final amountMatch = RegExp(r'(\d+(?:\.\d+)?)').firstMatch(text);
    final amount = amountMatch != null
        ? double.tryParse(amountMatch.group(1) ?? '')
        : null;

    final hasFood = text.contains('饭') || text.contains('餐') || text.contains('吃');
    final hasTransport = text.contains('车') || text.contains('交通') || text.contains('滴滴');
    final hasEntertainment = text.contains('聚') || text.contains('海底捞');

    String? expenseType;
    if (hasFood) {
      expenseType = '餐饮';
    } else if (hasTransport) {
      expenseType = '交通';
    } else if (hasEntertainment) {
      expenseType = '人情';
    }

    // Calculate confidence based on extracted data
    double confidence = 0.0;
    if (amount != null && expenseType != null) {
      confidence = 0.85; // High confidence
    } else if (amount != null || expenseType != null) {
      confidence = 0.60; // Low confidence
    } else {
      confidence = 0.30; // Very low confidence
    }

    final result = RecognitionResult(
      confidence: confidence,
      amount: amount,
      expenseType: expenseType,
      notes: text,
      isExpense: true,
    );

    // Show recognition result sheet
    showRecognitionResultSheet(context, result);
  });
}

/// Show recognition result bottom sheet
void showRecognitionResultSheet(
  BuildContext context,
  RecognitionResult result,
) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => ExpenseRecognitionResultSheet(
      result: result,
      onConfirm: (finalResult) {
        // TODO: Save expense to backend
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('记账成功: ${finalResult.notes}'),
            duration: const Duration(seconds: 2),
          ),
        );
      },
      onCancel: () {
        // User cancelled
      },
    ),
  );
}
