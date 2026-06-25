import '../../domain/entities/pending_transaction.dart';
import '../../domain/entities/decision_option.dart';
import '../../domain/models/confidence_level.dart';

/// Data model for pending transaction with JSON serialization.
///
/// Parses both the list (`ReviewSummaryDto`) and detail (`ReviewDetailDto`)
/// wire shapes — both use camelCase convenience fields. Detail-only fields
/// (`reviewType`, `decisionOptions`, `matchReasons`, `summaryKey`/`summaryParams`)
/// default empty when absent.
class PendingTransactionModel extends PendingTransaction {
  const PendingTransactionModel({
    required super.id,
    required super.accountName,
    required super.merchantName,
    required super.amount,
    required super.currency,
    required super.transactionTime,
    required super.confidenceLevel,
    required super.confidenceScore,
    required super.createdAt,
    super.reviewType,
    super.decisionOptions,
    super.matchReasons,
    super.summaryKey,
    super.summaryParams,
  });

  /// Create from JSON map
  factory PendingTransactionModel.fromJson(Map<String, dynamic> json) {
    return PendingTransactionModel(
      id: json['id'] as String? ?? '',
      accountName: json['account_name'] as String? ?? json['accountName'] as String? ?? '',
      merchantName: json['merchant_name'] as String? ?? json['merchantName'] as String? ?? '',
      amount: _parseAmount(json['amount']),
      currency: json['currency'] as String? ?? 'CNY',
      transactionTime: _parseDateTime(json['transaction_time'] ?? json['transactionTime']),
      confidenceLevel: _parseConfidenceLevel(json['confidence_level'] ?? json['confidenceLevel']),
      // DTO field is `confidence` (0-1); keep legacy snake/camel fallbacks.
      confidenceScore: (json['confidence'] as num?)?.toDouble() ??
          (json['confidence_score'] as num?)?.toDouble() ??
          (json['confidenceScore'] as num?)?.toDouble() ??
          0.0,
      createdAt: _parseDateTime(json['created_at'] ?? json['createdAt']),
      reviewType: json['type'] as String?,
      decisionOptions: _parseDecisionOptions(json['decisionOptions']),
      matchReasons: _parseStringList(json['matchReasons']),
      summaryKey: json['summaryKey'] as String?,
      summaryParams: _parseStringMap(json['summaryParams']),
    );
  }

  static List<DecisionOption> _parseDecisionOptions(dynamic value) {
    if (value is! List) return const [];
    return value
        .whereType<Map<String, dynamic>>()
        .map((o) => DecisionOption(
              value: o['value'] as String? ?? '',
              labelKey: o['labelKey'] as String? ?? '',
              recommended: o['recommended'] as bool? ?? false,
              descriptionKey: o['descriptionKey'] as String?,
            ))
        .where((o) => o.value.isNotEmpty)
        .toList();
  }

  static List<String> _parseStringList(dynamic value) {
    if (value is! List) return const [];
    return value.whereType<String>().toList();
  }

  static Map<String, String>? _parseStringMap(dynamic value) {
    if (value is! Map) return null;
    return value.map((k, v) => MapEntry(k.toString(), v.toString()));
  }

  /// Parse amount from various formats
  // Backend sends Decimal amounts as strings (e.g. "128.50", "0"); accept num or string.
  static double _parseAmount(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  /// Parse DateTime from various formats
  static DateTime _parseDateTime(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value) ?? DateTime.now();
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.now();
  }

  /// Parse ConfidenceLevel from various formats
  static ConfidenceLevel _parseConfidenceLevel(dynamic value) {
    if (value == null) return ConfidenceLevel.low;
    if (value is ConfidenceLevel) return value;
    if (value is String) {
      switch (value.toUpperCase()) {
        case 'HIGH':
          return ConfidenceLevel.high;
        case 'MEDIUM':
          return ConfidenceLevel.medium;
        case 'LOW':
          return ConfidenceLevel.low;
        default:
          // Try parsing as percentage
          final percentage = double.tryParse(value);
          if (percentage != null) {
            return ConfidenceLevel.fromPercentage(percentage);
          }
          return ConfidenceLevel.low;
      }
    }
    if (value is num) {
      return ConfidenceLevel.fromPercentage(value.toDouble());
    }
    return ConfidenceLevel.low;
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'account_name': accountName,
      'merchant_name': merchantName,
      'amount': amount,
      'currency': currency,
      'transaction_time': transactionTime.toIso8601String(),
      'confidence_level': confidenceLevel.name.toUpperCase(),
      'confidence_score': confidenceScore,
      'created_at': createdAt.toIso8601String(),
      if (reviewType != null) 'type': reviewType,
      'decisionOptions': decisionOptions
          .map((o) => {
                'value': o.value,
                'labelKey': o.labelKey,
                if (o.recommended) 'recommended': true,
                if (o.descriptionKey != null) 'descriptionKey': o.descriptionKey,
              })
          .toList(),
      'matchReasons': matchReasons,
      if (summaryKey != null) 'summaryKey': summaryKey,
      if (summaryParams != null) 'summaryParams': summaryParams,
    };
  }

  /// Create from entity
  factory PendingTransactionModel.fromEntity(PendingTransaction entity) {
    return PendingTransactionModel(
      id: entity.id,
      accountName: entity.accountName,
      merchantName: entity.merchantName,
      amount: entity.amount,
      currency: entity.currency,
      transactionTime: entity.transactionTime,
      confidenceLevel: entity.confidenceLevel,
      confidenceScore: entity.confidenceScore,
      createdAt: entity.createdAt,
      reviewType: entity.reviewType,
      decisionOptions: entity.decisionOptions,
      matchReasons: entity.matchReasons,
      summaryKey: entity.summaryKey,
      summaryParams: entity.summaryParams,
    );
  }

  /// Copy with method
  @override
  PendingTransactionModel copyWith({
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
    return PendingTransactionModel(
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
}
