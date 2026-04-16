// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_currency_balance_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultiCurrencyBalanceResponseDto
    extends MultiCurrencyBalanceResponseDto {
  @override
  final String account;
  @override
  final JsonObject balances;
  @override
  final String date;

  factory _$MultiCurrencyBalanceResponseDto(
          [void Function(MultiCurrencyBalanceResponseDtoBuilder)? updates]) =>
      (new MultiCurrencyBalanceResponseDtoBuilder()..update(updates))._build();

  _$MultiCurrencyBalanceResponseDto._(
      {required this.account, required this.balances, required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        account, r'MultiCurrencyBalanceResponseDto', 'account');
    BuiltValueNullFieldError.checkNotNull(
        balances, r'MultiCurrencyBalanceResponseDto', 'balances');
    BuiltValueNullFieldError.checkNotNull(
        date, r'MultiCurrencyBalanceResponseDto', 'date');
  }

  @override
  MultiCurrencyBalanceResponseDto rebuild(
          void Function(MultiCurrencyBalanceResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiCurrencyBalanceResponseDtoBuilder toBuilder() =>
      new MultiCurrencyBalanceResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiCurrencyBalanceResponseDto &&
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
    return (newBuiltValueToStringHelper(r'MultiCurrencyBalanceResponseDto')
          ..add('account', account)
          ..add('balances', balances)
          ..add('date', date))
        .toString();
  }
}

class MultiCurrencyBalanceResponseDtoBuilder
    implements
        Builder<MultiCurrencyBalanceResponseDto,
            MultiCurrencyBalanceResponseDtoBuilder> {
  _$MultiCurrencyBalanceResponseDto? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  JsonObject? _balances;
  JsonObject? get balances => _$this._balances;
  set balances(JsonObject? balances) => _$this._balances = balances;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  MultiCurrencyBalanceResponseDtoBuilder() {
    MultiCurrencyBalanceResponseDto._defaults(this);
  }

  MultiCurrencyBalanceResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _balances = $v.balances;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiCurrencyBalanceResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiCurrencyBalanceResponseDto;
  }

  @override
  void update(void Function(MultiCurrencyBalanceResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiCurrencyBalanceResponseDto build() => _build();

  _$MultiCurrencyBalanceResponseDto _build() {
    final _$result = _$v ??
        new _$MultiCurrencyBalanceResponseDto._(
            account: BuiltValueNullFieldError.checkNotNull(
                account, r'MultiCurrencyBalanceResponseDto', 'account'),
            balances: BuiltValueNullFieldError.checkNotNull(
                balances, r'MultiCurrencyBalanceResponseDto', 'balances'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'MultiCurrencyBalanceResponseDto', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
