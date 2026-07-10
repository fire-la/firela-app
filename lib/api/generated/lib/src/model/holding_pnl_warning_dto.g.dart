// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_warning_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_MISSING_COST_FX_RATE =
    const HoldingPnlWarningDtoTypeEnum._('MISSING_COST_FX_RATE');
const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_MISSING_MARKET_FX_RATE =
    const HoldingPnlWarningDtoTypeEnum._('MISSING_MARKET_FX_RATE');
const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_MISSING_SALE_PRICE =
    const HoldingPnlWarningDtoTypeEnum._('MISSING_SALE_PRICE');
const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_MISSING_REALIZED_FX_RATE =
    const HoldingPnlWarningDtoTypeEnum._('MISSING_REALIZED_FX_RATE');
const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_OVERSOLD_LOTS =
    const HoldingPnlWarningDtoTypeEnum._('OVERSOLD_LOTS');
const HoldingPnlWarningDtoTypeEnum _$holdingPnlWarningDtoTypeEnum_NO_PRICE =
    const HoldingPnlWarningDtoTypeEnum._('NO_PRICE');
const HoldingPnlWarningDtoTypeEnum
    _$holdingPnlWarningDtoTypeEnum_MIXED_COST_CURRENCY =
    const HoldingPnlWarningDtoTypeEnum._('MIXED_COST_CURRENCY');

HoldingPnlWarningDtoTypeEnum _$holdingPnlWarningDtoTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'MISSING_COST_FX_RATE':
      return _$holdingPnlWarningDtoTypeEnum_MISSING_COST_FX_RATE;
    case 'MISSING_MARKET_FX_RATE':
      return _$holdingPnlWarningDtoTypeEnum_MISSING_MARKET_FX_RATE;
    case 'MISSING_SALE_PRICE':
      return _$holdingPnlWarningDtoTypeEnum_MISSING_SALE_PRICE;
    case 'MISSING_REALIZED_FX_RATE':
      return _$holdingPnlWarningDtoTypeEnum_MISSING_REALIZED_FX_RATE;
    case 'OVERSOLD_LOTS':
      return _$holdingPnlWarningDtoTypeEnum_OVERSOLD_LOTS;
    case 'NO_PRICE':
      return _$holdingPnlWarningDtoTypeEnum_NO_PRICE;
    case 'MIXED_COST_CURRENCY':
      return _$holdingPnlWarningDtoTypeEnum_MIXED_COST_CURRENCY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HoldingPnlWarningDtoTypeEnum>
    _$holdingPnlWarningDtoTypeEnumValues = new BuiltSet<
        HoldingPnlWarningDtoTypeEnum>(const <HoldingPnlWarningDtoTypeEnum>[
  _$holdingPnlWarningDtoTypeEnum_MISSING_COST_FX_RATE,
  _$holdingPnlWarningDtoTypeEnum_MISSING_MARKET_FX_RATE,
  _$holdingPnlWarningDtoTypeEnum_MISSING_SALE_PRICE,
  _$holdingPnlWarningDtoTypeEnum_MISSING_REALIZED_FX_RATE,
  _$holdingPnlWarningDtoTypeEnum_OVERSOLD_LOTS,
  _$holdingPnlWarningDtoTypeEnum_NO_PRICE,
  _$holdingPnlWarningDtoTypeEnum_MIXED_COST_CURRENCY,
]);

Serializer<HoldingPnlWarningDtoTypeEnum>
    _$holdingPnlWarningDtoTypeEnumSerializer =
    new _$HoldingPnlWarningDtoTypeEnumSerializer();

