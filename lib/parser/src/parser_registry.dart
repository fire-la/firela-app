/// Parser registry for automatic format detection.
///
/// This module provides a registry of all available parsers,
/// allowing automatic detection of file formats.
library;

import 'dart:typed_data';
import 'types.dart' as old;
import 'alipay/alipay_web_parser.dart';
import 'parsers/alipay_cashbook_parser.dart' as cashbook;
import 'parsers/wechat_parser.dart' as wechat;
import 'parser_interface.dart' as iface;
import 'raw_transaction.dart' as new_raw;
import 'parse_result.dart' as new_result;
import 'package:decimal/decimal.dart';

/// Registry for all available parsers.
///
/// The registry maintains a list of all parsers and provides
/// methods to detect the appropriate parser for a given file.
class ParserRegistry {
  /// List of registered parsers (old interface)
  final List<old.Parser> _parsers = [];

  /// List of registered parsers (new interface)
  final List<iface.Parser> _newParsers = [];

  /// Creates a new registry and registers all built-in parsers.
  ParserRegistry() {
    // Register old-style parsers
    _parsers.add(AlipayWebParser());

    // Register new-style parsers
    _newParsers.add(cashbook.AlipayCashbookParser());
    _newParsers.add(wechat.WechatParser());
  }

  /// Detect the appropriate parser for the given file.
  ///
  /// Returns a parser wrapper that can handle the file, or null if no parser matches.
  old.Parser? detect(String filename, Uint8List content) {
    // Try old-style parsers first
    for (final parser in _parsers) {
      if (parser.identify(filename, content)) {
        return parser;
      }
    }

    // Try new-style parsers
    for (final parser in _newParsers) {
      if (parser.identify(filename, content)) {
        return _NewParserWrapper(parser);
      }
    }
    return null;
  }

  /// Get list of all registered parser names.
  List<String> get availableParsers => [
    ..._parsers.map((p) => p.name),
    ..._newParsers.map((p) => p.name),
  ];

  /// Get list of all registered parsers (as wrappers for uniform interface).
  List<old.Parser> get all => [
    ..._parsers,
    ..._newParsers.map((p) => _NewParserWrapper(p)),
  ];
}

/// Wrapper to adapt new-style parsers to the old Parser interface.
///
/// Converts new_raw.RawTransaction (double amount) to old.RawTransaction (Decimal amount).
class _NewParserWrapper extends old.Parser<old.RawTransaction> {
  final iface.Parser _inner;

  _NewParserWrapper(this._inner);

  @override
  String get name => _inner.name;

  @override
  bool identify(String filename, Uint8List content) {
    return _inner.identify(filename, content);
  }

  @override
  old.ParseResult<old.RawTransaction> parse(Uint8List content) {
    final innerResult = _inner.parse(content);

    if (innerResult is new_result.ParseSuccess) {
      final success = innerResult as new_result.ParseSuccess;

      // Convert new RawTransaction (double) to old RawTransaction (Decimal)
      final convertedData = success.data.map((txn) {
        return old.RawTransaction(
          date: txn.date,
          amount: Decimal.parse(txn.amount.toString()),
          currency: txn.currency,
          description: txn.description,
          payee: txn.payee,
          metadata: txn.metadata,
          customFields: txn.customFields,
        );
      }).toList();

      // Convert warnings (new has: message, line, code; old needs: type, message, line, raw, context)
      final convertedWarnings = success.warnings?.map((w) {
        return old.ParseWarning(
          type: w.code ?? 'unknown',
          message: w.message,
          line: w.line,
        );
      }).toList();

      return old.ParseSuccess(
        data: convertedData,
        warnings: convertedWarnings,
      );
    } else if (innerResult is new_result.ParseFailure) {
      final failure = innerResult as new_result.ParseFailure;

      // Convert errors (new has: type, message, line; old needs: type, message, line, column, raw, context)
      final convertedErrors = failure.errors.map((e) {
        return old.ParseError(
          type: _convertErrorType(e.type),
          message: e.message,
          line: e.line,
        );
      }).toList();

      return old.ParseFailure(
        errors: convertedErrors,
        warnings: null, // new ParseFailure doesn't have warnings
      );
    }

    return old.ParseFailure(
      errors: [old.ParseError(
        type: old.ParseErrorType.invalidFormat,
        message: 'Unknown result type from parser',
      )],
    );
  }

  /// Convert new ParseErrorType to old ParseErrorType
  old.ParseErrorType _convertErrorType(new_result.ParseErrorType type) {
    switch (type) {
      case new_result.ParseErrorType.invalidFormat:
        return old.ParseErrorType.invalidFormat;
      case new_result.ParseErrorType.invalidDate:
        return old.ParseErrorType.invalidDate;
      case new_result.ParseErrorType.invalidAmount:
        return old.ParseErrorType.invalidAmount;
      case new_result.ParseErrorType.invalidCurrency:
        return old.ParseErrorType.invalidCurrency;
      case new_result.ParseErrorType.encodingError:
        return old.ParseErrorType.encodingError;
      case new_result.ParseErrorType.missingRequiredField:
        return old.ParseErrorType.missingRequiredField;
      case new_result.ParseErrorType.fileReadError:
        return old.ParseErrorType.fileReadError;
      case new_result.ParseErrorType.csvParseError:
        return old.ParseErrorType.csvParseError;
    }
  }
}
