// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForecastItemDto extends ForecastItemDto {
  @override
  final String rule;
  @override
  final String ruleId;
  @override
  final num amount;
  @override
  final String date;
  @override
  final JsonObject? icon;
  @override
  final String currency;

  factory _$ForecastItemDto([void Function(ForecastItemDtoBuilder)? updates]) =>
      (new ForecastItemDtoBuilder()..update(updates))._build();

  _$ForecastItemDto._(
      {required this.rule,
      required this.ruleId,
      required this.amount,
      required this.date,
      this.icon,
      required this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(rule, r'ForecastItemDto', 'rule');
    BuiltValueNullFieldError.checkNotNull(ruleId, r'ForecastItemDto', 'ruleId');
    BuiltValueNullFieldError.checkNotNull(amount, r'ForecastItemDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(date, r'ForecastItemDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'ForecastItemDto', 'currency');
  }

  @override
  ForecastItemDto rebuild(void Function(ForecastItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastItemDtoBuilder toBuilder() =>
      new ForecastItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForecastItemDto &&
        rule == other.rule &&
        ruleId == other.ruleId &&
        amount == other.amount &&
        date == other.date &&
        icon == other.icon &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForecastItemDto')
          ..add('rule', rule)
          ..add('ruleId', ruleId)
          ..add('amount', amount)
          ..add('date', date)
          ..add('icon', icon)
          ..add('currency', currency))
        .toString();
  }
}

class ForecastItemDtoBuilder
    implements Builder<ForecastItemDto, ForecastItemDtoBuilder> {
  _$ForecastItemDto? _$v;

  String? _rule;
  String? get rule => _$this._rule;
  set rule(String? rule) => _$this._rule = rule;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  JsonObject? _icon;
  JsonObject? get icon => _$this._icon;
  set icon(JsonObject? icon) => _$this._icon = icon;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ForecastItemDtoBuilder() {
    ForecastItemDto._defaults(this);
  }

  ForecastItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rule = $v.rule;
      _ruleId = $v.ruleId;
      _amount = $v.amount;
      _date = $v.date;
      _icon = $v.icon;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForecastItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForecastItemDto;
  }

  @override
  void update(void Function(ForecastItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForecastItemDto build() => _build();

  _$ForecastItemDto _build() {
    final _$result = _$v ??
        new _$ForecastItemDto._(
            rule: BuiltValueNullFieldError.checkNotNull(
                rule, r'ForecastItemDto', 'rule'),
            ruleId: BuiltValueNullFieldError.checkNotNull(
                ruleId, r'ForecastItemDto', 'ruleId'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'ForecastItemDto', 'amount'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'ForecastItemDto', 'date'),
            icon: icon,
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'ForecastItemDto', 'currency'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
