// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_balance_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CurrencyBalanceDto extends CurrencyBalanceDto {
  @override
  final String currency;
  @override
  final String balance;

  factory _$CurrencyBalanceDto(
          [void Function(CurrencyBalanceDtoBuilder)? updates]) =>
      (new CurrencyBalanceDtoBuilder()..update(updates))._build();

  _$CurrencyBalanceDto._({required this.currency, required this.balance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CurrencyBalanceDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'CurrencyBalanceDto', 'balance');
  }

  @override
  CurrencyBalanceDto rebuild(
          void Function(CurrencyBalanceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrencyBalanceDtoBuilder toBuilder() =>
      new CurrencyBalanceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrencyBalanceDto &&
        currency == other.currency &&
        balance == other.balance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrencyBalanceDto')
          ..add('currency', currency)
          ..add('balance', balance))
        .toString();
  }
}

class CurrencyBalanceDtoBuilder
    implements Builder<CurrencyBalanceDto, CurrencyBalanceDtoBuilder> {
  _$CurrencyBalanceDto? _$v;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  CurrencyBalanceDtoBuilder() {
    CurrencyBalanceDto._defaults(this);
  }

  CurrencyBalanceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _balance = $v.balance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrencyBalanceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrencyBalanceDto;
  }

  @override
  void update(void Function(CurrencyBalanceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrencyBalanceDto build() => _build();

  _$CurrencyBalanceDto _build() {
    final _$result = _$v ??
        new _$CurrencyBalanceDto._(
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'CurrencyBalanceDto', 'currency'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'CurrencyBalanceDto', 'balance'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
