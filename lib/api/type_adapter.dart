import 'package:firela_api/firela_api.dart';
import '../features/review_center/data/models/pending_transaction_model.dart';
import '../features/review_center/domain/models/confidence_level.dart';
import '../core/utils/logger.dart';

/// Adapter for converting generated API types to domain models and vice versa.
///
/// This adapter bridges the gap between:
/// - API types (from OpenAPI spec): TransactionDetail, Posting, etc.
/// - Domain models (app-specific): PendingTransactionModel, etc.
///
/// Usage:
/// ```dart
/// final transaction = TypeAdapter.toPendingTransaction(apiResponse);
/// ```
class TypeAdapter {
  TypeAdapter._();

  // ============================================
  // TransactionDetail -> PendingTransactionModel
  // ============================================

  /// Convert API TransactionDetail to domain PendingTransactionModel
  ///
  /// Maps API fields to domain model:
  /// - id -> id
  /// - date -> transactionTime
  /// - payee/narration -> merchantName
  /// - first posting -> accountName, amount, currency
  /// - status -> confidenceLevel (inferred)
  static PendingTransactionModel toPendingTransaction(TransactionDetail dto) {
    // Get first posting for amount/currency/account info
    final firstPosting = dto.postings.isNotEmpty ? dto.postings.first : null;

    // Parse amount from posting
    final amount = _parseAmount(firstPosting?.units);

    // Get currency from posting
    final currency = firstPosting?.currency ?? 'CNY';

    // Get account name
    final accountName = firstPosting?.accountName ?? '';

    // Get merchant name (prefer payee, fallback to narration)
    final merchantName = dto.payee ?? dto.narration;

    // Parse transaction time from Date object
    final transactionTime = DateTime(
      dto.date.year,
      dto.date.month,
      dto.date.day,
    );

    // Infer confidence level from source type or status
    final confidenceLevel = _inferConfidenceLevel(dto.sourceType, dto.sourcePlatform);

    // Calculate confidence score (0-100)
    final confidenceScore = _calculateConfidenceScore(dto.sourceType, dto.sourcePlatform);

    // Parse created time (createdAt is already DateTime? in generated type)
    final createdAt = dto.createdAt ?? DateTime.now();

    return PendingTransactionModel(
      id: dto.id,
      accountName: accountName,
      merchantName: merchantName,
      amount: amount,
      currency: currency,
      transactionTime: transactionTime,
      confidenceLevel: confidenceLevel,
      confidenceScore: confidenceScore,
      createdAt: createdAt,
    );
  }

  /// Convert list of TransactionDetail to list of PendingTransactionModel
  static List<PendingTransactionModel> toPendingTransactionList(
    List<TransactionDetail> dtos,
  ) {
    return dtos.map(toPendingTransaction).toList();
  }

  // ============================================
  // Review Center API Item -> PendingTransactionModel
  // (Direct JSON parsing for Review Center API)
  // ============================================

  /// Convert Review Center API item (JSON map) to PendingTransactionModel
  ///
  /// The API returns:
  /// {
  ///   "id": "...",
  ///   "type": "ACCOUNT_VALIDATION",
  ///   "confidenceLevel": "LOW",
  ///   "merchantName": "脆皮油条",
  ///   "amount": 0,  // Often 0 in review items
  ///   "currency": "CNY",
  ///   "transactionTime": "2025-09-26",
  ///   "transaction": {
  ///     "postings": [{"units": "-3.5", "currency": "CNY"}, ...],
  ///     ...
  ///   }
  /// }
  static PendingTransactionModel toPendingTransactionFromRaw(Map<String, dynamic> json) {
    // Log full JSON to see all available fields
    logger.d('[TypeAdapter] Full JSON for ${json['id']}: $json');

    // Get transaction nested object if present
    final tx = json['transaction'] as Map<String, dynamic>?;
    final txPostings = tx?['postings'];

    logger.d('[TypeAdapter] Parsing item: id=${json['id']}, tx=${tx != null}, postings=${txPostings != null}');
    logger.d('[TypeAdapter] Top-level amount: ${json['amount']}, tx amount: ${tx?['amount']}');

    // Parse amount - prefer postings[0].units over top-level amount
    // The top-level amount is often 0 in review items, real amount is in postings
    double amount = 0.0;
    final postings = txPostings as List<dynamic>?;
    if (postings != null && postings.isNotEmpty) {
      final firstPosting = postings.first;
      logger.d('[TypeAdapter] First posting type: ${firstPosting.runtimeType}, value: $firstPosting');
      if (firstPosting is Map<String, dynamic>) {
        final units = firstPosting['units'];
        logger.d('[TypeAdapter] units from posting: $units (type: ${units.runtimeType})');
        if (units != null) {
          amount = _parseAmountValue(units);
          // Take absolute value since amount should be positive
          amount = amount.abs();
          logger.d('[TypeAdapter] Parsed amount from postings: $amount');
        }
      }
    } else {
      logger.d('[TypeAdapter] No postings found, tx=$tx, postings=$postings');
    }
    // Fallback to top-level amount if postings didn't have valid amount
    if (amount == 0.0 && json['amount'] != null) {
      amount = _parseAmountValue(json['amount']);
      logger.d('[TypeAdapter] Fallback to top-level amount: $amount');
    }

    // Get currency
    final currency = json['currency'] as String? ?? tx?['currency'] as String? ?? 'CNY';

    // Get merchant name - check multiple possible fields
    final merchantName = json['merchantName'] as String?
        ?? json['summary'] as String?
        ?? tx?['payee'] as String?
        ?? tx?['narration'] as String?
        ?? '';

    // Get account name from matchReasons
    String accountName = '';
    final matchReasons = json['matchReasons'] as List<dynamic>?;
    if (matchReasons != null && matchReasons.isNotEmpty) {
      // Try to extract account name from first match reason
      final firstReason = matchReasons.first;
      if (firstReason is String) {
        // Look for account name pattern like 'Assets:WeChat:Balance'
        final accountPattern = RegExp(r"'([^']+)'");
        final match = accountPattern.firstMatch(firstReason);
        if (match != null) {
          accountName = match.group(1) ?? '';
        }
      }
    }

    // Parse transaction time
    final transactionTime = _parseDateTimeValue(
      json['transactionTime'] ?? tx?['date'] ?? json['date']
    );

    // Parse confidence level
    final confidenceLevel = _parseConfidenceLevelValue(
      json['confidenceLevel'] ?? json['confidence_level']
    );

    // Parse confidence score
    final confidenceScore = _parseAmountValue(json['confidence'] ?? json['confidenceScore']);

    // Parse created at
    final createdAt = _parseDateTimeValue(json['createdAt'] ?? json['created_at']);

    logger.i('[TypeAdapter] Final model: id=${json['id']}, merchantName=$merchantName, amount=$amount, currency=$currency');

    return PendingTransactionModel(
      id: json['id'] as String? ?? '',
      accountName: accountName,
      merchantName: merchantName,
      amount: amount,
      currency: currency,
      transactionTime: transactionTime,
      confidenceLevel: confidenceLevel,
      confidenceScore: confidenceScore,
      createdAt: createdAt,
    );
  }