class _$HoldingPnlWarningDtoTypeEnumSerializer
    implements PrimitiveSerializer<HoldingPnlWarningDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MISSING_COST_FX_RATE': 'MISSING_COST_FX_RATE',
    'MISSING_MARKET_FX_RATE': 'MISSING_MARKET_FX_RATE',
    'MISSING_SALE_PRICE': 'MISSING_SALE_PRICE',
    'MISSING_REALIZED_FX_RATE': 'MISSING_REALIZED_FX_RATE',
    'OVERSOLD_LOTS': 'OVERSOLD_LOTS',
    'NO_PRICE': 'NO_PRICE',
    'MIXED_COST_CURRENCY': 'MIXED_COST_CURRENCY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MISSING_COST_FX_RATE': 'MISSING_COST_FX_RATE',
    'MISSING_MARKET_FX_RATE': 'MISSING_MARKET_FX_RATE',
    'MISSING_SALE_PRICE': 'MISSING_SALE_PRICE',
    'MISSING_REALIZED_FX_RATE': 'MISSING_REALIZED_FX_RATE',
    'OVERSOLD_LOTS': 'OVERSOLD_LOTS',
    'NO_PRICE': 'NO_PRICE',
    'MIXED_COST_CURRENCY': 'MIXED_COST_CURRENCY',
  };

  @override
  final Iterable<Type> types = const <Type>[HoldingPnlWarningDtoTypeEnum];
  @override
  final String wireName = 'HoldingPnlWarningDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, HoldingPnlWarningDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldingPnlWarningDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldingPnlWarningDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldingPnlWarningDto extends HoldingPnlWarningDto {
  @override
  final HoldingPnlWarningDtoTypeEnum type;
  @override
  final JsonObject? symbol;
  @override
  final JsonObject? accountId;
  @override
  final JsonObject? currency;

  factory _$HoldingPnlWarningDto(
          [void Function(HoldingPnlWarningDtoBuilder)? updates]) =>
      (new HoldingPnlWarningDtoBuilder()..update(updates))._build();

  _$HoldingPnlWarningDto._(
      {required this.type, this.symbol, this.accountId, this.currency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        type, r'HoldingPnlWarningDto', 'type');
  }

  @override
  HoldingPnlWarningDto rebuild(
          void Function(HoldingPnlWarningDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlWarningDtoBuilder toBuilder() =>
      new HoldingPnlWarningDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlWarningDto &&
        type == other.type &&
        symbol == other.symbol &&
        accountId == other.accountId &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlWarningDto')
          ..add('type', type)
          ..add('symbol', symbol)
          ..add('accountId', accountId)
          ..add('currency', currency))
        .toString();
  }
}

class HoldingPnlWarningDtoBuilder
    implements Builder<HoldingPnlWarningDto, HoldingPnlWarningDtoBuilder> {
  _$HoldingPnlWarningDto? _$v;

  HoldingPnlWarningDtoTypeEnum? _type;
  HoldingPnlWarningDtoTypeEnum? get type => _$this._type;
  set type(HoldingPnlWarningDtoTypeEnum? type) => _$this._type = type;

  JsonObject? _symbol;
  JsonObject? get symbol => _$this._symbol;
  set symbol(JsonObject? symbol) => _$this._symbol = symbol;

  JsonObject? _accountId;
  JsonObject? get accountId => _$this._accountId;
  set accountId(JsonObject? accountId) => _$this._accountId = accountId;

  JsonObject? _currency;
  JsonObject? get currency => _$this._currency;
  set currency(JsonObject? currency) => _$this._currency = currency;

  HoldingPnlWarningDtoBuilder() {
    HoldingPnlWarningDto._defaults(this);
  }

  HoldingPnlWarningDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _symbol = $v.symbol;
      _accountId = $v.accountId;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoldingPnlWarningDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlWarningDto;
  }

  @override
  void update(void Function(HoldingPnlWarningDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlWarningDto build() => _build();

  _$HoldingPnlWarningDto _build() {
    final _$result = _$v ??
        new _$HoldingPnlWarningDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'HoldingPnlWarningDto', 'type'),
            symbol: symbol,
            accountId: accountId,
            currency: currency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
