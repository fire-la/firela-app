// Hand-written -- do not auto-generate with ts2dart

import 'package:firela/parser/src/types.dart' show RawTransaction;

// ============================================================================
// Result Types
// ============================================================================

sealed class SanitizeResult {
  const SanitizeResult();
}

class SanitizeSuccess extends SanitizeResult {
  final List<RawTransaction> data;
  final SanitizeReport report;
  const SanitizeSuccess({required this.data, required this.report});
}

class SanitizeError extends SanitizeResult {
  final String error;
  const SanitizeError({required this.error});
}

// ============================================================================
// PII Type & Confidence
// ============================================================================

typedef PiiType = String;

typedef Confidence = String;

typedef RuleMode = String;

// ============================================================================
// Pattern & Rule Definitions
// ============================================================================

class PiiPattern {
  final PiiType type;
  final String name;
  final RegExp pattern;
  final bool Function(String)? validator;
  final String Function(String) mask;
  final String category;
  const PiiPattern({
    required this.type,
    required this.name,
    required this.pattern,
    this.validator,
    required this.mask,
    required this.category,
  });
}

class RuleSet {
  final String name;
  final List<String> maskCategories;
  final List<PiiType>? skipTypes;
  final String? minConfidence;
  const RuleSet({
    required this.name,
    required this.maskCategories,
    this.skipTypes,
    this.minConfidence,
  });
}

// ============================================================================
// Report Types
// ============================================================================

class SanitizeReport {
  final int totalScanned;
  final int totalSanitized;
  final List<PiiFinding> findings;
  const SanitizeReport({
    required this.totalScanned,
    required this.totalSanitized,
    required this.findings,
  });
}

class PiiFinding {
  final int transactionIndex;
  final String field;
  final PiiType piiType;
  final Confidence confidence;
  final String action;
  const PiiFinding({
    required this.transactionIndex,
    required this.field,
    required this.piiType,
    required this.confidence,
    required this.action,
  });
}

// ============================================================================
// Engine Options
// ============================================================================

class SanitizeEngineOptions {
  final String region;
  final String ruleMode;
  const SanitizeEngineOptions({required this.region, required this.ruleMode});
}
