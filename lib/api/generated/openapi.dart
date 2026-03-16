// Manual type definitions based on OpenAPI spec
// Generated from: openapi.yaml (fire-la/api-specs)
//
// Note: These types are manually created as a workaround for openapi-generator-dart
// compatibility issues with Dart 3.5+. They follow the OpenAPI spec structure.

// ============================================
// Enums
// ============================================

/// Beancount account type
enum AccountType {
  assets,
  liabilities,
  income,
  expenses,
  equity;

  static AccountType fromString(String value) {
    return AccountType.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => AccountType.assets,
    );
  }
}

/// Account lifecycle status
enum AccountStatus {
  open,
  closed,
  suspended;

  static AccountStatus fromString(String value) {
    return AccountStatus.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => AccountStatus.open,
    );
  }
}

/// Transaction lifecycle status
enum TxnStatus {
  active,
  voided,
  superseded;

  static TxnStatus fromString(String value) {
    return TxnStatus.values.firstWhere(
      (e) => e.name.toLowerCase() == value.toLowerCase(),
      orElse: () => TxnStatus.active,
    );
  }
}

/// Transaction flag: '*' = complete, '!' = incomplete
enum TransactionFlag {
  complete,
  incomplete;

  static TransactionFlag fromString(String value) {
    return value == '!' ? TransactionFlag.incomplete : TransactionFlag.complete;
  }

  String toApiValue() => this == TransactionFlag.complete ? '*' : '!';
}

// ============================================
// Posting
// ============================================

/// Single posting (leg) of a transaction
class Posting {
  final String? id;
  final String? accountId;
  final String? accountName;
  final String? units;
  final String? currency;
  final String? costAmount;
  final String? costCurrency;
  final String? costDate;
  final String? priceAmount;
  final String? priceCurrency;
  final String? flag;
  final Map<String, dynamic>? meta;

  const Posting({
    this.id,
    this.accountId,
    this.accountName,
    this.units,
    this.currency,
    this.costAmount,
    this.costCurrency,
    this.costDate,
    this.priceAmount,
    this.priceCurrency,
    this.flag,
    this.meta,
  });

