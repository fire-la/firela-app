/// Typed response models for Firela API
///
/// DEPRECATED: These models are superseded by the generated `firela_api` package.
/// Use `import 'package:firela_api/firela_api.dart'` instead.
/// The generated models use `built_value` and are auto-maintained from the OpenAPI spec.
///
/// This file is kept for reference only and will be removed in a future cleanup.
library;

// =============================================================================
// Transaction Responses
// =============================================================================

/// Posting detail within a transaction (list/detail endpoints)
class PostingDetail {
  final String id;
  final String accountId;
  final String accountName;
  final String? units;
  final String? currency;
  final String? costAmount;
  final String? costCurrency;
  final String? costDate;
  final String? priceAmount;
  final String? priceCurrency;
  final String? flag;
  final Map<String, dynamic>? meta;

  const PostingDetail({
    required this.id,
    required this.accountId,
    required this.accountName,
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

  factory PostingDetail.fromJson(Map<String, dynamic> json) {
    return PostingDetail(
      id: json['id'] as String,
      accountId: json['accountId'] as String,
      accountName: json['accountName'] as String,
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
}

/// Transaction detail (GET /transactions/:id, list item)
class TransactionDetail {
  final String id;
  final String date;
  final String? flag;
  final String? customFlag;
  final String? payee;
  final String narration;
  final List<String> tags;
  final List<String> links;
  final Map<String, dynamic>? meta;
  final String status;
  final String? sourceType;
  final String? sourcePlatform;
  final List<PostingDetail> postings;
  final String createdAt;
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
    required this.tags,
    required this.links,
    this.meta,
    required this.status,
    this.sourceType,
    this.sourcePlatform,
    required this.postings,
    required this.createdAt,
    this.voidedAt,
    this.voidedBy,
    this.correctionReason,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) {
    return TransactionDetail(
      id: json['id'] as String,
      date: json['date'] as String,
      flag: json['flag'] as String?,
      customFlag: json['customFlag'] as String?,
      payee: json['payee'] as String?,
      narration: json['narration'] as String,
      tags: (json['tags'] as List<dynamic>).cast<String>(),
      links: (json['links'] as List<dynamic>).cast<String>(),
      meta: json['meta'] as Map<String, dynamic>?,
      status: json['status'] as String,
      sourceType: json['sourceType'] as String?,
      sourcePlatform: json['sourcePlatform'] as String?,
      postings: (json['postings'] as List<dynamic>)
          .map((e) => PostingDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String,
      voidedAt: json['voidedAt'] as String?,
      voidedBy: json['voidedBy'] as String?,
      correctionReason: json['correctionReason'] as String?,
    );
  }
}

/// Transaction list response (GET /transactions)
class TransactionListResponse {
  final List<TransactionDetail> data;
  final int total;
  final int limit;
  final int offset;

  const TransactionListResponse({
    required this.data,
    required this.total,
    required this.limit,
    required this.offset,
  });

  factory TransactionListResponse.fromJson(Map<String, dynamic> json) {
    return TransactionListResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      limit: json['limit'] as int,
      offset: json['offset'] as int,
    );
  }
}

// =============================================================================
// Batch Transaction Responses
// =============================================================================

/// Posting in a created transaction (simpler than PostingDetail)
class PostingResponse {
  final String account;
  final String? units;
  final String? currency;

  const PostingResponse({
    required this.account,
    this.units,
    this.currency,
  });

  factory PostingResponse.fromJson(Map<String, dynamic> json) {
    return PostingResponse(
      account: json['account'] as String,
      units: json['units'] as String?,
      currency: json['currency'] as String?,
    );
  }
}

// =============================================================================
// Provider Sync Response
// =============================================================================

/// Provider sync result (POST /import/provider/parsed-bill/sync)
class ProviderSyncResult {
  final int imported;
  final int skipped;
  final int pendingReview;
  final int failed;
  final List<String>? importedTransactionIds;
  final List<String>? reviewItemIds;

  const ProviderSyncResult({
    required this.imported,
    required this.skipped,
    required this.pendingReview,
    required this.failed,
    this.importedTransactionIds,
    this.reviewItemIds,
  });

  factory ProviderSyncResult.fromJson(Map<String, dynamic> json) {
    return ProviderSyncResult(
      imported: json['imported'] as int,
      skipped: json['skipped'] as int,
      pendingReview: json['pendingReview'] as int,
      failed: json['failed'] as int,
      importedTransactionIds:
          (json['importedTransactionIds'] as List<dynamic>?)?.cast<String>(),
      reviewItemIds:
          (json['reviewItemIds'] as List<dynamic>?)?.cast<String>(),
    );
  }
}

// =============================================================================
// Account Responses
// =============================================================================

/// Account detail (GET /accounts/:id, list item)
class AccountDetail {
  final String id;
  final String path;
  final String type;
  final String status;
  final String openDate;
  final String? closeDate;
  final List<String>? currencies;
  final String bookingMethod;
  final String? templatePath;
  final bool isCustom;
  final String? i18nKey;
  final String? icon;
  final Map<String, dynamic>? openMeta;
  final String? platformId;
  final AccountPlatform? platform;
  final String createdAt;
  final String updatedAt;

  const AccountDetail({
    required this.id,
    required this.path,
    required this.type,
    required this.status,
    required this.openDate,
    this.closeDate,
    this.currencies,
    required this.bookingMethod,
    this.templatePath,
    required this.isCustom,
    this.i18nKey,
    this.icon,
    this.openMeta,
    this.platformId,
    this.platform,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AccountDetail.fromJson(Map<String, dynamic> json) {
    return AccountDetail(
      id: json['id'] as String,
      path: json['path'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      openDate: json['openDate'] as String,
      closeDate: json['closeDate'] as String?,
      currencies: (json['currencies'] as List<dynamic>?)?.cast<String>(),
      bookingMethod: json['bookingMethod'] as String,
      templatePath: json['templatePath'] as String?,
      isCustom: json['isCustom'] as bool,
      i18nKey: json['i18nKey'] as String?,
      icon: json['icon'] as String?,
      openMeta: json['openMeta'] as Map<String, dynamic>?,
      platformId: json['platformId'] as String?,
      platform: json['platform'] != null
          ? AccountPlatform.fromJson(json['platform'] as Map<String, dynamic>)
          : null,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }
}

/// Platform info associated with an account
class AccountPlatform {
  final String id;
  final String name;
  final String canonical;
  final String? logoUrl;
  final String type;

  const AccountPlatform({
    required this.id,
    required this.name,
    required this.canonical,
    this.logoUrl,
    required this.type,
  });

  factory AccountPlatform.fromJson(Map<String, dynamic> json) {
    return AccountPlatform(
      id: json['id'] as String,
      name: json['name'] as String,
      canonical: json['canonical'] as String,
      logoUrl: json['logoUrl'] as String?,
      type: json['type'] as String,
    );
  }
}

/// Account list response (GET /accounts)
class AccountListResponse {
  final List<AccountDetail> items;
  final int total;

  const AccountListResponse({
    required this.items,
    required this.total,
  });

  factory AccountListResponse.fromJson(Map<String, dynamic> json) {
    return AccountListResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => AccountDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );
  }
}

// =============================================================================
// Commodity Responses
// =============================================================================

/// Commodity detail (GET /commodities list item)
class CommodityDetail {
  final String id;
  final String symbol;
  final String date;
  final Map<String, dynamic> metadata;
  final String createdAt;
  final String updatedAt;

  const CommodityDetail({
    required this.id,
    required this.symbol,
    required this.date,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CommodityDetail.fromJson(Map<String, dynamic> json) {
    return CommodityDetail(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      date: json['date'] as String,
      metadata: json['metadata'] as Map<String, dynamic>,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }
}

/// Commodity list response (GET /commodities)
class CommodityListResponse {
  final List<CommodityDetail> items;
  final int total;

  const CommodityListResponse({
    required this.items,
    required this.total,
  });

  factory CommodityListResponse.fromJson(Map<String, dynamic> json) {
    return CommodityListResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => CommodityDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );
  }
}

// =============================================================================
// Price Responses
// =============================================================================

/// Price detail (GET /prices list item)
class PriceDetail {
  final String id;
  final String currency;
  final String quoteCurrency;
  final double amount;
  final String date;
  final Map<String, dynamic> meta;
  final String createdAt;
  final String updatedAt;

  const PriceDetail({
    required this.id,
    required this.currency,
    required this.quoteCurrency,
    required this.amount,
    required this.date,
    required this.meta,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PriceDetail.fromJson(Map<String, dynamic> json) {
    return PriceDetail(
      id: json['id'] as String,
      currency: json['currency'] as String,
      quoteCurrency: json['quoteCurrency'] as String,
      amount: (json['amount'] as num).toDouble(),
      date: json['date'] as String,
      meta: json['meta'] as Map<String, dynamic>,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }
}

/// Price list response (GET /prices)
class PriceListResponse {
  final List<PriceDetail> items;
  final int total;

  const PriceListResponse({
    required this.items,
    required this.total,
  });

  factory PriceListResponse.fromJson(Map<String, dynamic> json) {
    return PriceListResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => PriceDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
    );
  }
}

// =============================================================================
// Balance Responses
// =============================================================================

/// Single-currency balance entry
class BalanceEntry {
  final String account;
  final String balance;
  final String currency;
  final String date;

  const BalanceEntry({
    required this.account,
    required this.balance,
    required this.currency,
    required this.date,
  });

  factory BalanceEntry.fromJson(Map<String, dynamic> json) {
    return BalanceEntry(
      account: json['account'] as String,
      balance: json['balance'] as String,
      currency: json['currency'] as String,
      date: json['date'] as String,
    );
  }
}

/// Multi-currency balance entry
class MultiCurrencyBalance {
  final String account;
  final Map<String, String> balances;
  final String date;

  const MultiCurrencyBalance({
    required this.account,
    required this.balances,
    required this.date,
  });

  factory MultiCurrencyBalance.fromJson(Map<String, dynamic> json) {
    return MultiCurrencyBalance(
      account: json['account'] as String,
      balances: (json['balances'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, v as String)),
      date: json['date'] as String,
    );
  }
}

/// Batch balance response (multiple accounts)
class BatchBalanceResponse {
  final Map<String, dynamic> balances;
  final String date;

  const BatchBalanceResponse({
    required this.balances,
    required this.date,
  });

  factory BatchBalanceResponse.fromJson(Map<String, dynamic> json) {
    return BatchBalanceResponse(
      balances: json['balances'] as Map<String, dynamic>,
      date: json['date'] as String,
    );
  }
}
