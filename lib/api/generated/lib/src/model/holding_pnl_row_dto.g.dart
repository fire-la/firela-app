// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnum_equity =
    const HoldingPnlRowDtoChartTokenEnum._('equity');
const HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnum_fund =
    const HoldingPnlRowDtoChartTokenEnum._('fund');
const HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnum_bond =
    const HoldingPnlRowDtoChartTokenEnum._('bond');
const HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnum_cash =
    const HoldingPnlRowDtoChartTokenEnum._('cash');
const HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnum_other =
    const HoldingPnlRowDtoChartTokenEnum._('other');

HoldingPnlRowDtoChartTokenEnum _$holdingPnlRowDtoChartTokenEnumValueOf(
    String name) {
  switch (name) {
    case 'equity':
      return _$holdingPnlRowDtoChartTokenEnum_equity;
    case 'fund':
      return _$holdingPnlRowDtoChartTokenEnum_fund;
    case 'bond':
      return _$holdingPnlRowDtoChartTokenEnum_bond;
    case 'cash':
      return _$holdingPnlRowDtoChartTokenEnum_cash;
    case 'other':
      return _$holdingPnlRowDtoChartTokenEnum_other;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HoldingPnlRowDtoChartTokenEnum>
    _$holdingPnlRowDtoChartTokenEnumValues = new BuiltSet<
        HoldingPnlRowDtoChartTokenEnum>(const <HoldingPnlRowDtoChartTokenEnum>[
  _$holdingPnlRowDtoChartTokenEnum_equity,
  _$holdingPnlRowDtoChartTokenEnum_fund,
  _$holdingPnlRowDtoChartTokenEnum_bond,
  _$holdingPnlRowDtoChartTokenEnum_cash,
  _$holdingPnlRowDtoChartTokenEnum_other,
]);

Serializer<HoldingPnlRowDtoChartTokenEnum>
    _$holdingPnlRowDtoChartTokenEnumSerializer =
    new _$HoldingPnlRowDtoChartTokenEnumSerializer();

class _$HoldingPnlRowDtoChartTokenEnumSerializer
    implements PrimitiveSerializer<HoldingPnlRowDtoChartTokenEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'equity': 'equity',
    'fund': 'fund',
    'bond': 'bond',
    'cash': 'cash',
    'other': 'other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'equity': 'equity',
    'fund': 'fund',
    'bond': 'bond',
    'cash': 'cash',
    'other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[HoldingPnlRowDtoChartTokenEnum];
  @override
  final String wireName = 'HoldingPnlRowDtoChartTokenEnum';

  @override
  Object serialize(
          Serializers serializers, HoldingPnlRowDtoChartTokenEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldingPnlRowDtoChartTokenEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldingPnlRowDtoChartTokenEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldingPnlRowDto extends HoldingPnlRowDto {
  @override
  final String accountId;
  @override
  final String accountPath;
  @override
  final JsonObject? accountCcy;
  @override
  final JsonObject? brokerType;
  @override
  final String symbol;
  @override
  final HoldingPnlRowDtoChartTokenEnum chartToken;
  @override
  final String assetClass;
  @override
  final JsonObject? assetSubClass;
  @override
  final String units;
  @override
  final HoldingPnlRowDtoAverageCostPerUnit? averageCostPerUnit;
  @override
  final HoldingPnlRowDtoCostBasis? costBasis;
  @override
  final HoldingPnlRowDtoMarketValue? marketValue;
  @override
  final HoldingPnlRowDtoCurrentPrice? currentPrice;
  @override
  final JsonObject? unrealizedPnlBase;
  @override
  final JsonObject? unrealizedPnlPct;
  @override
  final HoldingPnlRowDtoCostFxRate? costFxRate;
  @override
  final HoldingPnlRowDtoMarketFxRate? marketFxRate;
  @override
  final JsonObject? pctOfInvestedAssets;
  @override
  final HoldingPnlRowDtoRealizedPnl? realizedPnl;

  factory _$HoldingPnlRowDto(
          [void Function(HoldingPnlRowDtoBuilder)? updates]) =>
      (new HoldingPnlRowDtoBuilder()..update(updates))._build();

  _$HoldingPnlRowDto._(
      {required this.accountId,
      required this.accountPath,
      this.accountCcy,
      this.brokerType,
      required this.symbol,
      required this.chartToken,
      required this.assetClass,
      this.assetSubClass,
      required this.units,
      this.averageCostPerUnit,
      this.costBasis,
      this.marketValue,
      this.currentPrice,
      this.unrealizedPnlBase,
      this.unrealizedPnlPct,
      this.costFxRate,
      this.marketFxRate,
      this.pctOfInvestedAssets,
      this.realizedPnl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'HoldingPnlRowDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        accountPath, r'HoldingPnlRowDto', 'accountPath');
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'HoldingPnlRowDto', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        chartToken, r'HoldingPnlRowDto', 'chartToken');
    BuiltValueNullFieldError.checkNotNull(
        assetClass, r'HoldingPnlRowDto', 'assetClass');
    BuiltValueNullFieldError.checkNotNull(units, r'HoldingPnlRowDto', 'units');
  }

  @override
  HoldingPnlRowDto rebuild(void Function(HoldingPnlRowDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoBuilder toBuilder() =>
      new HoldingPnlRowDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDto &&
        accountId == other.accountId &&
        accountPath == other.accountPath &&
        accountCcy == other.accountCcy &&
        brokerType == other.brokerType &&
        symbol == other.symbol &&
        chartToken == other.chartToken &&
        assetClass == other.assetClass &&
        assetSubClass == other.assetSubClass &&
        units == other.units &&
        averageCostPerUnit == other.averageCostPerUnit &&
        costBasis == other.costBasis &&
        marketValue == other.marketValue &&
        currentPrice == other.currentPrice &&
        unrealizedPnlBase == other.unrealizedPnlBase &&
        unrealizedPnlPct == other.unrealizedPnlPct &&
        costFxRate == other.costFxRate &&
        marketFxRate == other.marketFxRate &&
        pctOfInvestedAssets == other.pctOfInvestedAssets &&
        realizedPnl == other.realizedPnl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountPath.hashCode);
    _$hash = $jc(_$hash, accountCcy.hashCode);
    _$hash = $jc(_$hash, brokerType.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, chartToken.hashCode);
    _$hash = $jc(_$hash, assetClass.hashCode);
    _$hash = $jc(_$hash, assetSubClass.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, averageCostPerUnit.hashCode);
    _$hash = $jc(_$hash, costBasis.hashCode);
    _$hash = $jc(_$hash, marketValue.hashCode);
    _$hash = $jc(_$hash, currentPrice.hashCode);
    _$hash = $jc(_$hash, unrealizedPnlBase.hashCode);
    _$hash = $jc(_$hash, unrealizedPnlPct.hashCode);
    _$hash = $jc(_$hash, costFxRate.hashCode);
    _$hash = $jc(_$hash, marketFxRate.hashCode);
    _$hash = $jc(_$hash, pctOfInvestedAssets.hashCode);
    _$hash = $jc(_$hash, realizedPnl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDto')
          ..add('accountId', accountId)
          ..add('accountPath', accountPath)
          ..add('accountCcy', accountCcy)
          ..add('brokerType', brokerType)
          ..add('symbol', symbol)
          ..add('chartToken', chartToken)
          ..add('assetClass', assetClass)
          ..add('assetSubClass', assetSubClass)
          ..add('units', units)
          ..add('averageCostPerUnit', averageCostPerUnit)
          ..add('costBasis', costBasis)
          ..add('marketValue', marketValue)
          ..add('currentPrice', currentPrice)
          ..add('unrealizedPnlBase', unrealizedPnlBase)
          ..add('unrealizedPnlPct', unrealizedPnlPct)
          ..add('costFxRate', costFxRate)
          ..add('marketFxRate', marketFxRate)
          ..add('pctOfInvestedAssets', pctOfInvestedAssets)
          ..add('realizedPnl', realizedPnl))
        .toString();
  }
}

class HoldingPnlRowDtoBuilder
    implements Builder<HoldingPnlRowDto, HoldingPnlRowDtoBuilder> {
  _$HoldingPnlRowDto? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _accountPath;
  String? get accountPath => _$this._accountPath;
  set accountPath(String? accountPath) => _$this._accountPath = accountPath;

  JsonObject? _accountCcy;
  JsonObject? get accountCcy => _$this._accountCcy;
  set accountCcy(JsonObject? accountCcy) => _$this._accountCcy = accountCcy;

  JsonObject? _brokerType;
  JsonObject? get brokerType => _$this._brokerType;
  set brokerType(JsonObject? brokerType) => _$this._brokerType = brokerType;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  HoldingPnlRowDtoChartTokenEnum? _chartToken;
  HoldingPnlRowDtoChartTokenEnum? get chartToken => _$this._chartToken;
  set chartToken(HoldingPnlRowDtoChartTokenEnum? chartToken) =>
      _$this._chartToken = chartToken;

  String? _assetClass;
  String? get assetClass => _$this._assetClass;
  set assetClass(String? assetClass) => _$this._assetClass = assetClass;

  JsonObject? _assetSubClass;
  JsonObject? get assetSubClass => _$this._assetSubClass;
  set assetSubClass(JsonObject? assetSubClass) =>
      _$this._assetSubClass = assetSubClass;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  HoldingPnlRowDtoAverageCostPerUnitBuilder? _averageCostPerUnit;
  HoldingPnlRowDtoAverageCostPerUnitBuilder get averageCostPerUnit =>
      _$this._averageCostPerUnit ??=
          new HoldingPnlRowDtoAverageCostPerUnitBuilder();
  set averageCostPerUnit(
          HoldingPnlRowDtoAverageCostPerUnitBuilder? averageCostPerUnit) =>
      _$this._averageCostPerUnit = averageCostPerUnit;

  HoldingPnlRowDtoCostBasisBuilder? _costBasis;
  HoldingPnlRowDtoCostBasisBuilder get costBasis =>
      _$this._costBasis ??= new HoldingPnlRowDtoCostBasisBuilder();
  set costBasis(HoldingPnlRowDtoCostBasisBuilder? costBasis) =>
      _$this._costBasis = costBasis;

  HoldingPnlRowDtoMarketValueBuilder? _marketValue;
  HoldingPnlRowDtoMarketValueBuilder get marketValue =>
      _$this._marketValue ??= new HoldingPnlRowDtoMarketValueBuilder();
  set marketValue(HoldingPnlRowDtoMarketValueBuilder? marketValue) =>
      _$this._marketValue = marketValue;

  HoldingPnlRowDtoCurrentPriceBuilder? _currentPrice;
  HoldingPnlRowDtoCurrentPriceBuilder get currentPrice =>
      _$this._currentPrice ??= new HoldingPnlRowDtoCurrentPriceBuilder();
  set currentPrice(HoldingPnlRowDtoCurrentPriceBuilder? currentPrice) =>
      _$this._currentPrice = currentPrice;

  JsonObject? _unrealizedPnlBase;
  JsonObject? get unrealizedPnlBase => _$this._unrealizedPnlBase;
  set unrealizedPnlBase(JsonObject? unrealizedPnlBase) =>
      _$this._unrealizedPnlBase = unrealizedPnlBase;

  JsonObject? _unrealizedPnlPct;
  JsonObject? get unrealizedPnlPct => _$this._unrealizedPnlPct;
  set unrealizedPnlPct(JsonObject? unrealizedPnlPct) =>
      _$this._unrealizedPnlPct = unrealizedPnlPct;

  HoldingPnlRowDtoCostFxRateBuilder? _costFxRate;
  HoldingPnlRowDtoCostFxRateBuilder get costFxRate =>
      _$this._costFxRate ??= new HoldingPnlRowDtoCostFxRateBuilder();
  set costFxRate(HoldingPnlRowDtoCostFxRateBuilder? costFxRate) =>
      _$this._costFxRate = costFxRate;

  HoldingPnlRowDtoMarketFxRateBuilder? _marketFxRate;
  HoldingPnlRowDtoMarketFxRateBuilder get marketFxRate =>
      _$this._marketFxRate ??= new HoldingPnlRowDtoMarketFxRateBuilder();
  set marketFxRate(HoldingPnlRowDtoMarketFxRateBuilder? marketFxRate) =>
      _$this._marketFxRate = marketFxRate;

  JsonObject? _pctOfInvestedAssets;
  JsonObject? get pctOfInvestedAssets => _$this._pctOfInvestedAssets;
  set pctOfInvestedAssets(JsonObject? pctOfInvestedAssets) =>
      _$this._pctOfInvestedAssets = pctOfInvestedAssets;

  HoldingPnlRowDtoRealizedPnlBuilder? _realizedPnl;
  HoldingPnlRowDtoRealizedPnlBuilder get realizedPnl =>
      _$this._realizedPnl ??= new HoldingPnlRowDtoRealizedPnlBuilder();
  set realizedPnl(HoldingPnlRowDtoRealizedPnlBuilder? realizedPnl) =>
      _$this._realizedPnl = realizedPnl;

  HoldingPnlRowDtoBuilder() {
    HoldingPnlRowDto._defaults(this);
  }

  HoldingPnlRowDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _accountPath = $v.accountPath;
      _accountCcy = $v.accountCcy;
      _brokerType = $v.brokerType;
      _symbol = $v.symbol;
      _chartToken = $v.chartToken;
      _assetClass = $v.assetClass;
      _assetSubClass = $v.assetSubClass;
      _units = $v.units;
      _averageCostPerUnit = $v.averageCostPerUnit?.toBuilder();
      _costBasis = $v.costBasis?.toBuilder();
      _marketValue = $v.marketValue?.toBuilder();
      _currentPrice = $v.currentPrice?.toBuilder();
      _unrealizedPnlBase = $v.unrealizedPnlBase;
      _unrealizedPnlPct = $v.unrealizedPnlPct;
      _costFxRate = $v.costFxRate?.toBuilder();
      _marketFxRate = $v.marketFxRate?.toBuilder();
      _pctOfInvestedAssets = $v.pctOfInvestedAssets;
      _realizedPnl = $v.realizedPnl?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingPnlRowDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDto;
  }

  @override
  void update(void Function(HoldingPnlRowDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDto build() => _build();

  _$HoldingPnlRowDto _build() {
    _$HoldingPnlRowDto _$result;
    try {
      _$result = _$v ??
          new _$HoldingPnlRowDto._(
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, r'HoldingPnlRowDto', 'accountId'),
              accountPath: BuiltValueNullFieldError.checkNotNull(
                  accountPath, r'HoldingPnlRowDto', 'accountPath'),
              accountCcy: accountCcy,
              brokerType: brokerType,
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, r'HoldingPnlRowDto', 'symbol'),
              chartToken: BuiltValueNullFieldError.checkNotNull(
                  chartToken, r'HoldingPnlRowDto', 'chartToken'),
              assetClass: BuiltValueNullFieldError.checkNotNull(
                  assetClass, r'HoldingPnlRowDto', 'assetClass'),
              assetSubClass: assetSubClass,
              units: BuiltValueNullFieldError.checkNotNull(
                  units, r'HoldingPnlRowDto', 'units'),
              averageCostPerUnit: _averageCostPerUnit?.build(),
              costBasis: _costBasis?.build(),
              marketValue: _marketValue?.build(),
              currentPrice: _currentPrice?.build(),
              unrealizedPnlBase: unrealizedPnlBase,
              unrealizedPnlPct: unrealizedPnlPct,
              costFxRate: _costFxRate?.build(),
              marketFxRate: _marketFxRate?.build(),
              pctOfInvestedAssets: pctOfInvestedAssets,
              realizedPnl: _realizedPnl?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'averageCostPerUnit';
        _averageCostPerUnit?.build();
        _$failedField = 'costBasis';
        _costBasis?.build();
        _$failedField = 'marketValue';
        _marketValue?.build();
        _$failedField = 'currentPrice';
        _currentPrice?.build();

        _$failedField = 'costFxRate';
        _costFxRate?.build();
        _$failedField = 'marketFxRate';
        _marketFxRate?.build();

        _$failedField = 'realizedPnl';
        _realizedPnl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HoldingPnlRowDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
