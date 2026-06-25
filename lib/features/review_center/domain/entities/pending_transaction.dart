import '../models/confidence_level.dart';
import 'decision_option.dart';

/// Pending transaction entity (domain model)
/// Represents a transaction imported from bill files that requires user review.
///
/// List items (ReviewSummaryDto) carry only the summary fields. Detail
/// (ReviewDetailDto) additionally carries `reviewType`, `decisionOptions`,
/// `matchReasons`, `summaryKey`/`summaryParams`; those default empty when the
/// list endpoint is the source.
class PendingTransaction {
  const PendingTransaction({
    required this.id,
    required this.accountName,
    required this.merchantName,
    required this.amount,
    required this.currency,
    required this.transactionTime,
    required this.confidenceLevel,
    required this.confidenceScore,
    required this.createdAt,
    this.reviewType,
    this.decisionOptions = const [],
    this.matchReasons = const [],
    this.summaryKey,
    this.summaryParams,
  });

  final String id;
  final String accountName;
  final String merchantName;
  final double amount;
  final String currency;
  final DateTime transactionTime;
  final ConfidenceLevel confidenceLevel;
  final double confidenceScore; // Raw score (0-100 or 0-1)
  final DateTime createdAt;

  /// Review type wire value (DUPLICATE / RULE_MATCH / PAYEE_MATCH /
  /// ACCOUNT_VALIDATION / PIPELINE_ERROR). Null for list items.
  final String? reviewType;

  /// Decision options to render as action buttons (detail only).
  final List<DecisionOption> decisionOptions;

  /// Human-readable reasons this item needs review (detail only).
  final List<String> matchReasons;

  /// Backend i18n key + params for a one-line summary (detail only).
  final String? summaryKey;
  final Map<String, String>? summaryParams;

  /// Copy with method for immutability
  PendingTransaction copyWith({
    String? id,
    String? accountName,
    String? merchantName,
    double? amount,
    String? currency,
    DateTime? transactionTime,
    ConfidenceLevel? confidenceLevel,
    double? confidenceScore,
    DateTime? createdAt,
    String? reviewType,
    List<DecisionOption>? decisionOptions,
    List<String>? matchReasons,
    String? summaryKey,
    Map<String, String>? summaryParams,
  }) {
    return PendingTransaction(
      id: id ?? this.id,
      accountName: accountName ?? this.accountName,
      merchantName: merchantName ?? this.merchantName,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      transactionTime: transactionTime ?? this.transactionTime,
      confidenceLevel: confidenceLevel ?? this.confidenceLevel,
      confidenceScore: confidenceScore ?? this.confidenceScore,
      createdAt: createdAt ?? this.createdAt,
      reviewType: reviewType ?? this.reviewType,
      decisionOptions: decisionOptions ?? this.decisionOptions,
      matchReasons: matchReasons ?? this.matchReasons,
      summaryKey: summaryKey ?? this.summaryKey,
      summaryParams: summaryParams ?? this.summaryParams,
    );
  }

  /// Create empty transaction
  factory PendingTransaction.empty() {
    return PendingTransaction(
      id: '',
      accountName: '',
      merchantName: '',
      amount: 0.0,
      currency: 'CNY',
      transactionTime: DateTime.now(),
      confidenceLevel: ConfidenceLevel.low,
      confidenceScore: 0.0,
      createdAt: DateTime.now(),
    );
  }

  @override
  String toString() {
    return 'PendingTransaction($id, $merchantName, $amount $currency, ${confidenceLevel.displayName})';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PendingTransaction && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
