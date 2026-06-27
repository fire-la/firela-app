import 'package:firela_api/firela_api.dart' as gen;

import '../entities/account_validation_data.dart';
import '../entities/decision_option.dart';
import '../entities/duplicate_data.dart';
import '../entities/matched_rule.dart';
import '../entities/payee_match_data.dart';
import '../entities/pending_transaction.dart';
import '../entities/pipeline_error_data.dart';
import '../entities/rule_match_data.dart';
import '../entities/similar_account.dart';
import '../entities/transaction_summary.dart';
import '../models/confidence_level.dart';
import '../models/review_type.dart';

/// Maps the generated list DTO ([gen.ReviewSummaryDto]) to the domain
/// [PendingTransaction]. List items carry only summary fields — no reviewData
/// branches, no decision options (those are detail-only).
PendingTransaction toPendingTransaction(gen.ReviewSummaryDto dto) {
  final score = dto.confidence.toDouble();
  return PendingTransaction(
    id: dto.id,
    accountName: dto.accountName ?? '',
    merchantName: dto.merchantName ?? '',
    amount: _parseAmount(dto.amount),
    currency: dto.currency ?? 'CNY',
    transactionTime: _parseDateTime(dto.transactionTime) ?? dto.createdAt,
    confidenceLevel: _confidenceLevel(dto.confidenceLevel?.name, score),
    confidenceScore: score,
    createdAt: dto.createdAt,
    reviewType: ReviewType.fromSummary(dto.type),
    sourceType: dto.sourceType,
    matchReasons: dto.matchReasons.toList(),
    summaryKey: dto.summaryKey,
    summaryParams: dto.summaryParams?.toMap(),
  );
}

/// Maps the generated detail DTO ([gen.ReviewDetailDto]) to the domain
/// [PendingTransaction]. Detail carries everything the summary does, plus the
/// type-specific `reviewData` branches and `decisionOptions`.
PendingTransaction toPendingTransactionFromDetail(gen.ReviewDetailDto dto) {
  final score = dto.confidence.toDouble();
  final reviewType = ReviewType.fromDetail(dto.type);
  // reviewData is a free-form JSONB object; read it as a plain Map for parsing.
  final data = dto.reviewData.isMap ? dto.reviewData.asMap : null;
  return PendingTransaction(
    id: dto.id,
    accountName: dto.accountName ?? '',
    merchantName: dto.merchantName ?? '',
    amount: _parseAmount(dto.amount),
    currency: dto.currency ?? 'CNY',
    transactionTime: _parseDateTime(dto.transactionTime) ?? dto.createdAt,
    confidenceLevel: _confidenceLevel(dto.confidenceLevel?.name, score),
    confidenceScore: score,
    createdAt: dto.createdAt,
    reviewType: reviewType,
    sourceType: dto.sourceType,
    decisionOptions: dto.decisionOptions.map(_toDecisionOption).toList(),
    matchReasons: dto.matchReasons.toList(),
    summaryKey: dto.summaryKey,
    summaryParams: dto.summaryParams?.toMap(),
    accountValidation:
        _parseAccountValidation(data, reviewType: reviewType),
    duplicateData: _parseDuplicateData(data, reviewType: reviewType),
    ruleMatchData: _parseRuleMatchData(data, reviewType: reviewType),
    pipelineErrorData: _parsePipelineErrorData(data, reviewType: reviewType),
    payeeMatchData: _parsePayeeMatchData(data, reviewType: reviewType),
  );
}

DecisionOption _toDecisionOption(gen.DecisionOptionDto o) => DecisionOption(
      value: o.value,
      labelKey: o.labelKey,
      recommended: o.recommended ?? false,
      descriptionKey: o.descriptionKey,
    );

ConfidenceLevel _confidenceLevel(String? levelName, double score) =>
    switch (levelName) {
      'HIGH' => ConfidenceLevel.high,
      'MEDIUM' => ConfidenceLevel.medium,
      'LOW' => ConfidenceLevel.low,
      // Error-type reviews (ACCOUNT_VALIDATION/PIPELINE_ERROR) carry no level;
      // derive one from the raw score as a fallback.
      _ => ConfidenceLevel.fromPercentage(score),
    };

DateTime? _parseDateTime(String? value) {
  if (value == null || value.isEmpty) return null;
  return DateTime.tryParse(value);
}

