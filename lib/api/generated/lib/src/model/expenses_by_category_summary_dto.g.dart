// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expenses_by_category_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpensesByCategorySummaryDto extends ExpensesByCategorySummaryDto {
  @override
  final String totalExpense;
  @override
  final num categoryCount;

  factory _$ExpensesByCategorySummaryDto(
          [void Function(ExpensesByCategorySummaryDtoBuilder)? updates]) =>
      (new ExpensesByCategorySummaryDtoBuilder()..update(updates))._build();

  _$ExpensesByCategorySummaryDto._(
      {required this.totalExpense, required this.categoryCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalExpense, r'ExpensesByCategorySummaryDto', 'totalExpense');
    BuiltValueNullFieldError.checkNotNull(
        categoryCount, r'ExpensesByCategorySummaryDto', 'categoryCount');
  }

  @override
  ExpensesByCategorySummaryDto rebuild(
          void Function(ExpensesByCategorySummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpensesByCategorySummaryDtoBuilder toBuilder() =>
      new ExpensesByCategorySummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpensesByCategorySummaryDto &&
        totalExpense == other.totalExpense &&
        categoryCount == other.categoryCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalExpense.hashCode);
    _$hash = $jc(_$hash, categoryCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpensesByCategorySummaryDto')
          ..add('totalExpense', totalExpense)
          ..add('categoryCount', categoryCount))
        .toString();
  }
}

class ExpensesByCategorySummaryDtoBuilder
    implements
        Builder<ExpensesByCategorySummaryDto,
            ExpensesByCategorySummaryDtoBuilder> {
  _$ExpensesByCategorySummaryDto? _$v;

  String? _totalExpense;
  String? get totalExpense => _$this._totalExpense;
  set totalExpense(String? totalExpense) => _$this._totalExpense = totalExpense;

  num? _categoryCount;
  num? get categoryCount => _$this._categoryCount;
  set categoryCount(num? categoryCount) =>
      _$this._categoryCount = categoryCount;

  ExpensesByCategorySummaryDtoBuilder() {
    ExpensesByCategorySummaryDto._defaults(this);
  }

  ExpensesByCategorySummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalExpense = $v.totalExpense;
      _categoryCount = $v.categoryCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpensesByCategorySummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpensesByCategorySummaryDto;
  }

  @override
  void update(void Function(ExpensesByCategorySummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpensesByCategorySummaryDto build() => _build();

  _$ExpensesByCategorySummaryDto _build() {
    final _$result = _$v ??
        new _$ExpensesByCategorySummaryDto._(
            totalExpense: BuiltValueNullFieldError.checkNotNull(
                totalExpense, r'ExpensesByCategorySummaryDto', 'totalExpense'),
            categoryCount: BuiltValueNullFieldError.checkNotNull(categoryCount,
                r'ExpensesByCategorySummaryDto', 'categoryCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
