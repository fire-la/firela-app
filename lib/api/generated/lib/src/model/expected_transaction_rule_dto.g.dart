// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_transaction_rule_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedTransactionRuleDto extends ExpectedTransactionRuleDto {
  @override
  final String name;
  @override
  final String frequency;
  @override
  final String currency;
  @override
  final JsonObject? icon;

  factory _$ExpectedTransactionRuleDto(
          [void Function(ExpectedTransactionRuleDtoBuilder)? updates]) =>
      (new ExpectedTransactionRuleDtoBuilder()..update(updates))._build();

  _$ExpectedTransactionRuleDto._(
      {required this.name,
      required this.frequency,
      required this.currency,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ExpectedTransactionRuleDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'ExpectedTransactionRuleDto', 'frequency');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'ExpectedTransactionRuleDto', 'currency');
  }

  @override
  ExpectedTransactionRuleDto rebuild(
          void Function(ExpectedTransactionRuleDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpectedTransactionRuleDtoBuilder toBuilder() =>
      new ExpectedTransactionRuleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpectedTransactionRuleDto &&
        name == other.name &&
        frequency == other.frequency &&
        currency == other.currency &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpectedTransactionRuleDto')
          ..add('name', name)
          ..add('frequency', frequency)
          ..add('currency', currency)
          ..add('icon', icon))
        .toString();
  }
}

class ExpectedTransactionRuleDtoBuilder
    implements
        Builder<ExpectedTransactionRuleDto, ExpectedTransactionRuleDtoBuilder> {
  _$ExpectedTransactionRuleDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  JsonObject? _icon;
  JsonObject? get icon => _$this._icon;
  set icon(JsonObject? icon) => _$this._icon = icon;

  ExpectedTransactionRuleDtoBuilder() {
    ExpectedTransactionRuleDto._defaults(this);
  }

  ExpectedTransactionRuleDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _frequency = $v.frequency;
      _currency = $v.currency;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpectedTransactionRuleDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpectedTransactionRuleDto;
  }

  @override
  void update(void Function(ExpectedTransactionRuleDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpectedTransactionRuleDto build() => _build();

  _$ExpectedTransactionRuleDto _build() {
    final _$result = _$v ??
        new _$ExpectedTransactionRuleDto._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ExpectedTransactionRuleDto', 'name'),
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'ExpectedTransactionRuleDto', 'frequency'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'ExpectedTransactionRuleDto', 'currency'),
            icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
