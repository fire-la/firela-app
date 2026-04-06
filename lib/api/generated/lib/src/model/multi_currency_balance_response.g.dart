// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_currency_balance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultiCurrencyBalanceResponse extends MultiCurrencyBalanceResponse {
  @override
  final String account;
  @override
  final BuiltMap<String, String> balances;
  @override
  final Date date;

  factory _$MultiCurrencyBalanceResponse(
          [void Function(MultiCurrencyBalanceResponseBuilder)? updates]) =>
      (new MultiCurrencyBalanceResponseBuilder()..update(updates))._build();

  _$MultiCurrencyBalanceResponse._(
      {required this.account, required this.balances, required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'MultiCurrencyBalanceResponse', 'account');
    BuiltValueNullFieldError.checkNotNull(
        balances, r'MultiCurrencyBalanceResponse', 'balances');
    BuiltValueNullFieldError.checkNotNull(
        date, r'MultiCurrencyBalanceResponse', 'date');
  }

  @override
  MultiCurrencyBalanceResponse rebuild(
          void Function(MultiCurrencyBalanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiCurrencyBalanceResponseBuilder toBuilder() =>
      new MultiCurrencyBalanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiCurrencyBalanceResponse &&
        account == other.account &&
        balances == other.balances &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, balances.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiCurrencyBalanceResponse')
          ..add('account', account)
          ..add('balances', balances)
          ..add('date', date))
        .toString();
  }
}

class MultiCurrencyBalanceResponseBuilder
    implements
        Builder<MultiCurrencyBalanceResponse,
            MultiCurrencyBalanceResponseBuilder> {
  _$MultiCurrencyBalanceResponse? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  MapBuilder<String, String>? _balances;
  MapBuilder<String, String> get balances =>
      _$this._balances ??= new MapBuilder<String, String>();
  set balances(MapBuilder<String, String>? balances) =>
      _$this._balances = balances;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  MultiCurrencyBalanceResponseBuilder() {
    MultiCurrencyBalanceResponse._defaults(this);
  }

  MultiCurrencyBalanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _balances = $v.balances.toBuilder();
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiCurrencyBalanceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiCurrencyBalanceResponse;
  }

  @override
  void update(void Function(MultiCurrencyBalanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiCurrencyBalanceResponse build() => _build();

  _$MultiCurrencyBalanceResponse _build() {
    _$MultiCurrencyBalanceResponse _$result;
    try {
      _$result = _$v ??
          new _$MultiCurrencyBalanceResponse._(
              account: BuiltValueNullFieldError.checkNotNull(
                  account, r'MultiCurrencyBalanceResponse', 'account'),
              balances: balances.build(),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'MultiCurrencyBalanceResponse', 'date'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'balances';
        balances.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MultiCurrencyBalanceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
