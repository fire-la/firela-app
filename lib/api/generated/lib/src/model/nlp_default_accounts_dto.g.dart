// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_default_accounts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpDefaultAccountsDto extends NlpDefaultAccountsDto {
  @override
  final String asset;
  @override
  final String expense;
  @override
  final String income;
  @override
  final String liability;

  factory _$NlpDefaultAccountsDto(
          [void Function(NlpDefaultAccountsDtoBuilder)? updates]) =>
      (new NlpDefaultAccountsDtoBuilder()..update(updates))._build();

  _$NlpDefaultAccountsDto._(
      {required this.asset,
      required this.expense,
      required this.income,
      required this.liability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        asset, r'NlpDefaultAccountsDto', 'asset');
    BuiltValueNullFieldError.checkNotNull(
        expense, r'NlpDefaultAccountsDto', 'expense');
    BuiltValueNullFieldError.checkNotNull(
        income, r'NlpDefaultAccountsDto', 'income');
    BuiltValueNullFieldError.checkNotNull(
        liability, r'NlpDefaultAccountsDto', 'liability');
  }

  @override
  NlpDefaultAccountsDto rebuild(
          void Function(NlpDefaultAccountsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpDefaultAccountsDtoBuilder toBuilder() =>
      new NlpDefaultAccountsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpDefaultAccountsDto &&
        asset == other.asset &&
        expense == other.expense &&
        income == other.income &&
        liability == other.liability;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asset.hashCode);
    _$hash = $jc(_$hash, expense.hashCode);
    _$hash = $jc(_$hash, income.hashCode);
    _$hash = $jc(_$hash, liability.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpDefaultAccountsDto')
          ..add('asset', asset)
          ..add('expense', expense)
          ..add('income', income)
          ..add('liability', liability))
        .toString();
  }
}

class NlpDefaultAccountsDtoBuilder
    implements Builder<NlpDefaultAccountsDto, NlpDefaultAccountsDtoBuilder> {
  _$NlpDefaultAccountsDto? _$v;

  String? _asset;
  String? get asset => _$this._asset;
  set asset(String? asset) => _$this._asset = asset;

  String? _expense;
  String? get expense => _$this._expense;
  set expense(String? expense) => _$this._expense = expense;

  String? _income;
  String? get income => _$this._income;
  set income(String? income) => _$this._income = income;

  String? _liability;
  String? get liability => _$this._liability;
  set liability(String? liability) => _$this._liability = liability;

  NlpDefaultAccountsDtoBuilder() {
    NlpDefaultAccountsDto._defaults(this);
  }

  NlpDefaultAccountsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asset = $v.asset;
      _expense = $v.expense;
      _income = $v.income;
      _liability = $v.liability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpDefaultAccountsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpDefaultAccountsDto;
  }

  @override
  void update(void Function(NlpDefaultAccountsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpDefaultAccountsDto build() => _build();

  _$NlpDefaultAccountsDto _build() {
    final _$result = _$v ??
        new _$NlpDefaultAccountsDto._(
            asset: BuiltValueNullFieldError.checkNotNull(
                asset, r'NlpDefaultAccountsDto', 'asset'),
            expense: BuiltValueNullFieldError.checkNotNull(
                expense, r'NlpDefaultAccountsDto', 'expense'),
            income: BuiltValueNullFieldError.checkNotNull(
                income, r'NlpDefaultAccountsDto', 'income'),
            liability: BuiltValueNullFieldError.checkNotNull(
                liability, r'NlpDefaultAccountsDto', 'liability'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
