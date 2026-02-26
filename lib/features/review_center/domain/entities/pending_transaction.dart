import '../data/models/confidence_level.dart';

/// Pending transaction entity (domain model)
/// Represents a transaction imported from bill files that requires user review
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