  factory Posting.fromJson(Map<String, dynamic> json) {
    return Posting(
      id: json['id'] as String?,
      accountId: json['accountId'] as String?,
      accountName: json['accountName'] as String?,
      units: json['units'] as String?,
      currency: json['currency'] as String?,
      costAmount: json['costAmount'] as String?,
      costCurrency: json['costCurrency'] as String?,
      costDate: json['costDate'] as String?,
      priceAmount: json['priceAmount'] as String?,
      priceCurrency: json['priceCurrency'] as String?,
      flag: json['flag'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'accountId': accountId,
        'accountName': accountName,
        'units': units,
        'currency': currency,
        'costAmount': costAmount,
        'costCurrency': costCurrency,
        'costDate': costDate,
        'priceAmount': priceAmount,
        'priceCurrency': priceCurrency,
        'flag': flag,
        'meta': meta,
      };
}

// ============================================
// Transaction
// ============================================

/// Full transaction detail with all postings
class TransactionDetail {
  final String id;
  final String date;
  final TransactionFlag? flag;
  final String? customFlag;
  final String? payee;
  final String narration;
  final List<String>? tags;
  final List<String>? links;
  final Map<String, dynamic>? meta;
  final TxnStatus status;
  final String? sourceType;
  final String? sourcePlatform;
  final List<Posting> postings;
  final String? createdAt;
  final String? voidedAt;
  final String? voidedBy;
  final String? correctionReason;

  const TransactionDetail({
    required this.id,
    required this.date,
    this.flag,
    this.customFlag,
    this.payee,
    required this.narration,
    this.tags,
    this.links,
    this.meta,
    required this.status,
    this.sourceType,
    this.sourcePlatform,
    required this.postings,
    this.createdAt,
    this.voidedAt,
    this.voidedBy,
    this.correctionReason,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) {
    return TransactionDetail(
      id: json['id'] as String? ?? '',
      date: json['date'] as String? ?? '',
      flag: json['flag'] != null ? TransactionFlag.fromString(json['flag'] as String) : null,
      customFlag: json['customFlag'] as String?,
      payee: json['payee'] as String?,
      narration: json['narration'] as String? ?? '',
      tags: (json['tags'] as List<dynamic>?)?.cast<String>().toList(),
      links: (json['links'] as List<dynamic>?)?.cast<String>().toList(),
      meta: json['meta'] as Map<String, dynamic>?,
      status: TxnStatus.fromString(json['status'] as String? ?? 'active'),
      sourceType: json['sourceType'] as String?,
      sourcePlatform: json['sourcePlatform'] as String?,
      postings: (json['postings'] as List<dynamic>?)
              ?.map((p) => Posting.fromJson(p as Map<String, dynamic>))
              .toList() ?? [],
      createdAt: json['createdAt'] as String?,
      voidedAt: json['voidedAt'] as String?,
      voidedBy: json['voidedBy'] as String?,
      correctionReason: json['correctionReason'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'flag': flag?.toApiValue(),
        'customFlag': customFlag,
        'payee': payee,
        'narration': narration,
        'tags': tags,
        'links': links,
        'meta': meta,
        'status': status.name.toUpperCase(),
        'sourceType': sourceType,
        'sourcePlatform': sourcePlatform,
        'postings': postings.map((p) => p.toJson()).toList(),
        'createdAt': createdAt,
        'voidedAt': voidedAt,
        'voidedBy': voidedBy,
        'correctionReason': correctionReason,
      };
}

/// Transaction list response with pagination
class TransactionListResponse {
  final List<TransactionDetail> data;
  final int total;
  final int? limit;
  final int? offset;

  const TransactionListResponse({
    required this.data,
    required this.total,
    this.limit,
    this.offset,
  });

  factory TransactionListResponse.fromJson(Map<String, dynamic> json) {
    return TransactionListResponse(
      data: (json['data'] as List<dynamic>?)
              ?.map((t) => TransactionDetail.fromJson(t as Map<String, dynamic>))
              .toList() ?? [],
      total: json['total'] as int? ?? 0,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );
  }
}

// ============================================
// Create Transaction Request
// ============================================

/// Request body for creating a posting
class CreatePostingRequest {
  final String account;
  final String? units;
  final String? currency;
  final Map<String, dynamic>? meta;

  const CreatePostingRequest({
    required this.account,
    this.units,
    this.currency,
    this.meta,
  });

  Map<String, dynamic> toJson() => {
        'account': account,
        'units': units,
        'currency': currency,
        'meta': meta,
      };
}

/// Request body for creating a transaction
class CreateTransactionRequest {
  final String date;
  final TransactionFlag flag;
  final String? payee;
  final String narration;
  final List<String>? tags;
  final List<String>? links;
  final List<CreatePostingRequest> postings;
  final Map<String, dynamic>? meta;
  final String? idempotencyKey;

  const CreateTransactionRequest({
    required this.date,
    this.flag = TransactionFlag.complete,
    this.payee,
    required this.narration,
    this.tags,
    this.links,
    required this.postings,
    this.meta,
    this.idempotencyKey,
  });

  Map<String, dynamic> toJson() => {
        'date': date,
        'flag': flag.toApiValue(),
        'payee': payee,
        'narration': narration,
        'tags': tags,
        'links': links,
        'postings': postings.map((p) => p.toJson()).toList(),
        'meta': meta,
        'idempotencyKey': idempotencyKey,
      };
}

/// Request body for updating a transaction
class UpdateTransactionRequest {
  final String? payee;
  final String? narration;
  final List<String>? tags;
  final List<String>? links;
  final Map<String, dynamic>? meta;

  const UpdateTransactionRequest({
    this.payee,
    this.narration,
    this.tags,
    this.links,
    this.meta,
  });

  Map<String, dynamic> toJson() => {
        'payee': payee,
        'narration': narration,
        'tags': tags,
        'links': links,
        'meta': meta,
      };
}

// ============================================
// Transaction Response (after create)
// ============================================

/// Response after creating a transaction
class TransactionResponse {
  final String transactionId;
  final String? idempotencyKey;
  final String date;
  final TransactionFlag? flag;
  final String? payee;
  final String narration;
  final List<Posting> postings;
  final bool? interpolated;
  final bool? booked;
  final List<String>? warnings;
  final List<String>? createdAccountIds;
  final Map<String, dynamic>? recurringSuggestion;

  const TransactionResponse({
    required this.transactionId,
    this.idempotencyKey,
    required this.date,
    this.flag,
    this.payee,
    required this.narration,
    required this.postings,
    this.interpolated,
    this.booked,
    this.warnings,
    this.createdAccountIds,
    this.recurringSuggestion,
  });

  factory TransactionResponse.fromJson(Map<String, dynamic> json) {
    return TransactionResponse(
      transactionId: json['transactionId'] as String? ?? '',
      idempotencyKey: json['idempotencyKey'] as String?,
      date: json['date'] as String? ?? '',
      flag: json['flag'] != null ? TransactionFlag.fromString(json['flag'] as String) : null,
      payee: json['payee'] as String?,
      narration: json['narration'] as String? ?? '',
      postings: (json['postings'] as List<dynamic>?)
              ?.map((p) => Posting.fromJson(p as Map<String, dynamic>))
              .toList() ?? [],
      interpolated: json['interpolated'] as bool?,
      booked: json['booked'] as bool?,
      warnings: (json['warnings'] as List<dynamic>?)?.cast<String>().toList(),
      createdAccountIds: (json['createdAccountIds'] as List<dynamic>?)?.cast<String>().toList(),
      recurringSuggestion: json['recurringSuggestion'] as Map<String, dynamic>?,
    );
  }
}

// ============================================
// Health Response
// ============================================

class HealthResponse {
  final String status;
  final String? version;

  const HealthResponse({
    required this.status,
    this.version,
  });

  factory HealthResponse.fromJson(Map<String, dynamic> json) {
    return HealthResponse(
      status: json['status'] as String? ?? 'unknown',
      version: json['version'] as String?,
    );
  }

  bool get isOk => status == 'ok';
}

// ============================================
// Error Response
// ============================================

class ErrorResponse {
  final int? statusCode;
  final String? message;
  final String? error;
  final Map<String, dynamic>? details;

  const ErrorResponse({
    this.statusCode,
    this.message,
    this.error,
    this.details,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      details: json['details'] as Map<String, dynamic>?,
    );
  }
}
