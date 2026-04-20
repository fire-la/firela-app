// Hand-written -- do not auto-generate with ts2dart

import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/types.dart' show RawTransaction;

import 'patterns/index.dart' show loadPatterns;
import 'rules/index.dart' show loadRuleSet;
import 'types.dart' show
    Confidence, PiiFinding, PiiPattern, SanitizeEngineOptions,
    SanitizeReport, SanitizeResult, SanitizeSuccess, SanitizeError;

const Map<String, int> _confidenceOrder = {'HIGH': 3, 'MEDIUM': 2, 'LOW': 1};

class SanitizeEngine {
  final List<PiiPattern> patterns;
  final Confidence minConfidence;

  SanitizeEngine._({required this.patterns, required this.minConfidence});

  factory SanitizeEngine(dynamic regionOrOptions, [String? ruleMode]) {
    final SanitizeEngineOptions opts;
    if (regionOrOptions is String) {
      opts = SanitizeEngineOptions(
        region: regionOrOptions,
        ruleMode: ruleMode ?? 'regular',
      );
    } else if (regionOrOptions is SanitizeEngineOptions) {
      opts = regionOrOptions;
    } else if (regionOrOptions is Map) {
      opts = SanitizeEngineOptions(
        region: regionOrOptions['region'] as String,
        ruleMode: (regionOrOptions['ruleMode'] as String?) ?? 'regular',
      );
    } else {
      throw ArgumentError(
        'Invalid options type: ${regionOrOptions.runtimeType}',
      );
    }

    final ruleSet = loadRuleSet(opts.ruleMode);
    final regionPatterns = loadPatterns(opts.region);
    final minConf = ruleSet.minConfidence ?? 'MEDIUM';

    final filtered = regionPatterns.where((p) {
      final inCategory = ruleSet.maskCategories.contains(p.category);
      final notSkipped = !(ruleSet.skipTypes ?? []).contains(p.type);
      return inCategory && notSkipped;
    }).toList();

    return SanitizeEngine._(patterns: filtered, minConfidence: minConf);
  }

  SanitizeResult sanitize(List<RawTransaction> transactions) {
    try {
      final findings = <PiiFinding>[];
      final sanitized = <RawTransaction>[];
      for (var i = 0; i < transactions.length; i++) {
        sanitized.add(_sanitizeTransaction(transactions[i], i, findings));
      }
      final report = SanitizeReport(
        totalScanned: transactions.length,
        totalSanitized: findings.where((f) => f.action == 'masked').length,
        findings: findings,
      );
      return SanitizeSuccess(data: sanitized, report: report);
    } catch (e) {
      final msg = e is Exception ? e.toString() : 'Unknown sanitize error';
      return SanitizeError(error: msg);
    }
  }

  RawTransaction _sanitizeTransaction(
    RawTransaction txn,
    int index,
    List<PiiFinding> findings,
  ) {
    // Build mutable copy of transaction fields
    final modified = <String, dynamic>{
      'date': txn.date,
      'amount': txn.amount,
      'currency': txn.currency,
      'description': txn.description,
      'payee': txn.payee,
      'metadata': txn.metadata != null
          ? Map<String, dynamic>.from(txn.metadata!)
          : null,
      'customFields': txn.customFields,
    };

    // Collect fields to scan
    final fieldsToScan = <({String key, String value})>[];
    if (txn.payee != null && txn.payee!.isNotEmpty) {
      fieldsToScan.add((key: 'payee', value: txn.payee!));
    }
    if (txn.description.isNotEmpty) {
      fieldsToScan.add((key: 'description', value: txn.description));
    }
    if (txn.metadata != null) {
      for (final entry in txn.metadata!.entries) {
        if (entry.value is String) {
          fieldsToScan.add((
            key: 'metadata.${entry.key}',
            value: entry.value as String,
          ));
        }
      }
    }
    if (txn.customFields != null) {
      final cf = txn.customFields as Map?;
      if (cf != null) {
        for (final entry in cf.entries) {
          if (entry.value is String) {
            fieldsToScan.add((
              key: 'customFields.${entry.key}',
              value: entry.value as String,
            ));
          }
        }
      }
    }

    for (final field in fieldsToScan) {
      final (result, fieldFindings) = _scanField(field.value);
      if (fieldFindings.isNotEmpty) {
        _setField(modified, field.key, result);
        for (final f in fieldFindings) {
          findings.add(PiiFinding(
            transactionIndex: index,
            field: field.key,
            piiType: f.type,
            confidence: f.confidence,
            action: f.action,
          ));
        }
      }
    }

    // Reconstruct RawTransaction from modified map
    return RawTransaction(
      date: modified['date'] as DateTime,
      amount: modified['amount'] as Decimal,
      currency: modified['currency'] as String,
      description: modified['description'] as String,
      payee: modified['payee'] as String?,
      metadata: modified['metadata'] as Map<String, dynamic>?,
      customFields: modified['customFields'],
    );
  }

  (String, List<({PiiPattern type, Confidence confidence, String action})>)
      _scanField(String value) {
    var result = value;
    final fieldFindings =
        <({PiiPattern type, Confidence confidence, String action})>[];

    for (final piiPattern in patterns) {
      result = result.replaceAllMapped(piiPattern.pattern, (Match m) {
        final match = m.group(0)!;
        final Confidence confidence;
        if (piiPattern.validator != null) {
          confidence = piiPattern.validator!(match) ? 'HIGH' : 'LOW';
        } else {
          confidence = 'MEDIUM';
        }
        final meetsThreshold =
            _confidenceOrder[confidence]! >=
            _confidenceOrder[minConfidence]!;
        if (meetsThreshold) {
          fieldFindings.add((
            type: piiPattern,
            confidence: confidence,
            action: 'masked',
          ));
          return piiPattern.mask(match);
        } else {
          fieldFindings.add((
            type: piiPattern,
            confidence: confidence,
            action: 'kept',
          ));
          return match;
        }
      });
    }

    return (result, fieldFindings);
  }

  void _setField(Map<String, dynamic> obj, String keyPath, String value) {
    if (keyPath == 'payee') {
      obj['payee'] = value;
    } else if (keyPath == 'description') {
      obj['description'] = value;
    } else if (keyPath.startsWith('metadata.')) {
      final metaKey = keyPath.substring('metadata.'.length);
      final meta = obj['metadata'] as Map<String, dynamic>?;
      obj['metadata'] = <String, dynamic>{
        if (meta != null) ...meta,
        metaKey: value,
      };
    } else if (keyPath.startsWith('customFields.')) {
      final cfKey = keyPath.substring('customFields.'.length);
      final cf = obj['customFields'] as Map<String, dynamic>?;
      obj['customFields'] = <String, dynamic>{
        if (cf != null) ...cf,
        cfKey: value,
      };
    }
  }
}
