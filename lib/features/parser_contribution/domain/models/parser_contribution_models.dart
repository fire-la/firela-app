/// Models for parser contribution flow
///
/// Based on: parser-contribution-flow-spec.md Section 2
library;

/// Region codes (ISO 3166-1 alpha-2)
enum Region {
  cn('cn', '中国', 'China'),
  us('us', '美国', 'United States'),
  de('de', '德国', 'Germany'),
  fr('fr', '法国', 'France'),
  gb('gb', '英国', 'United Kingdom'),
  hk('hk', '香港', 'Hong Kong'),
  jp('jp', '日本', 'Japan'),
  sg('sg', '新加坡', 'Singapore'),
  au('au', '澳大利亚', 'Australia'),
  ca('ca', '加拿大', 'Canada'),
  other('other', '其他', 'Other');

  final String code;
  final String displayNameZh;
  final String displayNameEn;

  const Region(this.code, this.displayNameZh, this.displayNameEn);
}

/// Account types
enum AccountType {
  checking('checking', '储蓄账户', 'Checking'),
  savings('savings', '储蓄账户', 'Savings'),
  credit('credit', '信用卡', 'Credit Card'),
  debit('debit', '借记卡', 'Debit Card'),
  investment('investment', '投资账户', 'Investment');

  final String code;
  final String displayNameZh;
  final String displayNameEn;

  const AccountType(this.code, this.displayNameZh, this.displayNameEn);
}

/// File formats
enum FileFormat {
  csv('csv', 'CSV'),
  xlsx('xlsx', 'Excel (XLSX)'),
  pdf('pdf', 'PDF'),
  ofx('ofx', 'OFX'),
  qif('qif', 'QIF');

  final String code;
  final String displayName;

  const FileFormat(this.code, this.displayName);
}

/// CSV delimiters
enum CsvDelimiter {
  comma(',', '逗号 (,)'),
  semicolon(';', '分号 (;)'),
  tab('\t', '制表符'),
  pipe('|', '竖线 (|)');

  final String value;
  final String displayName;

  const CsvDelimiter(this.value, this.displayName);
}

/// Amount sign conventions
enum SignConvention {
  negativeExpense('negative-expense', '支出为负，收入为正'),
  positiveExpense('positive-expense', '支出为正，收入为负'),
  separateColumns('separate-columns', '收支分列');

  final String code;
  final String displayName;

  const SignConvention(this.code, this.displayName);
}

/// Field mapping hint
class FieldHint {
  final String columnName;
  final String? format; // For date format
  final SignConvention? signConvention;
  final String? creditColumn;
  final String? debitColumn;

  const FieldHint({
    required this.columnName,
    this.format,
    this.signConvention,
    this.creditColumn,
    this.debitColumn,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'columnName': columnName};
    if (format != null) json['format'] = format;
    if (signConvention != null) json['signConvention'] = signConvention!.code;
    if (creditColumn != null) json['creditColumn'] = creditColumn;
    if (debitColumn != null) json['debitColumn'] = debitColumn;
    return json;
  }
}

/// Complete field hints for a parser
class FieldHints {
  final FieldHint date;
  final FieldHint amount;
  final FieldHint? description;
  final FieldHint? balance;
  final FieldHint? payee;
  final FieldHint? reference;
  final FieldHint? category;

  const FieldHints({
    required this.date,
    required this.amount,
    this.description,
    this.balance,
    this.payee,
    this.reference,
    this.category,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'date': date.toJson(),
      'amount': amount.toJson(),
    };
    if (description != null) json['description'] = description!.toJson();
    if (balance != null) json['balance'] = balance!.toJson();
    if (payee != null) json['payee'] = payee!.toJson();
    if (reference != null) json['reference'] = reference!.toJson();
    if (category != null) json['category'] = category!.toJson();
    return json;
  }
}

/// Expected transaction example
class ExpectedTransaction {
  final String date;
  final double amount;
  final String description;
  final String? payee;
  final String? category;

  const ExpectedTransaction({
    required this.date,
    required this.amount,
    required this.description,
    this.payee,
    this.category,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'date': date,
      'amount': amount,
      'description': description,
    };
    if (payee != null) json['payee'] = payee;
    if (category != null) json['category'] = category;
    return json;
  }
}

/// Sanitized sample data
class SanitizedSamples {
  final List<Map<String, String>> rows;
  final List<String>? rawHeaders;

  const SanitizedSamples({
    required this.rows,
    this.rawHeaders,
  });

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'rows': rows};
    if (rawHeaders != null) json['rawHeaders'] = rawHeaders;
    return json;
  }
}

/// Complete parser contribution request
class ParserContributionRequest {
  final String institution;
  final String? institutionDisplayName;
  final Region region;
  final AccountType accountType;
  final FileFormat format;
  final String? encoding;
  final CsvDelimiter? delimiter;
  final int headerRows;
  final String? notes;
  final SanitizedSamples samples;
  final FieldHints fieldHints;
  final List<ExpectedTransaction>? examples;

