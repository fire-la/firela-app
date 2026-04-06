// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BalanceResponse extends BalanceResponse {
  @override
  final String account;
  @override
  final String balance;
  @override
  final String currency;
  @override
  final Date date;

  factory _$BalanceResponse([void Function(BalanceResponseBuilder)? updates]) =>
      (new BalanceResponseBuilder()..update(updates))._build();

  _$BalanceResponse._(
      {required this.account,
      required this.balance,
      required this.currency,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'BalanceResponse', 'account');
    BuiltValueNullFieldError.checkNotNull(
        balance, r'BalanceResponse', 'balance');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'BalanceResponse', 'currency');
    BuiltValueNullFieldError.checkNotNull(date, r'BalanceResponse', 'date');
  }

  @override
  BalanceResponse rebuild(void Function(BalanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BalanceResponseBuilder toBuilder() =>
      new BalanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BalanceResponse &&
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
    return (newBuiltValueToStringHelper(r'BalanceResponse')
          ..add('account', account)
          ..add('balance', balance)
          ..add('currency', currency)
          ..add('date', date))
        .toString();
  }
}

class BalanceResponseBuilder
    implements Builder<BalanceResponse, BalanceResponseBuilder> {
  _$BalanceResponse? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  BalanceResponseBuilder() {
    BalanceResponse._defaults(this);
  }

  BalanceResponseBuilder get _$this {
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
  void replace(BalanceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BalanceResponse;
  }

  @override
  void update(void Function(BalanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BalanceResponse build() => _build();

  _$BalanceResponse _build() {
    final _$result = _$v ??
        new _$BalanceResponse._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'BalanceResponse', 'account'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'BalanceResponse', 'balance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'BalanceResponse', 'currency'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'BalanceResponse', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
