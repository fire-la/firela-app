// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapper_defaults_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MapperDefaultsDto extends MapperDefaultsDto {
  @override
  final String sourceAccount;
  @override
  final String currency;
  @override
  final String? expenseAccount;
  @override
  final String? incomeAccount;
  @override
  final JsonObject? accountMapping;
  @override
  final bool? useCnh;
  @override
  final JsonObject? methodAccountMapping;

  factory _$MapperDefaultsDto(
          [void Function(MapperDefaultsDtoBuilder)? updates]) =>
      (new MapperDefaultsDtoBuilder()..update(updates))._build();

  _$MapperDefaultsDto._(
      {required this.sourceAccount,
      required this.currency,
      this.expenseAccount,
      this.incomeAccount,
      this.accountMapping,
      this.useCnh,
      this.methodAccountMapping})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sourceAccount, r'MapperDefaultsDto', 'sourceAccount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'MapperDefaultsDto', 'currency');
  }

  @override
  MapperDefaultsDto rebuild(void Function(MapperDefaultsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapperDefaultsDtoBuilder toBuilder() =>
      new MapperDefaultsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapperDefaultsDto &&
        sourceAccount == other.sourceAccount &&
        currency == other.currency &&
        expenseAccount == other.expenseAccount &&
        incomeAccount == other.incomeAccount &&
        accountMapping == other.accountMapping &&
        useCnh == other.useCnh &&
        methodAccountMapping == other.methodAccountMapping;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAccount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, expenseAccount.hashCode);
    _$hash = $jc(_$hash, incomeAccount.hashCode);
    _$hash = $jc(_$hash, accountMapping.hashCode);
    _$hash = $jc(_$hash, useCnh.hashCode);
    _$hash = $jc(_$hash, methodAccountMapping.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapperDefaultsDto')
          ..add('sourceAccount', sourceAccount)
          ..add('currency', currency)
          ..add('expenseAccount', expenseAccount)
          ..add('incomeAccount', incomeAccount)
          ..add('accountMapping', accountMapping)
          ..add('useCnh', useCnh)
          ..add('methodAccountMapping', methodAccountMapping))
        .toString();
  }
}

class MapperDefaultsDtoBuilder
    implements Builder<MapperDefaultsDto, MapperDefaultsDtoBuilder> {
  _$MapperDefaultsDto? _$v;

  String? _sourceAccount;
  String? get sourceAccount => _$this._sourceAccount;
  set sourceAccount(String? sourceAccount) =>
      _$this._sourceAccount = sourceAccount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _expenseAccount;
  String? get expenseAccount => _$this._expenseAccount;
  set expenseAccount(String? expenseAccount) =>
      _$this._expenseAccount = expenseAccount;

  String? _incomeAccount;
  String? get incomeAccount => _$this._incomeAccount;
  set incomeAccount(String? incomeAccount) =>
      _$this._incomeAccount = incomeAccount;

  JsonObject? _accountMapping;
  JsonObject? get accountMapping => _$this._accountMapping;
  set accountMapping(JsonObject? accountMapping) =>
      _$this._accountMapping = accountMapping;

  bool? _useCnh;
  bool? get useCnh => _$this._useCnh;
  set useCnh(bool? useCnh) => _$this._useCnh = useCnh;

  JsonObject? _methodAccountMapping;
  JsonObject? get methodAccountMapping => _$this._methodAccountMapping;
  set methodAccountMapping(JsonObject? methodAccountMapping) =>
      _$this._methodAccountMapping = methodAccountMapping;

  MapperDefaultsDtoBuilder() {
    MapperDefaultsDto._defaults(this);
  }

  MapperDefaultsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAccount = $v.sourceAccount;
      _currency = $v.currency;
      _expenseAccount = $v.expenseAccount;
      _incomeAccount = $v.incomeAccount;
      _accountMapping = $v.accountMapping;
      _useCnh = $v.useCnh;
      _methodAccountMapping = $v.methodAccountMapping;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapperDefaultsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapperDefaultsDto;
  }

  @override
  void update(void Function(MapperDefaultsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapperDefaultsDto build() => _build();

  _$MapperDefaultsDto _build() {
    final _$result = _$v ??
        new _$MapperDefaultsDto._(
            sourceAccount: BuiltValueNullFieldError.checkNotNull(
                sourceAccount, r'MapperDefaultsDto', 'sourceAccount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'MapperDefaultsDto', 'currency'),
            expenseAccount: expenseAccount,
            incomeAccount: incomeAccount,
            accountMapping: accountMapping,
            useCnh: useCnh,
            methodAccountMapping: methodAccountMapping);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
