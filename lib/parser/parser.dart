/// Parser library exports.
///
/// This module provides a unified API for accessing parser functionality.
library;

// Export core types from types.dart (this is the canonical type system)
export 'src/types.dart';
export 'src/result.dart';
export 'src/alipay/alipay_web_parser.dart';
export 'src/alipay/alipay_custom_fields.dart';
export 'src/parser_registry.dart';

// Export new parsers (they will be wrapped by registry)
export 'src/parsers/alipay_cashbook_parser.dart' hide Parser, ParseWarning;
export 'src/parsers/wechat_parser.dart' hide Parser, ParseWarning;
export 'src/custom_fields/alipay_cashbook_fields.dart';
export 'src/custom_fields/wechat_custom_fields.dart';
