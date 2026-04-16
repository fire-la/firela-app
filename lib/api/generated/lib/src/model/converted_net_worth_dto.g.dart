// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converted_net_worth_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConvertedNetWorthDto extends ConvertedNetWorthDto {
  @override
  final String baseCurrency;
  @override
  final String netWorth;
  @override
  final String assets;
  @override
  final String liabilities;
  @override
  final JsonObject exchangeRates;

  factory _$ConvertedNetWorthDto(
          [void Function(ConvertedNetWorthDtoBuilder)? updates]) =>
      (new ConvertedNetWorthDtoBuilder()..update(updates))._build();

  _$ConvertedNetWorthDto._(
      {required this.baseCurrency,
      required this.netWorth,
      required this.assets,
      required this.liabilities,
      required this.exchangeRates})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        baseCurrency, r'ConvertedNetWorthDto', 'baseCurrency');
    BuiltValueNullFieldError.checkNotNull(
        netWorth, r'ConvertedNetWorthDto', 'netWorth');
    BuiltValueNullFieldError.checkNotNull(
        assets, r'ConvertedNetWorthDto', 'assets');
    BuiltValueNullFieldError.checkNotNull(
        liabilities, r'ConvertedNetWorthDto', 'liabilities');
    BuiltValueNullFieldError.checkNotNull(
        exchangeRates, r'ConvertedNetWorthDto', 'exchangeRates');
  }

  @override
  ConvertedNetWorthDto rebuild(
          void Function(ConvertedNetWorthDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConvertedNetWorthDtoBuilder toBuilder() =>
      new ConvertedNetWorthDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConvertedNetWorthDto &&
        baseCurrency == other.baseCurrency &&
        netWorth == other.netWorth &&
        assets == other.assets &&
        liabilities == other.liabilities &&
        exchangeRates == other.exchangeRates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseCurrency.hashCode);
    _$hash = $jc(_$hash, netWorth.hashCode);
    _$hash = $jc(_$hash, assets.hashCode);
    _$hash = $jc(_$hash, liabilities.hashCode);
    _$hash = $jc(_$hash, exchangeRates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConvertedNetWorthDto')
          ..add('baseCurrency', baseCurrency)
          ..add('netWorth', netWorth)
          ..add('assets', assets)
          ..add('liabilities', liabilities)
          ..add('exchangeRates', exchangeRates))
        .toString();
  }
}

class ConvertedNetWorthDtoBuilder
    implements Builder<ConvertedNetWorthDto, ConvertedNetWorthDtoBuilder> {
  _$ConvertedNetWorthDto? _$v;

  String? _baseCurrency;
  String? get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String? baseCurrency) => _$this._baseCurrency = baseCurrency;

  String? _netWorth;
  String? get netWorth => _$this._netWorth;
  set netWorth(String? netWorth) => _$this._netWorth = netWorth;

  String? _assets;
  String? get assets => _$this._assets;
  set assets(String? assets) => _$this._assets = assets;

  String? _liabilities;
  String? get liabilities => _$this._liabilities;
  set liabilities(String? liabilities) => _$this._liabilities = liabilities;

  JsonObject? _exchangeRates;
  JsonObject? get exchangeRates => _$this._exchangeRates;
  set exchangeRates(JsonObject? exchangeRates) =>
      _$this._exchangeRates = exchangeRates;

  ConvertedNetWorthDtoBuilder() {
    ConvertedNetWorthDto._defaults(this);
  }

  ConvertedNetWorthDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseCurrency = $v.baseCurrency;
      _netWorth = $v.netWorth;
      _assets = $v.assets;
      _liabilities = $v.liabilities;
      _exchangeRates = $v.exchangeRates;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConvertedNetWorthDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConvertedNetWorthDto;
  }

  @override
  void update(void Function(ConvertedNetWorthDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConvertedNetWorthDto build() => _build();

  _$ConvertedNetWorthDto _build() {
    final _$result = _$v ??
        new _$ConvertedNetWorthDto._(
            baseCurrency: BuiltValueNullFieldError.checkNotNull(
                baseCurrency, r'ConvertedNetWorthDto', 'baseCurrency'),
            netWorth: BuiltValueNullFieldError.checkNotNull(
                netWorth, r'ConvertedNetWorthDto', 'netWorth'),
            assets: BuiltValueNullFieldError.checkNotNull(
                assets, r'ConvertedNetWorthDto', 'assets'),
            liabilities: BuiltValueNullFieldError.checkNotNull(
                liabilities, r'ConvertedNetWorthDto', 'liabilities'),
            exchangeRates: BuiltValueNullFieldError.checkNotNull(
                exchangeRates, r'ConvertedNetWorthDto', 'exchangeRates'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
