// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holding_pnl_row_dto_current_price.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HoldingPnlRowDtoCurrentPriceSource_Enum
    _$holdingPnlRowDtoCurrentPriceSourceEnum_USER_OVERRIDE =
    const HoldingPnlRowDtoCurrentPriceSource_Enum._('USER_OVERRIDE');
const HoldingPnlRowDtoCurrentPriceSource_Enum
    _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_EQUITY =
    const HoldingPnlRowDtoCurrentPriceSource_Enum._('OPENBB_EQUITY');
const HoldingPnlRowDtoCurrentPriceSource_Enum
    _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_CURRENCY =
    const HoldingPnlRowDtoCurrentPriceSource_Enum._('OPENBB_CURRENCY');

HoldingPnlRowDtoCurrentPriceSource_Enum
    _$holdingPnlRowDtoCurrentPriceSourceEnumValueOf(String name) {
  switch (name) {
    case 'USER_OVERRIDE':
      return _$holdingPnlRowDtoCurrentPriceSourceEnum_USER_OVERRIDE;
    case 'OPENBB_EQUITY':
      return _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_EQUITY;
    case 'OPENBB_CURRENCY':
      return _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_CURRENCY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<HoldingPnlRowDtoCurrentPriceSource_Enum>
    _$holdingPnlRowDtoCurrentPriceSourceEnumValues = new BuiltSet<
        HoldingPnlRowDtoCurrentPriceSource_Enum>(const <HoldingPnlRowDtoCurrentPriceSource_Enum>[
  _$holdingPnlRowDtoCurrentPriceSourceEnum_USER_OVERRIDE,
  _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_EQUITY,
  _$holdingPnlRowDtoCurrentPriceSourceEnum_OPENBB_CURRENCY,
]);

Serializer<HoldingPnlRowDtoCurrentPriceSource_Enum>
    _$holdingPnlRowDtoCurrentPriceSourceEnumSerializer =
    new _$HoldingPnlRowDtoCurrentPriceSource_EnumSerializer();

class _$HoldingPnlRowDtoCurrentPriceSource_EnumSerializer
    implements PrimitiveSerializer<HoldingPnlRowDtoCurrentPriceSource_Enum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER_OVERRIDE': 'USER_OVERRIDE',
    'OPENBB_EQUITY': 'OPENBB_EQUITY',
    'OPENBB_CURRENCY': 'OPENBB_CURRENCY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER_OVERRIDE': 'USER_OVERRIDE',
    'OPENBB_EQUITY': 'OPENBB_EQUITY',
    'OPENBB_CURRENCY': 'OPENBB_CURRENCY',
  };

  @override
  final Iterable<Type> types = const <Type>[
    HoldingPnlRowDtoCurrentPriceSource_Enum
  ];
  @override
  final String wireName = 'HoldingPnlRowDtoCurrentPriceSource_Enum';

  @override
  Object serialize(Serializers serializers,
          HoldingPnlRowDtoCurrentPriceSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  HoldingPnlRowDtoCurrentPriceSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      HoldingPnlRowDtoCurrentPriceSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$HoldingPnlRowDtoCurrentPrice extends HoldingPnlRowDtoCurrentPrice {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String date;
  @override
  final CurrentPriceDtoSource_Enum source_;

  factory _$HoldingPnlRowDtoCurrentPrice(
          [void Function(HoldingPnlRowDtoCurrentPriceBuilder)? updates]) =>
      (new HoldingPnlRowDtoCurrentPriceBuilder()..update(updates))._build();

  _$HoldingPnlRowDtoCurrentPrice._(
      {required this.amount,
      required this.currency,
      required this.date,
      required this.source_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'HoldingPnlRowDtoCurrentPrice', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'HoldingPnlRowDtoCurrentPrice', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        date, r'HoldingPnlRowDtoCurrentPrice', 'date');
    BuiltValueNullFieldError.checkNotNull(
        source_, r'HoldingPnlRowDtoCurrentPrice', 'source_');
  }

  @override
  HoldingPnlRowDtoCurrentPrice rebuild(
          void Function(HoldingPnlRowDtoCurrentPriceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoldingPnlRowDtoCurrentPriceBuilder toBuilder() =>
      new HoldingPnlRowDtoCurrentPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoldingPnlRowDtoCurrentPrice &&
        amount == other.amount &&
        currency == other.currency &&
        date == other.date &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoldingPnlRowDtoCurrentPrice')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('date', date)
          ..add('source_', source_))
        .toString();
  }
}

class HoldingPnlRowDtoCurrentPriceBuilder
    implements
        Builder<HoldingPnlRowDtoCurrentPrice,
            HoldingPnlRowDtoCurrentPriceBuilder>,
        CurrentPriceDtoBuilder {
  _$HoldingPnlRowDtoCurrentPrice? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(covariant String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(covariant String? currency) => _$this._currency = currency;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  CurrentPriceDtoSource_Enum? _source_;
  CurrentPriceDtoSource_Enum? get source_ => _$this._source_;
  set source_(covariant CurrentPriceDtoSource_Enum? source_) =>
      _$this._source_ = source_;

  HoldingPnlRowDtoCurrentPriceBuilder() {
    HoldingPnlRowDtoCurrentPrice._defaults(this);
  }

  HoldingPnlRowDtoCurrentPriceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _date = $v.date;
      _source_ = $v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HoldingPnlRowDtoCurrentPrice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoldingPnlRowDtoCurrentPrice;
  }

  @override
  void update(void Function(HoldingPnlRowDtoCurrentPriceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoldingPnlRowDtoCurrentPrice build() => _build();

  _$HoldingPnlRowDtoCurrentPrice _build() {
    final _$result = _$v ??
        new _$HoldingPnlRowDtoCurrentPrice._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'HoldingPnlRowDtoCurrentPrice', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'HoldingPnlRowDtoCurrentPrice', 'currency'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'HoldingPnlRowDtoCurrentPrice', 'date'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'HoldingPnlRowDtoCurrentPrice', 'source_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