  const ParserContributionRequest({
    required this.institution,
    this.institutionDisplayName,
    required this.region,
    required this.accountType,
    required this.format,
    this.encoding,
    this.delimiter,
    this.headerRows = 1,
    this.notes,
    required this.samples,
    required this.fieldHints,
    this.examples,
  });

  Map<String, dynamic> toJson() {
    final meta = <String, dynamic>{
      'institution': institution,
      'region': region.code,
      'accountType': accountType.code,
      'format': format.code,
    };

    if (institutionDisplayName != null) {
      meta['institutionDisplayName'] = institutionDisplayName;
    }
    if (encoding != null) meta['encoding'] = encoding;
    if (delimiter != null) meta['delimiter'] = delimiter!.value;
    if (headerRows != 1) meta['headerRows'] = headerRows;
    if (notes != null) meta['notes'] = notes;

    final json = <String, dynamic>{
      'meta': meta,
      'samples': samples.toJson(),
      'fieldHints': fieldHints.toJson(),
    };

    if (examples != null && examples!.isNotEmpty) {
      json['examples'] = {
        'expectedTransactions': examples!.map((e) => e.toJson()).toList(),
      };
    }

    return json;
  }

  String toJsonString() {
    // Use dart:convert for proper JSON encoding
    return _encodeJson(toJson());
  }

  static String _encodeJson(dynamic value) {
    if (value is String) return '"${value.replaceAll('"', '\\"')}"';
    if (value is num || value is bool) return value.toString();
    if (value is List) {
      return '[${value.map(_encodeJson).join(',')}]';
    }
    if (value is Map) {
      final entries = value.entries.map((e) => '"${e.key}":${_encodeJson(e.value)}');
      return '{${entries.join(',')}}';
    }
    return 'null';
  }

  /// Generate GitHub issue title
  String get issueTitle {
    final name = institutionDisplayName ?? institution;
    final type = accountType.displayNameZh;
    final fmt = format.displayName;
    return '添加 $name $type 解析器 ($fmt)';
  }

  /// Generate GitHub issue body
  String get issueBody {
    final buffer = StringBuffer();

    buffer.writeln('## 解析器请求');
    buffer.writeln();
    buffer.writeln('### 基本信息');
    buffer.writeln('- **金融机构**: ${institutionDisplayName ?? institution}');
    buffer.writeln('- **机构代码**: $institution');
    buffer.writeln('- **地区**: ${region.displayNameZh}');
    buffer.writeln('- **账户类型**: ${accountType.displayNameZh}');
    buffer.writeln('- **文件格式**: ${format.displayName}');
    if (encoding != null) buffer.writeln('- **编码**: $encoding');
    if (delimiter != null && format == FileFormat.csv) {
      buffer.writeln('- **分隔符**: ${delimiter!.displayName}');
    }
    if (headerRows != 1) buffer.writeln('- **表头行数**: $headerRows');
    buffer.writeln();

    if (notes != null && notes!.isNotEmpty) {
      buffer.writeln('### 用户备注');
      buffer.writeln(notes);
      buffer.writeln();
    }

    buffer.writeln('### 脱敏数据');
    buffer.writeln('<details>');
    buffer.writeln('<summary>点击查看 JSON 数据</summary>');
    buffer.writeln();
    buffer.writeln('```json');
    buffer.writeln(toJsonString());
    buffer.writeln('```');
    buffer.writeln('</details>');
    buffer.writeln();
    buffer.writeln('---');
    buffer.writeln('*此 Issue 由 FIREla App 自动生成*');

    return buffer.toString();
  }

  /// GitHub issue labels
  List<String> get issueLabels {
    return [
      'new-parser',
      'region-${region.code}',
      'needs-review',
    ];
  }
}

/// GitHub issue creation result
class GitHubIssueResult {
  final bool success;
  final int? issueNumber;
  final String? issueUrl;
  final String? errorMessage;

  const GitHubIssueResult({
    required this.success,
    this.issueNumber,
    this.issueUrl,
    this.errorMessage,
  });

  factory GitHubIssueResult.success({
    required int issueNumber,
    required String issueUrl,
  }) {
    return GitHubIssueResult(
      success: true,
      issueNumber: issueNumber,
      issueUrl: issueUrl,
    );
  }

  factory GitHubIssueResult.failure(String error) {
    return GitHubIssueResult(success: false, errorMessage: error);
  }
}

/// Extension for SignConvention
extension SignConventionExtension on SignConvention {
  String get displayName {
    switch (this) {
      case SignConvention.negativeExpense:
        return '支出为负，收入为正';
      case SignConvention.positiveExpense:
        return '支出为正，收入为负';
      case SignConvention.separateColumns:
        return '收支分列';
    }
  }
}
