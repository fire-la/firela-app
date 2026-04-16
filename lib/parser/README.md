# Firela Parser

CSV and bank statement parser library. Converts raw financial files into typed `RawTransaction` data.

Designed for client-side file parsing — no server roundtrip needed.

## Quick Start

```dart
import 'dart:typed_data';
import 'package:firela/parser/parser.dart';

// Load file bytes
final bytes = Uint8List.fromList(fileBytes);

// Auto-detect format and parse
final registry = ParserRegistry();
final parser = registry.detect(filename, bytes);

if (parser == null) {
  print('Unsupported file format');
  return;
}

final result = parser.parse(bytes);

switch (result) {
  case ParseSuccess<RawTransaction>():
    for (final txn in result.data) {
      print('${txn.date}: ${txn.amount} ${txn.currency} - ${txn.description}');
    }
  case ParseFailure<RawTransaction>():
    for (final error in result.errors) {
      print('Error: ${error.message} at line ${error.line}');
    }
}
```

## Supported Formats

### China (CN)

| Parser | Format | Source |
|--------|--------|--------|
| `AlipayMobileParser` | Alipay mobile export | 支付宝 APP 导出 |
| `AlipayWebParser` | Alipay web export | 支付宝网页导出 |
| `AlipayYuebaoParser` | Yu'ebao (money market) | 余额宝 |
| `CcbDebitParser` | CCB debit card | 建设银行借记卡 |
| `CmbcCreditParser` | CMBC credit card | 民生银行信用卡 |
| `WechatParser` | WeChat Pay export | 微信支付导出 |
| `BocCreditParser` | BOC credit card | 中国银行信用卡 |
| `CmbDebitParser` | CMB debit card | 招商银行借记卡 |
| `CmbcDebitParser` | CMBC debit card | 民生银行借记卡 |
| `ChineseCsvParser` | Generic Chinese CSV | 通用中文 CSV |

### Europe (EU)

| Parser | Format |
|--------|--------|
| `DegiroParser` | Degiro brokerage |
| `DeutscheBankParser` | Deutsche Bank |
| `InteractiveBrokersParser` | Interactive Brokers |

### Hong Kong (HK)

| Parser | Format |
|--------|--------|
| `HsbcHkParser` | HSBC Hong Kong |

## Core Types

### RawTransaction

The output of every parser — pure data, no business logic:

```dart
class RawTransaction<CustomFields> {
  final DateTime date;          // Transaction date
  final Decimal amount;         // Positive = income, negative = expense
  final String currency;        // ISO 4217 (CNY, USD, EUR)
  final String description;     // Narration
  final String? payee;          // Counterparty (optional)
  final Map<String, dynamic>? metadata;
  final CustomFields? customFields; // Parser-specific fields
}
```

### ParseResult (Sealed Class)

```dart
sealed class ParseResult<T> {}

class ParseSuccess<T> extends ParseResult<T> {
  final List<T> data;
  final List<ParseWarning>? warnings;
}

class ParseFailure<T> extends ParseResult<T> {
  final List<ParseError> errors;
  final List<ParseWarning>? warnings;
}
```

### ParseError

```dart
class ParseError {
  final ParseErrorType type;  // invalidFormat, invalidDate, invalidAmount, etc.
  final String message;
  final int? line;
  final int? column;
  final String? raw;          // Raw data that caused the error
}
```

## ParserRegistry

Auto-detects file format by trying all registered parsers:

```dart
final registry = ParserRegistry();

// Detect by filename + content
final parser = registry.detect('alipay_record.csv', bytes);

// List all available parsers
final names = registry.availableParsers;
// ['AlipayMobileParser', 'AlipayWebParser', ...]
```

## Utility Functions

### Date Parsing

```dart
import 'package:firela/parser/src/utils/date_parser.dart';

// Supports: 2024年1月25日, 2024-01-25, 2024.1.25, ISO datetime
final result = parseDate('2024年1月25日');
if (result.success) {
  print(result.data); // DateTime(2024, 1, 25)
}
```

### Amount Parsing

```dart
import 'package:firela/parser/src/utils/amount_parser.dart';

// Supports: 50.00, 1,234.56, (1,234.56) for negative
final result = parseAmount('¥1,234.56');
if (result.success) {
  print(result.data); // Decimal.parse('1234.56')
}
```

### Encoding Detection

```dart
import 'package:firela/parser/src/utils/encoding.dart';

// Auto-detects UTF-8 / GBK encoding
final text = decodeContent(bytes);
```

## Custom Fields

Some parsers populate `customFields` with parser-specific data:

```dart
// Alipay parsers expose additional fields
case ParseSuccess<RawTransaction<AlipayCustomFields>>():
  for (final txn in result.data) {
    final alipay = txn.customFields;
    if (alipay != null) {
      print('Trade No: ${alipay.tradeNo}');
      print('Status: ${alipay.status}');
    }
  }
```

## Design Principles

- **Pure parsing** — No account inference, no rule engine, no user config
- **Zero Flutter dependency** — Can be used in CLI/server contexts
- **Type-safe results** — Sealed classes for exhaustive pattern matching
- **Auto-registry** — `ParserRegistry()` registers all built-in parsers automatically
