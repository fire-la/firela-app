import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/pending_transaction.dart';

/// Shared review display helpers (icon, labels, summary/amount/time/source
/// formatting). Used by both the summary row and the detail content — keep them
/// here to avoid duplication (Rule 0).

/// Review type wire value → leading icon (Material; .pen uses lucide).
IconData reviewTypeIcon(String? type) {
  switch (type) {
    case 'DUPLICATE':
      return Icons.copy_outlined;
    case 'RULE_MATCH':
      return Icons.auto_awesome_outlined;
    case 'PAYEE_MATCH':
      return Icons.storefront_outlined;
    case 'ACCOUNT_VALIDATION':
      return Icons.account_balance_outlined;
    case 'PIPELINE_ERROR':
      return Icons.error_outline;
    default:
      return Icons.fact_check_outlined;
  }
}

/// Review type wire value → localized title (used in the detail header and the
/// row's source tag).
String reviewTypeTitle(AppLocalizations l10n, String? type) {
  switch (type) {
    case 'DUPLICATE':
      return l10n.reviewTypeDuplicate;
    case 'RULE_MATCH':
      return l10n.reviewTypeRuleMatch;
    case 'PAYEE_MATCH':
      return l10n.reviewTypePayeeMatch;
    case 'ACCOUNT_VALIDATION':
      return l10n.reviewTypeAccountValidation;
    case 'PIPELINE_ERROR':
      return l10n.reviewTypePipelineError;
    default:
      return l10n.reviewCenterDetailTitle;
  }
}

/// Review type wire value → short chip label (null → "All"). Drives the type
/// filter chips on the review list.
String reviewTypeChipLabel(AppLocalizations l10n, String? type) {
  switch (type) {
    case 'DUPLICATE':
      return l10n.reviewChipDuplicate;
    case 'RULE_MATCH':
      return l10n.reviewChipRule;
    case 'PAYEE_MATCH':
      return l10n.reviewChipPayee;
    case 'ACCOUNT_VALIDATION':
      return l10n.reviewChipAccount;
    case 'PIPELINE_ERROR':
      return l10n.reviewChipPipeline;
    default:
      return l10n.reviewChipAll;
  }
}

/// Signed amount with currency symbol, e.g. "-¥35.00". Symbol is resolved from
/// the currency code via intl, falling back to the code itself.
String formatSignedAmount(num amount, String currency) {
  final sign = amount < 0 ? '-' : '';
  final abs = amount.abs();
  String symbol;
  try {
    // Resolve the symbol from the currency code via the current intl locale;
    // fall back to the raw code if intl can't resolve it.
    symbol = NumberFormat.simpleCurrency(name: currency).currencySymbol;
  } catch (_) {
    symbol = currency;
  }
  return '$sign$symbol${NumberFormat('#,##0.00').format(abs)}';
}

/// Signed amount for a pending transaction (delegates to [formatSignedAmount]).
String formatReviewAmount(PendingTransaction tx) =>
    formatSignedAmount(tx.amount, tx.currency);

/// Short date label "MM-dd" from an ISO date string, e.g. "2026-01-15" → "01-15".
/// Falls back to the raw string if it can't be parsed.
String formatReviewDate(String isoDate) {
  final dt = DateTime.tryParse(isoDate);
  return dt == null ? isoDate : DateFormat('MM-dd').format(dt);
}

/// Short date label, e.g. "01-15".
String formatReviewTime(PendingTransaction tx) {
  return DateFormat('MM-dd').format(tx.transactionTime);
}

/// One-line summary from backend `summaryKey`/`summaryParams`, routed by type.
/// Falls back to the merchant (then account) name when params are absent.
String formatReviewSummary(AppLocalizations l10n, PendingTransaction tx) {
  final p = tx.summaryParams ?? const <String, String>{};
  switch (tx.reviewType) {
    case 'DUPLICATE':
      final amount = p['amount'];
      if (amount != null && amount.isNotEmpty) {
        return l10n.reviewSummaryDuplicate(amount);
      }
      break;
    case 'RULE_MATCH':
      final rule = p['ruleName'];
      if (rule != null && rule.isNotEmpty) {
        return l10n.reviewSummaryRuleMatch(rule);
      }
      break;
    case 'PAYEE_MATCH':
      final suggested = p['suggested'];
      if (suggested != null && suggested.isNotEmpty) {
        return l10n.reviewSummaryPayeeMatch(suggested);
      }
      break;
    case 'ACCOUNT_VALIDATION':
      final account = p['account'];
      if (account != null && account.isNotEmpty) {
        return l10n.reviewSummaryAccountValidation(account);
      }
      break;
    case 'PIPELINE_ERROR':
      final error = p['error'];
      if (error != null && error.isNotEmpty) {
        return l10n.reviewSummaryPipelineError(error);
      }
      break;
  }
  if (tx.merchantName.isNotEmpty) return tx.merchantName;
  if (tx.accountName.isNotEmpty) return tx.accountName;
  return formatReviewAmount(tx);
}

/// Source tag "{type} · {source}" for the row's meta line.
String reviewSourceTag(AppLocalizations l10n, PendingTransaction tx) {
  final typeLabel = reviewTypeTitle(l10n, tx.reviewType);
  final source = tx.sourceType;
  if (source == null || source.isEmpty) return typeLabel;
  return l10n.reviewSourceTag(typeLabel, source);
}
