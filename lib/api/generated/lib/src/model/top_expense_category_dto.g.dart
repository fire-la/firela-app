// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_expense_category_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopExpenseCategoryDto extends TopExpenseCategoryDto {
  @override
  final String category;
  @override
  final String totalExpense;

  factory _$TopExpenseCategoryDto(
          [void Function(TopExpenseCategoryDtoBuilder)? updates]) =>
      (new TopExpenseCategoryDtoBuilder()..update(updates))._build();

  _$TopExpenseCategoryDto._(
      {required this.category, required this.totalExpense})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        category, r'TopExpenseCategoryDto', 'category');
    BuiltValueNullFieldError.checkNotNull(
        totalExpense, r'TopExpenseCategoryDto', 'totalExpense');
  }

  @override
  TopExpenseCategoryDto rebuild(
          void Function(TopExpenseCategoryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopExpenseCategoryDtoBuilder toBuilder() =>
      new TopExpenseCategoryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopExpenseCategoryDto &&
        category == other.category &&
        totalExpense == other.totalExpense;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, totalExpense.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopExpenseCategoryDto')
          ..add('category', category)
          ..add('totalExpense', totalExpense))
        .toString();
  }
}

class TopExpenseCategoryDtoBuilder
    implements Builder<TopExpenseCategoryDto, TopExpenseCategoryDtoBuilder> {
  _$TopExpenseCategoryDto? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _totalExpense;
  String? get totalExpense => _$this._totalExpense;
  set totalExpense(String? totalExpense) => _$this._totalExpense = totalExpense;

  TopExpenseCategoryDtoBuilder() {
    TopExpenseCategoryDto._defaults(this);
  }

  TopExpenseCategoryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _totalExpense = $v.totalExpense;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopExpenseCategoryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TopExpenseCategoryDto;
  }

  @override
  void update(void Function(TopExpenseCategoryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopExpenseCategoryDto build() => _build();

  _$TopExpenseCategoryDto _build() {
    final _$result = _$v ??
        new _$TopExpenseCategoryDto._(
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'TopExpenseCategoryDto', 'category'),
            totalExpense: BuiltValueNullFieldError.checkNotNull(
                totalExpense, r'TopExpenseCategoryDto', 'totalExpense'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
