// Hand-written — do not auto-generate with ts2dart

import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/cn/chinese_csv_parser.dart' show ChineseCsvParser;
import 'package:firela/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela/parser/src/types.dart';
import 'package:firela/parser/src/utils/parser_helpers.dart'
    show categorizeWechatStatus, isValidWechatFlowType, WechatStatusCategory;

typedef WechatRawTransaction = RawTransaction<WeChatCustomFields>;

// ============================================================================
// Constants
// ============================================================================

const _minRequiredColumns = 11;
const _headerIdentifier = '交易时间';
const _neutralFlowType = '/';
const _closedStatusKeyword = '已关闭';

final _wechatCsvKeywords = ['微信支付', '交易时间'];

// ============================================================================
// WechatParser
// ============================================================================

class WechatParser extends ChineseCsvParser<WechatRawTransaction> {
  @override
  final institutionId = 'wechat';

  @override
  final identifyKeywords = _wechatCsvKeywords;

  @override
  final minColumns = _minRequiredColumns;

  @override
  bool isHeaderRow(List<String> row) {
    return row[0] == _headerIdentifier && row.length >= _minRequiredColumns;
  }

  @override
  RowTransformResult transformRow(List<String> row, num _lineNum) {
    if (row.length < _minRequiredColumns) {
      return RowTransformResult.err(
        'Row has insufficient columns '
        '(expected $_minRequiredColumns, got ${row.length})',
        {'row': row},
      );
    }

    // Column mapping: 0:交易时间 1:交易类型 2:交易对方 3:商品 4:收/支 5:金额(元) 6:支付方式 7:当前状态 8:交易单号 9:商家单号 10:备注
    final transactionTime = row[0];
    final transactionType = row[1];
    final counterparty = row[2];
    final product = row[3];
    final flowType = row[4];
    final amountStr = row[5];
    final paymentMethod = row[6];
    final status = row[7];
    final transactionId = row[8];
    final merchantOrderId = row[9];

    // Skip neutral flow type ('/') - these are transfers
    if (flowType == _neutralFlowType) {
      return RowTransformResult.err(
        'Skipped neutral flow type: $flowType',
        {'flowType': flowType, 'row': row, 'skip': true},
      );
    }

    // Skip closed transactions
    if (status.contains(_closedStatusKeyword)) {
      return RowTransformResult.err(
        'Skipped closed transaction: $status',
        {'status': status, 'row': row, 'skip': true},
      );
    }

    // Validate flow type
    if (!isValidWechatFlowType(flowType)) {
      return RowTransformResult.err(
        'Invalid flow type: $flowType',
        {'flowType': flowType, 'row': row},
      );
    }

    // Parse date
    final date = _parseDateTime(transactionTime);
    if (date == null) {
      return RowTransformResult.err(
        'Invalid date format: $transactionTime',
        {'input': transactionTime, 'row': row},
      );
    }

    // Parse amount
    final amount = _parseAmount(amountStr, flowType);
    if (amount == null) {
      return RowTransformResult.err(
        'Invalid amount: $amountStr',
        {'input': amountStr, 'row': row},
      );
    }

    // Map status
    final statusCategory = categorizeWechatStatus(status);
    final customStatus = _mapToCustomStatus(statusCategory, status);

    // Build custom fields
    final customFields = WeChatCustomFields(
      status: customStatus,
      transactionType: transactionType.isNotEmpty ? transactionType : null,
      orderNo: transactionId.isNotEmpty ? transactionId : null,
    );

    // Build metadata
    final metadata = <String, dynamic>{};
    if (paymentMethod.isNotEmpty) {
      metadata['paymentMethod'] = paymentMethod;
    }
    if (merchantOrderId.isNotEmpty) {
      metadata['merchantOrderId'] = merchantOrderId;
    }

    // Build description: prefer product, fallback to transactionType
    final description = product.isNotEmpty ? product : (transactionType.isNotEmpty ? transactionType : '');

    // Build RawTransaction
    final transaction = WechatRawTransaction(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: description,
      payee: counterparty.isNotEmpty ? counterparty : null,
      metadata: metadata.isNotEmpty ? metadata : null,
      customFields: customFields,
    );

    return RowTransformResult.ok(transaction);
  }

  // ==========================================================================
  // Private Methods
  // ==========================================================================

  /// Parse date string to DateTime.
  /// WeChat format: "YYYY-MM-DD HH:mm:ss" or "YYYY/MM/DD HH:mm:ss"
  DateTime? _parseDateTime(String dateStr) {
    if (dateStr.isEmpty) return null;

    final trimmed = dateStr.trim();
    final match = RegExp(r'^(\d{4})[-/](\d{1,2})[-/](\d{1,2})\s+(\d{1,2}):(\d{2}):(\d{2})$')
        .firstMatch(trimmed);
    if (match != null) {
      final year = int.parse(match[1]!);
      final month = int.parse(match[2]!);
      final day = int.parse(match[3]!);
      final hour = int.parse(match[4]!);
      final minute = int.parse(match[5]!);
      final second = int.parse(match[6]!);
      try {
        final date = DateTime(year, month, day, hour, minute, second);
        return date;
      } catch (_) {
        return null;
      }
    }

    return null;
  }

  /// Parse amount string and apply sign convention.
  /// 收入 (income): positive amount
  /// 支出 (expense): negative amount
  Decimal? _parseAmount(String amountStr, String flowType) {
    if (amountStr.isEmpty) return null;

    var cleaned = amountStr.trim();

    // Strip "¥" or "￥" prefix
    if (cleaned.startsWith('¥') || cleaned.startsWith('￥')) {
      cleaned = cleaned.substring(1).trim();
    }

    // Remove comma thousands separators
    cleaned = cleaned.replaceAll(',', '');

    try {
      final amount = Decimal.parse(cleaned);
      if (!amount.isFinite) return null;

      // Apply sign convention
      if (flowType == '支出') {
        return -amount;
      }
      return amount;
    } catch (_) {
      return null;
    }
  }

  /// Map WechatStatusCategory to WeChatCustomFields status literal.
  String _mapToCustomStatus(WechatStatusCategory category, String originalStatus) {
    switch (category) {
      case 'success':
        return '支付成功';
      case 'refund':
        return '已退款';
      case 'failed':
        return '已关闭';
      default:
        if (originalStatus.contains('退款')) return '已退款';
        if (originalStatus.contains('关闭') || originalStatus.contains('失败')) return '已关闭';
        return '支付成功';
    }
  }
}
