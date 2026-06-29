/// Data sanitization utilities for parser contribution flow
///
/// Implements privacy-preserving transformations for user data
/// before submitting to GitHub Issues for parser development.
///
/// Reference: parser-contribution-flow-spec.md Section 3
library;

/// Sanitize Chinese name (2-4 characters)
///
/// Example: 张三 → 张*
String sanitizeName(String name) {
  if (name.isEmpty) return '*';
  if (name.length == 1) return '${name[0]}*';
  return '${name[0]}*';
}

/// Sanitize bank card number (keep last 4 digits)
///
/// Example: 6225 **** **** 1234 → ****1234
String sanitizeCardNumber(String cardNumber) {
  final digits = cardNumber.replaceAll(RegExp(r'[^\d]'), '');
  if (digits.length < 4) return '****';
  return '****${digits.substring(digits.length - 4)}';
}

/// Sanitize phone number (keep first 3 and last 2 digits)
///
/// Example: 13812345678 → 138***78
String sanitizePhone(String phone) {
  final digits = phone.replaceAll(RegExp(r'[^\d]'), '');
  if (digits.length < 5) return '***';
  return '${digits.substring(0, 3)}***${digits.substring(digits.length - 2)}';
}

/// Sanitize email address (keep first char and domain)
///
/// Example: zhang@example.com → z***@example.com
String sanitizeEmail(String email) {
  final parts = email.split('@');
  if (parts.length != 2) return '***@***.***';

  final local = parts[0];
  final domain = parts[1];

  if (local.isEmpty) return '***@$domain';

  return '${local[0]}***@$domain';
}

/// Sanitize address (keep city only)
///
/// Example: 北京市朝阳区望京街道 → 北京市***
String sanitizeAddress(String address) {
  // Match Chinese city patterns
  final cityPattern = RegExp(r'^([\u4e00-\u9fa5]+?(?:省|市|自治区|特别行政区))');
  final match = cityPattern.firstMatch(address);

  if (match != null) {
    return '${match.group(1)}***';
  }

  // If no city pattern found, return masked
  return '***';
}

/// Sanitize merchant/store name (partial masking)
///
/// Example: 星巴克-望京店 → 星巴克-***店
String sanitizeMerchant(String merchant) {
  // Keep first part, mask location details
  if (merchant.contains('-')) {
    final parts = merchant.split('-');
    if (parts.length > 1) {
      final lastPart = parts.last;
      // Check if last part looks like a location (contains 店, 路, 街, etc.)
      if (RegExp(r'(店|路|街|区|大厦|中心|广场|商场)').hasMatch(lastPart)) {
        final locationMatch = RegExp(r'^(.*?)(店|路|街|区|大厦|中心|广场|商场)').firstMatch(lastPart);
        if (locationMatch != null) {
          final suffix = locationMatch.group(2) ?? '';
          parts[parts.length - 1] = '***$suffix';
        } else {
          parts[parts.length - 1] = '***';
        }
      } else {
        parts[parts.length - 1] = '***';
      }
      return parts.join('-');
    }
  }
  return merchant;
}

/// Sanitize transaction description
///
/// Applies multiple sanitization rules to remove sensitive info
String sanitizeDescription(String description) {
  var result = description;

  // Sanitize Chinese names (2-4 consecutive Chinese characters that look like names)
  result = result.replaceAllMapped(
    RegExp(r'[\u4e00-\u9fa5]{2,4}'),
    (match) {
      final text = match.group(0)!;
      // Don't sanitize if it looks like a merchant (contains common merchant keywords)
      if (RegExp(r'(银行|支付|宝|信|商店|超市|餐厅|咖啡|酒店|公司|有限|股份)').hasMatch(text)) {
        return text;
      }
      return sanitizeName(text);
    },
  );

  // Sanitize phone numbers
  result = result.replaceAllMapped(
    RegExp(r'1[3-9]\d{9}'),
    (match) => sanitizePhone(match.group(0)!),
  );

  // Sanitize bank card numbers
  result = result.replaceAllMapped(
    RegExp(r'\d{4}[\s\-]?\d{4}[\s\-]?\d{4}[\s\-]?\d{4,7}'),
    (match) => sanitizeCardNumber(match.group(0)!),
  );

  // Sanitize emails
  result = result.replaceAllMapped(
    RegExp(r'[\w\.\-]+@[\w\.\-]+\.\w+'),
    (match) => sanitizeEmail(match.group(0)!),
  );

  // Sanitize merchant names
  result = result.replaceAllMapped(
    RegExp(r'[\u4e00-\u9fa5]+\-[\u4e00-\u9fa5]+(?:店|路|街|区|大厦|中心|广场|商场)'),
    (match) => sanitizeMerchant(match.group(0)!),
  );

  return result;
}

