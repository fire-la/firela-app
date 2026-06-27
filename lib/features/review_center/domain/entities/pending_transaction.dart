import '../models/confidence_level.dart';
import '../models/review_type.dart';
import 'account_validation_data.dart';
import 'decision_option.dart';
import 'duplicate_data.dart';
import 'payee_match_data.dart';
import 'pipeline_error_data.dart';
import 'rule_match_data.dart';

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
    this.sourceType,
    this.decisionOptions = const [],
    this.matchReasons = const [],
    this.summaryKey,
    this.summaryParams,
    this.accountValidation,
    this.duplicateData,
    this.ruleMatchData,
    this.pipelineErrorData,
    this.payeeMatchData,
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

  /// Review type (typed). Always present for real items (the list and detail
  /// DTOs carry a non-null type enum); null only on the [empty] placeholder.
  final ReviewType? reviewType;

  /// Import source type (CSV / NLP / OCR / API). Drives the row's source tag.
  final String? sourceType;

  /// Decision options to render as action buttons (detail only).
  final List<DecisionOption> decisionOptions;

  /// Human-readable reasons this item needs review (detail only).
  final List<String> matchReasons;

  /// Backend i18n key + params for a one-line summary (detail only).
  final String? summaryKey;
  final Map<String, String>? summaryParams;

  /// ACCOUNT_VALIDATION branch data (detail only). Drives the account picker.
  final AccountValidationData? accountValidation;

  /// DUPLICATE branch data (detail only). Drives the compare card.
  final DuplicateData? duplicateData;

  /// RULE_MATCH branch data (detail only). Drives the rule suggestion card.
  final RuleMatchData? ruleMatchData;

  /// PIPELINE_ERROR branch data (detail only). Drives the pipeline error card.
  final PipelineErrorData? pipelineErrorData;

  /// PAYEE_MATCH branch data (detail only). Drives the payee suggestion card.
  final PayeeMatchData? payeeMatchData;

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
    ReviewType? reviewType,
    String? sourceType,
    List<DecisionOption>? decisionOptions,
    List<String>? matchReasons,
    String? summaryKey,
    Map<String, String>? summaryParams,
    AccountValidationData? accountValidation,
    DuplicateData? duplicateData,
    RuleMatchData? ruleMatchData,
    PipelineErrorData? pipelineErrorData,
    PayeeMatchData? payeeMatchData,
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
      sourceType: sourceType ?? this.sourceType,
      decisionOptions: decisionOptions ?? this.decisionOptions,
      matchReasons: matchReasons ?? this.matchReasons,
      summaryKey: summaryKey ?? this.summaryKey,
      summaryParams: summaryParams ?? this.summaryParams,
      accountValidation: accountValidation ?? this.accountValidation,
      duplicateData: duplicateData ?? this.duplicateData,
      ruleMatchData: ruleMatchData ?? this.ruleMatchData,
      pipelineErrorData: pipelineErrorData ?? this.pipelineErrorData,
      payeeMatchData: payeeMatchData ?? this.payeeMatchData,
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
