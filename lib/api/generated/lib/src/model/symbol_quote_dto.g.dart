// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_quote_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SymbolQuoteDto extends SymbolQuoteDto {
  @override
  final String? symbol;
  @override
  final String? name;
  @override
  final String? exchange;
  @override
  final String? assetType;
  @override
  final String? assetClass;
  @override
  final String? assetSubClass;
  @override
  final String? currency;
  @override
  final String? price;
  @override
  final String? priceDate;
  @override
  final num? changePercent;
  @override
  final String? prevClose;
  @override
  final String? open;
  @override
  final String? high;
  @override
  final String? low;
  @override
  final String? volume;
  @override
  final String? yearHigh;
  @override
  final String? yearLow;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _exchange;
  String? get exchange => _$this._exchange;
  set exchange(String? exchange) => _$this._exchange = exchange;

  String? _assetType;
  String? get assetType => _$this._assetType;
  set assetType(String? assetType) => _$this._assetType = assetType;

  String? _assetClass;
  String? get assetClass => _$this._assetClass;
  set assetClass(String? assetClass) => _$this._assetClass = assetClass;

  String? _assetSubClass;
  String? get assetSubClass => _$this._assetSubClass;
  set assetSubClass(String? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _priceDate;
  String? get priceDate => _$this._priceDate;
  set priceDate(String? priceDate) => _$this._priceDate = priceDate;

  num? _changePercent;
  num? get changePercent => _$this._changePercent;
  set changePercent(num? changePercent) =>
      _$this._changePercent = changePercent;

  String? _prevClose;
  String? get prevClose => _$this._prevClose;
  set prevClose(String? prevClose) => _$this._prevClose = prevClose;

  String? _open;
  String? get open => _$this._open;
  set open(String? open) => _$this._open = open;

  String? _high;
  String? get high => _$this._high;
  set high(String? high) => _$this._high = high;

  String? _low;
  String? get low => _$this._low;
  set low(String? low) => _$this._low = low;

  String? _volume;
  String? get volume => _$this._volume;
  set volume(String? volume) => _$this._volume = volume;

  String? _yearHigh;
  String? get yearHigh => _$this._yearHigh;
  set yearHigh(String? yearHigh) => _$this._yearHigh = yearHigh;

  String? _yearLow;
  String? get yearLow => _$this._yearLow;
  set yearLow(String? yearLow) => _$this._yearLow = yearLow;

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
