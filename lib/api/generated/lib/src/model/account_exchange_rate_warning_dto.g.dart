// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_exchange_rate_warning_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountExchangeRateWarningDto extends AccountExchangeRateWarningDto {
  @override
  final String type;
  @override
  final String currency;
  @override
  final BuiltList<String> accounts;
  @override
  final String totalAmount;

  factory _$AccountExchangeRateWarningDto(
          [void Function(AccountExchangeRateWarningDtoBuilder)? updates]) =>
      (new AccountExchangeRateWarningDtoBuilder()..update(updates))._build();

  _$AccountExchangeRateWarningDto._(
      {required this.type,
      required this.currency,
      required this.accounts,
      required this.totalAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'AccountExchangeRateWarningDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'AccountExchangeRateWarningDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        accounts, r'AccountExchangeRateWarningDto', 'accounts');
    BuiltValueNullFieldError.checkNotNull(
        totalAmount, r'AccountExchangeRateWarningDto', 'totalAmount');
  }

  @override
  AccountExchangeRateWarningDto rebuild(
          void Function(AccountExchangeRateWarningDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountExchangeRateWarningDtoBuilder toBuilder() =>
      new AccountExchangeRateWarningDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountExchangeRateWarningDto &&
        type == other.type &&
        currency == other.currency &&
        accounts == other.accounts &&
        totalAmount == other.totalAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountExchangeRateWarningDto')
          ..add('type', type)
          ..add('currency', currency)
          ..add('accounts', accounts)
          ..add('totalAmount', totalAmount))
        .toString();
  }
}

class AccountExchangeRateWarningDtoBuilder
    implements
        Builder<AccountExchangeRateWarningDto,
            AccountExchangeRateWarningDtoBuilder> {
  _$AccountExchangeRateWarningDto? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<String>? _accounts;
  ListBuilder<String> get accounts =>
      _$this._accounts ??= new ListBuilder<String>();
  set accounts(ListBuilder<String>? accounts) => _$this._accounts = accounts;

  String? _totalAmount;
  String? get totalAmount => _$this._totalAmount;
  set totalAmount(String? totalAmount) => _$this._totalAmount = totalAmount;

  AccountExchangeRateWarningDtoBuilder() {
    AccountExchangeRateWarningDto._defaults(this);
  }

  AccountExchangeRateWarningDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _currency = $v.currency;
      _accounts = $v.accounts.toBuilder();
      _totalAmount = $v.totalAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountExchangeRateWarningDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountExchangeRateWarningDto;
  }

  @override
  void update(void Function(AccountExchangeRateWarningDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountExchangeRateWarningDto build() => _build();

  _$AccountExchangeRateWarningDto _build() {
    _$AccountExchangeRateWarningDto _$result;
    try {
      _$result = _$v ??
          new _$AccountExchangeRateWarningDto._(
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'AccountExchangeRateWarningDto', 'type'),
              currency: BuiltValueNullFieldError.checkNotNull(
                  currency, r'AccountExchangeRateWarningDto', 'currency'),
              accounts: accounts.build(),
              totalAmount: BuiltValueNullFieldError.checkNotNull(totalAmount,
                  r'AccountExchangeRateWarningDto', 'totalAmount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        accounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountExchangeRateWarningDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
