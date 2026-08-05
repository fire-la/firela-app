// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_search_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SymbolSearchResultDto extends SymbolSearchResultDto {
  @override
  final String symbol;
  @override
  final JsonObject? name;
  @override
  final JsonObject? exchange;
  @override
  final JsonObject? assetType;
  @override
  final JsonObject? assetClass;
  @override
  final JsonObject? assetSubClass;
  @override
  final JsonObject? currency;

  factory _$SymbolSearchResultDto(
          [void Function(SymbolSearchResultDtoBuilder)? updates]) =>
      (new SymbolSearchResultDtoBuilder()..update(updates))._build();

  _$SymbolSearchResultDto._(
      {required this.symbol,
      this.name,
      this.exchange,
      this.assetType,
      this.assetClass,
      this.assetSubClass,
      this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'SymbolSearchResultDto', 'symbol');
  }

  @override
  SymbolSearchResultDto rebuild(
          void Function(SymbolSearchResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymbolSearchResultDtoBuilder toBuilder() =>
      new SymbolSearchResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymbolSearchResultDto &&
        symbol == other.symbol &&
        name == other.name &&
        exchange == other.exchange &&
        assetType == other.assetType &&
        assetClass == other.assetClass &&
        assetSubClass == other.assetSubClass &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, exchange.hashCode);
    _$hash = $jc(_$hash, assetType.hashCode);
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, assetSubClass.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SymbolSearchResultDto')
          ..add('symbol', symbol)
          ..add('name', name)
          ..add('exchange', exchange)
          ..add('assetType', assetType)
          ..add('assetClass', assetClass)
          ..add('assetSubClass', assetSubClass)
          ..add('currency', currency))
        .toString();
  }
}

class SymbolSearchResultDtoBuilder
    implements Builder<SymbolSearchResultDto, SymbolSearchResultDtoBuilder> {
  _$SymbolSearchResultDto? _$v;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  JsonObject? _name;
  JsonObject? get name => _$this._name;
  set name(JsonObject? name) => _$this._name = name;

  JsonObject? _exchange;
  JsonObject? get exchange => _$this._exchange;
  set exchange(JsonObject? exchange) => _$this._exchange = exchange;

  JsonObject? _assetType;
  JsonObject? get assetType => _$this._assetType;
  set assetType(JsonObject? assetType) => _$this._assetType = assetType;

  JsonObject? _assetClass;
  JsonObject? get assetClass => _$this._assetClass;
  set assetClass(JsonObject? assetClass) => _$this._assetClass = assetClass;

  JsonObject? _assetSubClass;
  JsonObject? get assetSubClass => _$this._assetSubClass;
  set assetSubClass(JsonObject? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  JsonObject? _currency;
  JsonObject? get currency => _$this._currency;
  set currency(JsonObject? currency) => _$this._currency = currency;

  SymbolSearchResultDtoBuilder() {
    SymbolSearchResultDto._defaults(this);
  }

  SymbolSearchResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _symbol = $v.symbol;
      _name = $v.name;
      _exchange = $v.exchange;
      _assetType = $v.assetType;
      _assetClass = $v.assetClass;
      _assetSubClass = $v.assetSubClass;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SymbolSearchResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SymbolSearchResultDto;
  }

  @override
  void update(void Function(SymbolSearchResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SymbolSearchResultDto build() => _build();

  _$SymbolSearchResultDto _build() {
    final _$result = _$v ??
        new _$SymbolSearchResultDto._(
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, r'SymbolSearchResultDto', 'symbol'),
            name: name,
            exchange: exchange,
            assetType: assetType,
            assetClass: assetClass,
            assetSubClass: assetSubClass,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
