// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_quote_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SymbolQuoteDto extends SymbolQuoteDto {
  @override
  final String? symbol;
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
  @override
  final JsonObject? price;
  @override
  final JsonObject? priceDate;
  @override
  final JsonObject? changePercent;
  @override
  final JsonObject? prevClose;
  @override
  final JsonObject? open;
  @override
  final JsonObject? high;
  @override
  final JsonObject? low;
  @override
  final JsonObject? volume;
  @override
  final JsonObject? yearHigh;
  @override
  final JsonObject? yearLow;

  factory _$SymbolQuoteDto([void Function(SymbolQuoteDtoBuilder)? updates]) =>
      (new SymbolQuoteDtoBuilder()..update(updates))._build();

  _$SymbolQuoteDto._(
      {this.symbol,
      this.name,
      this.exchange,
      this.assetType,
      this.assetClass,
      this.assetSubClass,
      this.currency,
      this.price,
      this.priceDate,
      this.changePercent,
      this.prevClose,
      this.open,
      this.high,
      this.low,
      this.volume,
      this.yearHigh,
      this.yearLow})
      : super._();

  @override
  SymbolQuoteDto rebuild(void Function(SymbolQuoteDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymbolQuoteDtoBuilder toBuilder() =>
      new SymbolQuoteDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymbolQuoteDto &&
        symbol == other.symbol &&
        name == other.name &&
        exchange == other.exchange &&
        assetType == other.assetType &&
        assetClass == other.assetClass &&
        assetSubClass == other.assetSubClass &&
        currency == other.currency &&
        price == other.price &&
        priceDate == other.priceDate &&
        changePercent == other.changePercent &&
        prevClose == other.prevClose &&
        open == other.open &&
        high == other.high &&
        low == other.low &&
        volume == other.volume &&
        yearHigh == other.yearHigh &&
        yearLow == other.yearLow;
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
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, priceDate.hashCode);
    _$hash = $jc(_$hash, changePercent.hashCode);
    _$hash = $jc(_$hash, prevClose.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, high.hashCode);
    _$hash = $jc(_$hash, low.hashCode);
    _$hash = $jc(_$hash, volume.hashCode);
    _$hash = $jc(_$hash, yearHigh.hashCode);
    _$hash = $jc(_$hash, yearLow.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SymbolQuoteDto')
          ..add('symbol', symbol)
          ..add('name', name)
          ..add('exchange', exchange)
          ..add('assetType', assetType)
          ..add('assetClass', assetClass)
          ..add('assetSubClass', assetSubClass)
          ..add('currency', currency)
          ..add('price', price)
          ..add('priceDate', priceDate)
          ..add('changePercent', changePercent)
          ..add('prevClose', prevClose)
          ..add('open', open)
          ..add('high', high)
          ..add('low', low)
          ..add('volume', volume)
          ..add('yearHigh', yearHigh)
          ..add('yearLow', yearLow))
        .toString();
  }
}

class SymbolQuoteDtoBuilder
    implements Builder<SymbolQuoteDto, SymbolQuoteDtoBuilder> {
  _$SymbolQuoteDto? _$v;

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

  JsonObject? _price;
  JsonObject? get price => _$this._price;
  set price(JsonObject? price) => _$this._price = price;

  JsonObject? _priceDate;
  JsonObject? get priceDate => _$this._priceDate;
  set priceDate(JsonObject? priceDate) => _$this._priceDate = priceDate;

  JsonObject? _changePercent;
  JsonObject? get changePercent => _$this._changePercent;
  set changePercent(JsonObject? changePercent) =>
      _$this._changePercent = changePercent;

  JsonObject? _prevClose;
  JsonObject? get prevClose => _$this._prevClose;
  set prevClose(JsonObject? prevClose) => _$this._prevClose = prevClose;

  JsonObject? _open;
  JsonObject? get open => _$this._open;
  set open(JsonObject? open) => _$this._open = open;

  JsonObject? _high;
  JsonObject? get high => _$this._high;
  set high(JsonObject? high) => _$this._high = high;

  JsonObject? _low;
  JsonObject? get low => _$this._low;
  set low(JsonObject? low) => _$this._low = low;

  JsonObject? _volume;
  JsonObject? get volume => _$this._volume;
  set volume(JsonObject? volume) => _$this._volume = volume;

  JsonObject? _yearHigh;
  JsonObject? get yearHigh => _$this._yearHigh;
  set yearHigh(JsonObject? yearHigh) => _$this._yearHigh = yearHigh;

  JsonObject? _yearLow;
  JsonObject? get yearLow => _$this._yearLow;
  set yearLow(JsonObject? yearLow) => _$this._yearLow = yearLow;

  SymbolQuoteDtoBuilder() {
    SymbolQuoteDto._defaults(this);
  }

  SymbolQuoteDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _symbol = $v.symbol;
      _name = $v.name;
      _exchange = $v.exchange;
      _assetType = $v.assetType;
      _assetClass = $v.assetClass;
      _assetSubClass = $v.assetSubClass;
      _currency = $v.currency;
      _price = $v.price;
      _priceDate = $v.priceDate;
      _changePercent = $v.changePercent;
      _prevClose = $v.prevClose;
      _open = $v.open;
      _high = $v.high;
      _low = $v.low;
      _volume = $v.volume;
      _yearHigh = $v.yearHigh;
      _yearLow = $v.yearLow;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SymbolQuoteDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SymbolQuoteDto;
  }

  @override
  void update(void Function(SymbolQuoteDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SymbolQuoteDto build() => _build();

  _$SymbolQuoteDto _build() {
    final _$result = _$v ??
        new _$SymbolQuoteDto._(
            symbol: symbol,
            name: name,
            exchange: exchange,
            assetType: assetType,
            assetClass: assetClass,
            assetSubClass: assetSubClass,
            currency: currency,
            price: price,
            priceDate: priceDate,
            changePercent: changePercent,
            prevClose: prevClose,
            open: open,
            high: high,
            low: low,
            volume: volume,
            yearHigh: yearHigh,
            yearLow: yearLow);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
