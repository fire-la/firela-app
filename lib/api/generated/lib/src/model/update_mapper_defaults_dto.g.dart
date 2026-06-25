// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_mapper_defaults_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateMapperDefaultsDto extends UpdateMapperDefaultsDto {
  @override
  final String? sourceAccount;
  @override
  final String? currency;
  @override
  final String? expenseAccount;
  @override
  final String? incomeAccount;
  @override
  final JsonObject? methodAccountMapping;

  factory _$UpdateMapperDefaultsDto(
          [void Function(UpdateMapperDefaultsDtoBuilder)? updates]) =>
      (new UpdateMapperDefaultsDtoBuilder()..update(updates))._build();

  _$UpdateMapperDefaultsDto._(
      {this.sourceAccount,
      this.currency,
      this.expenseAccount,
      this.incomeAccount,
      this.methodAccountMapping})
      : super._();

  @override
  UpdateMapperDefaultsDto rebuild(
          void Function(UpdateMapperDefaultsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateMapperDefaultsDtoBuilder toBuilder() =>
      new UpdateMapperDefaultsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateMapperDefaultsDto &&
        sourceAccount == other.sourceAccount &&
        currency == other.currency &&
        expenseAccount == other.expenseAccount &&
        incomeAccount == other.incomeAccount &&
        methodAccountMapping == other.methodAccountMapping;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceAccount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, expenseAccount.hashCode);
    _$hash = $jc(_$hash, incomeAccount.hashCode);
    _$hash = $jc(_$hash, methodAccountMapping.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateMapperDefaultsDto')
          ..add('sourceAccount', sourceAccount)
          ..add('currency', currency)
          ..add('expenseAccount', expenseAccount)
          ..add('incomeAccount', incomeAccount)
          ..add('methodAccountMapping', methodAccountMapping))
        .toString();
  }
}

class UpdateMapperDefaultsDtoBuilder
    implements
        Builder<UpdateMapperDefaultsDto, UpdateMapperDefaultsDtoBuilder> {
  _$UpdateMapperDefaultsDto? _$v;

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

  JsonObject? _methodAccountMapping;
  JsonObject? get methodAccountMapping => _$this._methodAccountMapping;
  set methodAccountMapping(JsonObject? methodAccountMapping) =>
      _$this._methodAccountMapping = methodAccountMapping;

  UpdateMapperDefaultsDtoBuilder() {
    UpdateMapperDefaultsDto._defaults(this);
  }

  UpdateMapperDefaultsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceAccount = $v.sourceAccount;
      _currency = $v.currency;
      _expenseAccount = $v.expenseAccount;
      _incomeAccount = $v.incomeAccount;
      _methodAccountMapping = $v.methodAccountMapping;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateMapperDefaultsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateMapperDefaultsDto;
  }

  @override
  void update(void Function(UpdateMapperDefaultsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateMapperDefaultsDto build() => _build();

  _$UpdateMapperDefaultsDto _build() {
    final _$result = _$v ??
        new _$UpdateMapperDefaultsDto._(
            sourceAccount: sourceAccount,
            currency: currency,
            expenseAccount: expenseAccount,
            incomeAccount: incomeAccount,
            methodAccountMapping: methodAccountMapping);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
