/// Alipay Cashbook (记账本) specific transaction fields
///
/// These fields are extracted from Alipay Cashbook CSV exports
/// and attached to RawTransaction.customFields
class AlipayCashbookFields {
  /// Category (分类)
  final String? category;

  /// Income/Expense type (收支类型)
  /// - 收入 (income)
  /// - 支出 (expense)
  final String? incomeExpenseType;

  /// Note/Remark (备注)
  final String? note;

  /// Account (账户)
  final String? account;

  /// Source (来源)
  final String? source;

  /// Tags (标签)
  final String? tags;

  /// Whether this is an income
  bool get isIncome => incomeExpenseType?.contains('收入') ?? false;

  /// Whether this is an expense
  bool get isExpense => incomeExpenseType?.contains('支出') ?? false;

  const AlipayCashbookFields({
    this.category,
    this.incomeExpenseType,
    this.note,
    this.account,
    this.source,
    this.tags,
  });

  @override
  String toString() {
    return 'AlipayCashbookFields(category: $category, account: $account)';
  }
}