/// Sanitize a single row of transaction data
///
/// Returns a sanitized copy of the row
Map<String, String> sanitizeRow(Map<String, String> row) {
  final sanitized = <String, String>{};

  // Fields that should NOT be sanitized (keep original values)
  const preserveFields = {'date', '时间', '日期', '交易日期', 'Date', 'Trans Date', 'amount', '金额', '交易金额', 'Amount', 'balance', '余额', 'Balance'};

  // Fields that need merchant-style sanitization
  const merchantFields = {'merchant', '商户', '商户名', 'Merchant', 'payee', '对方户名', '收款方', 'Payee'};

  row.forEach((key, value) {
    if (value.isEmpty) {
      sanitized[key] = value;
      return;
    }

    final lowerKey = key.toLowerCase();

    if (preserveFields.any((f) => lowerKey.contains(f.toLowerCase()))) {
      // Keep original value for dates, amounts, and balances
      sanitized[key] = value;
    } else if (merchantFields.any((f) => lowerKey.contains(f.toLowerCase()))) {
      // Apply merchant sanitization
      sanitized[key] = sanitizeMerchant(value);
    } else {
      // Apply full description sanitization
      sanitized[key] = sanitizeDescription(value);
    }
  });

  return sanitized;
}

/// Sanitize multiple rows of transaction data
///
/// Returns sanitized copies of all rows
List<Map<String, String>> sanitizeRows(List<Map<String, String>> rows) {
  return rows.map(sanitizeRow).toList();
}

/// Validate that data is properly sanitized
///
/// Returns list of validation errors, empty if valid
List<String> validateSanitization(Map<String, dynamic> data) {
  final errors = <String>[];

  final jsonStr = data.toString();

  // Check for unsanitized phone numbers (11 digit Chinese mobile)
  if (RegExp(r'1[3-9]\d{9}').hasMatch(jsonStr)) {
    errors.add('发现未脱敏的手机号');
  }

  // Check for unsanitized bank card numbers (16-19 digits)
  if (RegExp(r'\d{16,19}').hasMatch(jsonStr)) {
    // Make sure it's not a timestamp or amount
    final matches = RegExp(r'\d{16,19}').allMatches(jsonStr);
    for (final match in matches) {
      final num = match.group(0)!;
      if (!num.startsWith('1') && !num.startsWith('2')) {
        // Likely a card number, not a timestamp
        errors.add('发现未脱敏的银行卡号: ****${num.substring(num.length - 4)}');
      }
    }
  }

  // Check for email patterns
  if (RegExp(r'[\w\.]+@[\w\.]+\.\w+').hasMatch(jsonStr)) {
    // Check if it's sanitized (should have ***)
    final emails = RegExp(r'[\w\.]+@[\w\.]+\.\w+').allMatches(jsonStr);
    for (final email in emails) {
      if (!email.group(0)!.contains('***')) {
        errors.add('发现未脱敏的邮箱地址');
        break;
      }
    }
  }

  return errors;
}

/// Sanitization result with validation status
class SanitizationResult {
  final List<Map<String, String>> sanitizedRows;
  final List<String> validationErrors;
  final bool isValid;

  SanitizationResult({
    required this.sanitizedRows,
    required this.validationErrors,
  }) : isValid = validationErrors.isEmpty;

  Map<String, dynamic> toJson() => {
    'sanitizedRows': sanitizedRows,
    'validationErrors': validationErrors,
    'isValid': isValid,
  };
}

/// Full sanitization pipeline
///
/// Sanitizes rows and validates the result
SanitizationResult sanitizeTransactionData(List<Map<String, String>> rows) {
  final sanitized = sanitizeRows(rows);
  final errors = <String>[];

  // Validate each sanitized row
  for (final row in sanitized) {
    final rowErrors = validateSanitization({'row': row});
    errors.addAll(rowErrors);
  }

  return SanitizationResult(
    sanitizedRows: sanitized,
    validationErrors: errors.toSet().toList(), // Remove duplicates
  );
}
