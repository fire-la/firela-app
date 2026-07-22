// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryGroupDto extends CategoryGroupDto {
  @override
  final String category;
  @override
  final String totalExpense;
  @override
  final num sharePct;
  @override
  final BuiltList<BalanceByCurrencyDto> balanceByCurrency;
  @override
  final String? convertedBalance;

  factory _$CategoryGroupDto(
          [void Function(CategoryGroupDtoBuilder)? updates]) =>
      (new CategoryGroupDtoBuilder()..update(updates))._build();

  _$CategoryGroupDto._(
      {required this.category,
      required this.totalExpense,
      required this.sharePct,
      required this.balanceByCurrency,
      this.convertedBalance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        category, r'CategoryGroupDto', 'category');
    BuiltValueNullFieldError.checkNotNull(
        totalExpense, r'CategoryGroupDto', 'totalExpense');
    BuiltValueNullFieldError.checkNotNull(
        sharePct, r'CategoryGroupDto', 'sharePct');
    BuiltValueNullFieldError.checkNotNull(
        balanceByCurrency, r'CategoryGroupDto', 'balanceByCurrency');
  }

  @override
  CategoryGroupDto rebuild(void Function(CategoryGroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryGroupDtoBuilder toBuilder() =>
      new CategoryGroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryGroupDto &&
        category == other.category &&
        totalExpense == other.totalExpense &&
        sharePct == other.sharePct &&
        balanceByCurrency == other.balanceByCurrency &&
        convertedBalance == other.convertedBalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, totalExpense.hashCode);
    _$hash = $jc(_$hash, sharePct.hashCode);
    _$hash = $jc(_$hash, balanceByCurrency.hashCode);
    _$hash = $jc(_$hash, convertedBalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoryGroupDto')
          ..add('category', category)
          ..add('totalExpense', totalExpense)
          ..add('sharePct', sharePct)
          ..add('balanceByCurrency', balanceByCurrency)
          ..add('convertedBalance', convertedBalance))
        .toString();
  }
}

class CategoryGroupDtoBuilder
    implements Builder<CategoryGroupDto, CategoryGroupDtoBuilder> {
  _$CategoryGroupDto? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _totalExpense;
  String? get totalExpense => _$this._totalExpense;
  set totalExpense(String? totalExpense) => _$this._totalExpense = totalExpense;

  num? _sharePct;
  num? get sharePct => _$this._sharePct;
  set sharePct(num? sharePct) => _$this._sharePct = sharePct;

  ListBuilder<BalanceByCurrencyDto>? _balanceByCurrency;
  ListBuilder<BalanceByCurrencyDto> get balanceByCurrency =>
      _$this._balanceByCurrency ??= new ListBuilder<BalanceByCurrencyDto>();
  set balanceByCurrency(ListBuilder<BalanceByCurrencyDto>? balanceByCurrency) =>
      _$this._balanceByCurrency = balanceByCurrency;

  String? _convertedBalance;
  String? get convertedBalance => _$this._convertedBalance;
  set convertedBalance(String? convertedBalance) =>
      _$this._convertedBalance = convertedBalance;

  CategoryGroupDtoBuilder() {
    CategoryGroupDto._defaults(this);
  }

  CategoryGroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _totalExpense = $v.totalExpense;
      _sharePct = $v.sharePct;
      _balanceByCurrency = $v.balanceByCurrency.toBuilder();
      _convertedBalance = $v.convertedBalance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryGroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryGroupDto;
  }

  @override
  void update(void Function(CategoryGroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryGroupDto build() => _build();

  _$CategoryGroupDto _build() {
    _$CategoryGroupDto _$result;
    try {
      _$result = _$v ??
          new _$CategoryGroupDto._(
              category: BuiltValueNullFieldError.checkNotNull(
                  category, r'CategoryGroupDto', 'category'),
              totalExpense: BuiltValueNullFieldError.checkNotNull(
                  totalExpense, r'CategoryGroupDto', 'totalExpense'),
              sharePct: BuiltValueNullFieldError.checkNotNull(
                  sharePct, r'CategoryGroupDto', 'sharePct'),
              balanceByCurrency: balanceByCurrency.build(),
              convertedBalance: convertedBalance);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'balanceByCurrency';
        balanceByCurrency.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoryGroupDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
