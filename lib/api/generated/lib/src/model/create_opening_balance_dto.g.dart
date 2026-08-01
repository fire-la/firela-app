// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_opening_balance_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOpeningBalanceDto extends CreateOpeningBalanceDto {
  @override
  final num amount;
  @override
  final String currency;
  @override
  final DateTime? date;

  factory _$CreateOpeningBalanceDto(
          [void Function(CreateOpeningBalanceDtoBuilder)? updates]) =>
      (new CreateOpeningBalanceDtoBuilder()..update(updates))._build();

  _$CreateOpeningBalanceDto._(
      {required this.amount, required this.currency, this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'CreateOpeningBalanceDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'CreateOpeningBalanceDto', 'currency');
  }

  @override
  CreateOpeningBalanceDto rebuild(
          void Function(CreateOpeningBalanceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOpeningBalanceDtoBuilder toBuilder() =>
      new CreateOpeningBalanceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOpeningBalanceDto &&
        amount == other.amount &&
        currency == other.currency &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOpeningBalanceDto')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('date', date))
        .toString();
  }
}

class CreateOpeningBalanceDtoBuilder
    implements
        Builder<CreateOpeningBalanceDto, CreateOpeningBalanceDtoBuilder> {
  _$CreateOpeningBalanceDto? _$v;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  CreateOpeningBalanceDtoBuilder() {
    CreateOpeningBalanceDto._defaults(this);
  }

  CreateOpeningBalanceDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOpeningBalanceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOpeningBalanceDto;
  }

  @override
  void update(void Function(CreateOpeningBalanceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOpeningBalanceDto build() => _build();

  _$CreateOpeningBalanceDto _build() {
    final _$result = _$v ??
        new _$CreateOpeningBalanceDto._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'CreateOpeningBalanceDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'CreateOpeningBalanceDto', 'currency'),
            date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
