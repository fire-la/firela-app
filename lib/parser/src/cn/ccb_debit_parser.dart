// Hand-written — do not auto-generate with ts2dart

import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/cn/chinese_csv_parser.dart' show ChineseCsvParser;
import 'package:firela/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela/parser/src/types.dart';

// ============================================================================
// Types
// ============================================================================

class CcbCustomFields {
  final String? cardNumber;
  final String? cashType;
  final String? location;
  final String? counterpartyName;

  const CcbCustomFields({
    this.cardNumber,
    this.cashType,
    this.location,
    this.counterpartyName,
  });
}

typedef CcbRawTransaction = RawTransaction<CcbCustomFields>;

// ============================================================================
// Constants
// ============================================================================

const _minRequiredColumns = 9;
const _headerSequence = '序号';
const _headerSummary = '摘要';

final _cardNumberPattern = RegExp(r'卡号/账号:([0-9]{19})');

const _currencyMap = <String, String>{
  '人民币元': 'CNY',
  '人民币': 'CNY',
  '美元': 'USD',
  '欧元': 'EUR',
  '港币': 'HKD',
  '日元': 'JPY',
};

// ============================================================================
// CcbDebitParser
// ============================================================================

class CcbDebitParser extends ChineseCsvParser<CcbRawTransaction> {
  @override
  final institutionId = 'ccb-debit';

  @override
  final identifyKeywords = ['中国建设银行', '交易明细'];

  @override
  final minColumns = _minRequiredColumns;

  String? _cardNumber;

  @override
  bool isHeaderRow(List<String> row) {
    return row[0] == _headerSequence && row[1] == _headerSummary;
  }

  @override
  ParseResult<CcbRawTransaction> parse(Uint8List content) {
    final text = decodeContent(content);
    if (text.isEmpty || text.trim().isEmpty) {
      return createParseFailure(ParseErrorType.invalidFormat, 'File is empty');
    }
    _cardNumber = _extractCardNumber(text);
    return super.parse(content);
  }

  @override
  RowTransformResult transformRow(List<String> row, num lineNum) {
    if (row.length < _minRequiredColumns) {
      return RowTransformResult.err(
        'Row has insufficient columns '
        '(expected $_minRequiredColumns+, got ${row.length})',
        {'row': row},
      );
    }

    // Column mapping: 0:序号 1:摘要 2:币种 3:钞汇 4:交易时间 5:金额 6:余额 7:交易地点/附言 8:对方信息
    final narration = row[1];
    final currencyName = row[2];
    final cashType = row[3];
    final dateStr = row[4];
    final amountStr = row[5];
    final location = row[7];
    final counterpartyInfo = row[8];

    // Parse date
    final date = _parseDate(dateStr);
    if (date == null) {
      return RowTransformResult.err(
        'Invalid date format: $dateStr',
        {'input': dateStr, 'row': row},
      );
    }

    // Map currency
    final currency = _currencyMap[currencyName] ?? currencyName;
    if (!_currencyMap.containsKey(currencyName) && currencyName.length > 3) {
      return RowTransformResult.err(
        'Unknown currency: $currencyName',
        {'input': currencyName, 'row': row},
      );
    }

    // Parse amount
    Decimal amount;
    try {
      amount = Decimal.parse(amountStr);
    } catch (_) {
      return RowTransformResult.err(
        'Invalid amount: $amountStr',
        {'input': amountStr, 'row': row},
      );
    }

    // Parse counterparty info
    final payee = counterpartyInfo.isNotEmpty ? counterpartyInfo : null;
    final counterpartyName = payee;

    // Build custom fields
    final customFields = CcbCustomFields(
      cardNumber: _cardNumber ?? '',
      cashType: cashType.isNotEmpty ? cashType : null,
      location: location.isNotEmpty ? location : null,
      counterpartyName: counterpartyName,
    );

    // Build RawTransaction
    final transaction = CcbRawTransaction(
      date: date,
      amount: amount,
      currency: currency,
      description: narration.isNotEmpty ? narration : '',
      payee: payee,
      customFields: customFields,
    );

    return RowTransformResult.ok(transaction);
  }

  // ==========================================================================
  // Private Methods
  // ==========================================================================

  String? _extractCardNumber(String content) {
    final match = _cardNumberPattern.firstMatch(content);
    return match != null ? match[1]!.substring(match[1]!.length - 4) : null;
  }

  DateTime? _parseDate(String dateStr) {
    if (dateStr.isEmpty) return null;

    // YYYY-MM-DD
    if (RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(dateStr)) {
      return DateTime.tryParse(dateStr);
    }

    // YYYYMMDD
    if (RegExp(r'^\d{8}$').hasMatch(dateStr)) {
      final year = int.parse(dateStr.substring(0, 4));
      final month = int.parse(dateStr.substring(4, 6));
      final day = int.parse(dateStr.substring(6, 8));
      return DateTime(year, month, day);
    }

    return null;
  }
}
