// Hand-written — do not auto-generate with ts2dart

import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/core/csv_parser_base.dart'
    show ColumnDef, CsvParser, CsvParserConfig, RowTransformResult;
import 'package:firela/parser/src/eu/degiro_types.dart';

// ============================================================================
// Constants
// ============================================================================

const _minRequiredColumns = 10;

const _txTypeKeywords = <String, String>{
  'BUY': 'BUY',
  'SELL': 'SELL',
  'PURCHASE': 'BUY',
  'SALE': 'SELL',
  'DIVIDEND': 'DIVIDEND',
  'FEE': 'FEE',
  'COMMISSION': 'FEE',
  'TAX': 'TAX',
  'INTEREST': 'INTEREST',
  'DEPOSIT': 'DEPOSIT',
  'CREDIT': 'DEPOSIT',
  'WITHDRAWAL': 'WITHDRAWAL',
  'DEBIT': 'WITHDRAWAL',
  'FX': 'FOREX',
  'CURRENCY': 'FOREX',
  'FOREX': 'FOREX',
  'CORPORATE': 'CORPORATE_ACTION',
  'MERGER': 'CORPORATE_ACTION',
};

// ============================================================================
// Config
// ============================================================================

class _DegiroConfig extends CsvParserConfig<DegiroRawTransaction> {
  final DegiroParser _parser;
  _DegiroConfig(this._parser);

  @override
  String get institutionId => 'degiro';

  @override
  List<String> get identifyKeywords => ['Date', 'Product', 'ISIN'];

  @override
  int get minColumns => _minRequiredColumns;

  @override
  Map<String, ColumnDef> get columns => const {
        'date': ColumnDef(names: ['Date'], fallbackIndex: 0, required: true),
        'time': ColumnDef(names: ['Time'], fallbackIndex: 1),
        'product': ColumnDef(names: ['Product'], fallbackIndex: 2),
        'isin': ColumnDef(names: ['ISIN'], fallbackIndex: 3),
        'reference': ColumnDef(names: ['Reference'], fallbackIndex: 4),
        'venue': ColumnDef(names: ['Venue'], fallbackIndex: 5),
        'quantity': ColumnDef(names: ['Quantity'], fallbackIndex: 6),
        'price': ColumnDef(names: ['Price'], fallbackIndex: 7),
        'localValue': ColumnDef(names: ['Local Value'], fallbackIndex: 8),
        'value': ColumnDef(names: ['Value'], fallbackIndex: 9),
        'exchangeRate': ColumnDef(names: ['Exchange Rate'], fallbackIndex: 10),
        'transactionType': ColumnDef(
            names: ['Transaction and/or third'], fallbackIndex: 11),
        'total': ColumnDef(names: ['Total'], fallbackIndex: 12),
        'orderId': ColumnDef(names: ['Order ID'], fallbackIndex: 13),
      };

  @override
  String? detectFormat(List<String> headers) => null;

  @override
  RowTransformResult<DegiroRawTransaction> transformRow(
    List<String> row,
    Map<String, int> columnMap,
    String? format,
  ) =>
      _parser.doTransformRow(row, columnMap);
}

// ============================================================================
// DegiroParser
// ============================================================================

class DegiroParser extends CsvParser<DegiroRawTransaction> {
  late final _config = _DegiroConfig(this);

  @override
  CsvParserConfig<DegiroRawTransaction> get config => _config;