double _parseAmount(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

// --- reviewData branch parsers ---------------------------------------------
// Each gates on [reviewType]: only the matching branch carries its shape, so a
// key-name collision across types can't misparse another type's reviewData
// (this is the typed equivalent of the old raw-Map null/type guards — IGN-287
// item G#3, now enum-based).

AccountValidationData? _parseAccountValidation(
  dynamic value, {
  ReviewType? reviewType,
}) {
  if (reviewType != null && reviewType != ReviewType.accountValidation) {
    return null;
  }
  if (value is! Map) return null;
  final invalid = value['invalidAccount'] as String?;
  final similar = value['similarAccounts'];
  if (invalid == null && similar is! List) return null;
  return AccountValidationData(
    invalidAccount: invalid ?? '',
    suggestedAccount: value['suggestedAccount'] as String?,
    similarAccounts: _parseSimilarAccounts(similar),
    errorMessage: value['errorMessage'] as String?,
  );
}

List<SimilarAccount> _parseSimilarAccounts(dynamic value) {
  if (value is! List) return const [];
  // Spec sends `similarAccounts` as a plain string[]; the object shape
  // (name/similarity/reason/isFallback) is parsed defensively if present.
  SimilarAccount? parse(dynamic item) {
    if (item is String) return SimilarAccount(name: item);
    // JsonObject.asMap yields Map<dynamic, dynamic>, so match on `Map` (not
    // Map<String, dynamic>) or object-shaped candidates get silently dropped.
    if (item is Map) {
      return SimilarAccount(
        name: item['name'] as String? ?? '',
        similarity: (item['similarity'] as num?)?.toDouble() ?? 0.0,
        reason: item['reason'] as String?,
        isFallback: item['isFallback'] as bool? ?? false,
      );
    }
    return null;
  }

  return value
      .map(parse)
      .whereType<SimilarAccount>()
      .where((a) => a.name.isNotEmpty)
      .toList();
}

DuplicateData? _parseDuplicateData(dynamic value, {ReviewType? reviewType}) {
  if (reviewType != null && reviewType != ReviewType.duplicate) return null;
  if (value is! Map) return null;
  final source = _parseTransactionSummary(value['sourceTransaction']);
  final target = _parseTransactionSummary(value['targetTransaction']);
  if (source == null || target == null) return null;
  return DuplicateData(sourceTransaction: source, targetTransaction: target);
}

TransactionSummary? _parseTransactionSummary(dynamic value) {
  if (value is! Map) return null;
  return TransactionSummary(
    id: value['id']?.toString(),
    date: value['date'] as String? ?? '',
    amount: _parseAmount(value['amount']),
    currency: value['currency'] as String? ?? '',
    payee: value['payee'] as String?,
    narration: value['narration'] as String? ?? '',
  );
}

RuleMatchData? _parseRuleMatchData(dynamic value, {ReviewType? reviewType}) {
  if (reviewType != null && reviewType != ReviewType.ruleMatch) return null;
  if (value is! Map) return null;
  final rule = _parseMatchedRule(value['matchedRule']);
  if (rule == null) return null;
  String? destination;
  final suggested = value['suggestedAccounts'];
  if (suggested is Map) {
    final dest = suggested['destination'];
    if (dest is String && dest.isNotEmpty) destination = dest;
  }
  return RuleMatchData(matchedRule: rule, destination: destination);
}

MatchedRule? _parseMatchedRule(dynamic value) {
  if (value is! Map) return null;
  final name = value['name'] as String?;
  if (name == null || name.isEmpty) return null;
  return MatchedRule(id: value['id']?.toString() ?? '', name: name);
}

PipelineErrorData? _parsePipelineErrorData(dynamic value,
    {ReviewType? reviewType}) {
  if (reviewType != null && reviewType != ReviewType.pipelineError) return null;
  if (value is! Map) return null;
  final message = value['errorMessage'] as String?;
  if (message == null || message.isEmpty) return null;
  return PipelineErrorData(
    errorType: value['errorType'] as String? ?? '',
    errorMessage: message,
  );
}

PayeeMatchData? _parsePayeeMatchData(dynamic value, {ReviewType? reviewType}) {
  if (reviewType != null && reviewType != ReviewType.payeeMatch) return null;
  if (value is! Map) return null;
  final original = value['originalPayee'] as String?;
  if (original == null || original.isEmpty) return null;
  String? suggestedName;
  final suggested = value['suggestedPayee'];
  if (suggested is Map) {
    final name = suggested['name'] as String?;
    if (name != null && name.isNotEmpty) suggestedName = name;
  }
  return PayeeMatchData(originalPayee: original, suggestedPayee: suggestedName);
}
