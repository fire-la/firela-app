import '../../domain/entities/pending_transaction.dart';
import '../../domain/models/confidence_level.dart';

/// Data model for pending transaction with JSON serialization
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
  });

  /// Create from JSON map
  factory PendingTransactionModel.fromJson(Map<String, dynamic> json) {
    return PendingTransactionModel(
      id: json['id'] as String? ?? '',
      accountName: json['account_name'] as String? ?? json['accountName'] as String? ?? '',
      merchantName: json['merchant_name'] as String? ?? json['merchantName'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      currency: json['currency'] as String? ?? 'CNY',
      transactionTime: _parseDateTime(json['transaction_time'] ?? json['transactionTime']),
      confidenceLevel: _parseConfidenceLevel(json['confidence_level'] ?? json['confidenceLevel']),
      confidenceScore: (json['confidence_score'] as num?)?.toDouble() ?? (json['confidenceScore'] as num?)?.toDouble() ?? 0.0,
      createdAt: _parseDateTime(json['created_at'] ?? json['createdAt']),
    );
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
    );
  }
}