  /// Convert list of Review Center items (JSON maps) to PendingTransactionModel list
  static List<PendingTransactionModel> toPendingTransactionListFromRaw(List<dynamic> items) {
    return items
        .whereType<Map<String, dynamic>>()
        .map(toPendingTransactionFromRaw)
        .toList();
  }

  // ============================================
  // Helper Methods
  // ============================================

  /// Parse amount from string (decimal for precision)
  static double _parseAmount(String? value) {
    if (value == null || value.isEmpty) return 0.0;
    return double.tryParse(value) ?? 0.0;
  }

  /// Parse amount from various formats (num, String)
  static double _parseAmountValue(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  /// Parse DateTime from various formats
  static DateTime _parseDateTimeValue(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) {
      // Handle date-only format: "2025-09-26"
      if (value.length == 10 && value.contains('-')) {
        final parts = value.split('-');
        return DateTime(
          int.parse(parts[0]),
          int.parse(parts[1]),
          int.parse(parts[2]),
        );
      }
      return DateTime.tryParse(value) ?? DateTime.now();
    }
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.now();
  }

  /// Parse ConfidenceLevel from string value
  static ConfidenceLevel _parseConfidenceLevelValue(dynamic value) {
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
          return ConfidenceLevel.low;
      }
    }
    return ConfidenceLevel.low;
  }

  /// Infer confidence level from source type or status
  ///
  /// This maps the API source types to the Review Center confidence levels:
  /// - HIGH: OCR/Imported from reliable sources
  /// - MEDIUM: NLP-categorized, rule matches
  /// - LOW: Manual entry required, validation needed
  static ConfidenceLevel _inferConfidenceLevel(String? sourceType, String? sourcePlatform) {
    if (sourceType == null) return ConfidenceLevel.low;

    switch (sourceType.toUpperCase()) {
      case 'OCR':
      case 'IMPORT':
        return ConfidenceLevel.high;
      case 'NLP':
      case 'RULE_MATCH':
      case 'PAYEE_MATCH':
        return ConfidenceLevel.medium;
      case 'MANUAL':
      case 'DUPLICATE':
      case 'ACCOUNT_VALIDATION':
      case 'PIPELINE_ERROR':
      default:
        return ConfidenceLevel.low;
    }
  }

  /// Calculate confidence score (0-100) from source type
  static double _calculateConfidenceScore(String? sourceType, String? sourcePlatform) {
    final level = _inferConfidenceLevel(sourceType, sourcePlatform);
    switch (level) {
      case ConfidenceLevel.high:
        return 90.0;
      case ConfidenceLevel.medium:
        return 60.0;
      case ConfidenceLevel.low:
        return 30.0;
    }
  }

  // ============================================
  // Account Type Helpers
  // ============================================

  /// Parse account type from API enum
  static String accountTypeToString(AccountType type) {
    return type.name.toUpperCase();
  }

  /// Parse account status from API enum
  static String accountStatusToString(AccountStatus status) {
    return status.name.toUpperCase();
  }

  /// Parse transaction status from API enum
  static String txnStatusToString(TxnStatus status) {
    return status.name.toUpperCase();
  }
}
