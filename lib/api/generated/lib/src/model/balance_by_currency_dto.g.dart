// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_by_currency_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BalanceByCurrencyDto extends BalanceByCurrencyDto {
  @override
  final String currency;
  @override
  final String balance;

  factory _$BalanceByCurrencyDto(
          [void Function(BalanceByCurrencyDtoBuilder)? updates]) =>
      (new BalanceByCurrencyDtoBuilder()..update(updates))._build();

  _$BalanceByCurrencyDto._({required this.currency, required this.balance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currency, r'BalanceByCurrencyDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'BalanceByCurrencyDto', 'balance');
  }

  @override
  BalanceByCurrencyDto rebuild(
          void Function(BalanceByCurrencyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceByCurrencyDtoBuilder toBuilder() =>
      new BalanceByCurrencyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceByCurrencyDto &&
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
    return (newBuiltValueToStringHelper(r'BalanceByCurrencyDto')
          ..add('currency', currency)
          ..add('balance', balance))
        .toString();
  }
}

class BalanceByCurrencyDtoBuilder
    implements Builder<BalanceByCurrencyDto, BalanceByCurrencyDtoBuilder> {
  _$BalanceByCurrencyDto? _$v;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  BalanceByCurrencyDtoBuilder() {
    BalanceByCurrencyDto._defaults(this);
  }

  BalanceByCurrencyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _balance = $v.balance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BalanceByCurrencyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceByCurrencyDto;
  }

  @override
  void update(void Function(BalanceByCurrencyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BalanceByCurrencyDto build() => _build();

  _$BalanceByCurrencyDto _build() {
    final _$result = _$v ??
        new _$BalanceByCurrencyDto._(
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'BalanceByCurrencyDto', 'currency'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'BalanceByCurrencyDto', 'balance'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
