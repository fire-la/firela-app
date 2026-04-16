// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BalanceResponseDto extends BalanceResponseDto {
  @override
  final String account;
  @override
  final String balance;
  @override
  final String currency;
  @override
  final String date;

  factory _$BalanceResponseDto(
          [void Function(BalanceResponseDtoBuilder)? updates]) =>
      (new BalanceResponseDtoBuilder()..update(updates))._build();

  _$BalanceResponseDto._(
      {required this.account,
      required this.balance,
      required this.currency,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'BalanceResponseDto', 'account');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'BalanceResponseDto', 'balance');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'BalanceResponseDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(date, r'BalanceResponseDto', 'date');
  }

  @override
  BalanceResponseDto rebuild(
          void Function(BalanceResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceResponseDtoBuilder toBuilder() =>
      new BalanceResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceResponseDto &&
        account == other.account &&
        balance == other.balance &&
        currency == other.currency &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BalanceResponseDto')
          ..add('account', account)
          ..add('balance', balance)
          ..add('currency', currency)
          ..add('date', date))
        .toString();
  }
}

class BalanceResponseDtoBuilder
    implements Builder<BalanceResponseDto, BalanceResponseDtoBuilder> {
  _$BalanceResponseDto? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  BalanceResponseDtoBuilder() {
    BalanceResponseDto._defaults(this);
  }

  BalanceResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _balance = $v.balance;
      _currency = $v.currency;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BalanceResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceResponseDto;
  }

  @override
  void update(void Function(BalanceResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BalanceResponseDto build() => _build();

  _$BalanceResponseDto _build() {
    final _$result = _$v ??
        new _$BalanceResponseDto._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'BalanceResponseDto', 'account'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'BalanceResponseDto', 'balance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'BalanceResponseDto', 'currency'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'BalanceResponseDto', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