  RowTransformResult<DegiroRawTransaction> doTransformRow(
    List<String> row,
    Map<String, int> columnMap,
  ) {
    if (row.length < _minRequiredColumns) {
      return RowTransformResult.err(
        'Row has insufficient columns '
        '(expected $_minRequiredColumns+, got ${row.length})',
        {'row': row},
      );
    }

    final dateStr = getColumnValue(row, columnMap, 'date');
    final timeStr = getColumnValue(row, columnMap, 'time');
    final product = getColumnValue(row, columnMap, 'product');
    final isin = getColumnValue(row, columnMap, 'isin');
    final reference = getColumnValue(row, columnMap, 'reference');
    final venue = getColumnValue(row, columnMap, 'venue');
    final quantityStr = getColumnValue(row, columnMap, 'quantity');
    final priceStr = getColumnValue(row, columnMap, 'price');
    final localValueStr = getColumnValue(row, columnMap, 'localValue');
    final valueStr = getColumnValue(row, columnMap, 'value');
    final exchangeRateStr = getColumnValue(row, columnMap, 'exchangeRate');
    final transactionType = getColumnValue(row, columnMap, 'transactionType');
    final totalStr = getColumnValue(row, columnMap, 'total');
    final orderId = getColumnValue(row, columnMap, 'orderId');

    // Parse date (combine date + time)
    final combinedDateStr = '$dateStr $timeStr';
    final date = _parseDate(combinedDateStr);
    if (date == null) {
      return RowTransformResult.err(
        'Failed to parse date: $combinedDateStr',
        {'input': dateStr, 'timeStr': timeStr, 'row': row},
      );
    }

    // Parse quantity
    num? quantity;
    if (quantityStr.isNotEmpty) {
      quantity = parseEuropeanNumber(quantityStr);
      if (quantity.isNaN) {
        return RowTransformResult.err(
          'Failed to parse quantity: $quantityStr',
          {'input': quantityStr, 'row': row},
        );
      }
    }

    // Parse price
    num? price;
    if (priceStr.isNotEmpty) {
      price = parseEuropeanNumber(priceStr);
      if (price.isNaN) price = null;
    }

    // Parse local value
    num? localValue;
    if (localValueStr.isNotEmpty) {
      localValue = parseEuropeanNumber(localValueStr);
      if (localValue.isNaN) localValue = null;
    }

    // Parse value (main amount in EUR)
    num? value;
    if (valueStr.isNotEmpty) {
      value = parseEuropeanNumber(valueStr);
      if (value.isNaN) {
        return RowTransformResult.err(
          'Failed to parse value: $valueStr',
          {'input': valueStr, 'row': row},
        );
      }
    }

    // Parse exchange rate
    num? exchangeRate;
    if (exchangeRateStr.isNotEmpty) {
      exchangeRate = parseEuropeanNumber(exchangeRateStr);
      if (exchangeRate.isNaN) exchangeRate = null;
    }

    // Parse total
    num? total;
    if (totalStr.isNotEmpty) {
      total = parseEuropeanNumber(totalStr);
      if (total.isNaN) {
        return RowTransformResult.err(
          'Failed to parse total: $totalStr',
          {'input': totalStr, 'row': row},
        );
      }
    }

    // Determine transaction type
    final type = _detectTransactionType(transactionType);
    final resolvedTxType = type ?? 'UNKNOWN';

    // Build custom fields
    final customFields = DegiroCustomFields(
      product: product,
      isin: isin,
      reference: reference,
      venue: venue,
      orderId: orderId.isEmpty ? null : orderId,
      localValue: localValue,
      exchangeRate: exchangeRate,
      transactionType: resolvedTxType,
      price: price,
    );

    // Build metadata
    final metadata = <String, dynamic>{};
    if (quantity != null) metadata['quantity'] = quantity.toString();
    if (orderId.isNotEmpty) metadata['orderId'] = orderId;
    if (price != null) metadata['price'] = price.toString();
    if (localValue != null) metadata['localValue'] = localValue.toString();
    if (exchangeRate != null) {
      metadata['exchangeRate'] = exchangeRate.toString();
    }
    if (transactionType.isNotEmpty) metadata['transactionType'] = transactionType;

    // Build RawTransaction
    final transaction = DegiroRawTransaction(
      date: date,
      amount: Decimal.parse((total ?? 0).toString()),
      currency: 'EUR',
      description: '$product $transactionType'.trim(),
      metadata: metadata.isNotEmpty ? metadata : null,
      customFields: customFields,
    );

    return RowTransformResult.ok(transaction);
  }

  String? _detectTransactionType(String transactionType) {
    if (transactionType.isEmpty) return null;
    final upperType = transactionType.toUpperCase();
    for (final entry in _txTypeKeywords.entries) {
      if (upperType.contains(entry.key)) return entry.value;
    }
    return null;
  }

  /// Parse date string supporting EU formats (DD-MM-YYYY, DD.MM.YYYY)
  /// and ISO format (YYYY-MM-DD).
  DateTime? _parseDate(String text) {
    final trimmed = text.trim();
    if (trimmed.isEmpty) return null;

    // ISO datetime: 2024-01-15 14:30:00
    final isoDatetime = RegExp(r'^(\d{4})-(\d{1,2})-(\d{1,2})\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?$');
    var match = isoDatetime.firstMatch(trimmed);
    if (match != null) {
      return DateTime(
        int.parse(match[1]!),
        int.parse(match[2]!),
        int.parse(match[3]!),
        int.parse(match[4]!),
        int.parse(match[5]!),
        match[6] != null ? int.parse(match[6]!) : 0,
      );
    }

    // ISO date: 2024-01-15
    final isoDate = RegExp(r'^(\d{4})-(\d{1,2})-(\d{1,2})$');
    match = isoDate.firstMatch(trimmed);
    if (match != null) {
      return DateTime(int.parse(match[1]!), int.parse(match[2]!), int.parse(match[3]!));
    }

    // EU datetime with dash: 15-01-2024 14:30
    final euDatetimeDash = RegExp(r'^(\d{1,2})-(\d{1,2})-(\d{4})\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?$');
    match = euDatetimeDash.firstMatch(trimmed);
    if (match != null) {
      return DateTime(
        int.parse(match[3]!),
        int.parse(match[2]!),
        int.parse(match[1]!),
        int.parse(match[4]!),
        int.parse(match[5]!),
        match[6] != null ? int.parse(match[6]!) : 0,
      );
    }

    // EU date with dash: 15-01-2024
    final euDateDash = RegExp(r'^(\d{1,2})-(\d{1,2})-(\d{4})$');
    match = euDateDash.firstMatch(trimmed);
    if (match != null) {
      return DateTime(int.parse(match[3]!), int.parse(match[2]!), int.parse(match[1]!));
    }

    // EU datetime with dot: 15.01.2024 14:30
    final euDatetimeDot = RegExp(r'^(\d{1,2})\.(\d{1,2})\.(\d{4})\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?$');
    match = euDatetimeDot.firstMatch(trimmed);
    if (match != null) {
      return DateTime(
        int.parse(match[3]!),
        int.parse(match[2]!),
        int.parse(match[1]!),
        int.parse(match[4]!),
        int.parse(match[5]!),
        match[6] != null ? int.parse(match[6]!) : 0,
      );
    }

    // EU date with dot: 15.01.2024
    final euDateDot = RegExp(r'^(\d{1,2})\.(\d{1,2})\.(\d{4})$');
    match = euDateDot.firstMatch(trimmed);
    if (match != null) {
      return DateTime(int.parse(match[3]!), int.parse(match[2]!), int.parse(match[1]!));
    }

    return null;
  }
}
