// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_price_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CurrentPriceDtoSource_Enum _$currentPriceDtoSourceEnum_USER_OVERRIDE =
    const CurrentPriceDtoSource_Enum._('USER_OVERRIDE');
const CurrentPriceDtoSource_Enum _$currentPriceDtoSourceEnum_OPENBB_EQUITY =
    const CurrentPriceDtoSource_Enum._('OPENBB_EQUITY');
const CurrentPriceDtoSource_Enum _$currentPriceDtoSourceEnum_OPENBB_CURRENCY =
    const CurrentPriceDtoSource_Enum._('OPENBB_CURRENCY');

CurrentPriceDtoSource_Enum _$currentPriceDtoSourceEnumValueOf(String name) {
  switch (name) {
    case 'USER_OVERRIDE':
      return _$currentPriceDtoSourceEnum_USER_OVERRIDE;
    case 'OPENBB_EQUITY':
      return _$currentPriceDtoSourceEnum_OPENBB_EQUITY;
    case 'OPENBB_CURRENCY':
      return _$currentPriceDtoSourceEnum_OPENBB_CURRENCY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CurrentPriceDtoSource_Enum> _$currentPriceDtoSourceEnumValues =
    new BuiltSet<CurrentPriceDtoSource_Enum>(const <CurrentPriceDtoSource_Enum>[
  _$currentPriceDtoSourceEnum_USER_OVERRIDE,
  _$currentPriceDtoSourceEnum_OPENBB_EQUITY,
  _$currentPriceDtoSourceEnum_OPENBB_CURRENCY,
]);

Serializer<CurrentPriceDtoSource_Enum> _$currentPriceDtoSourceEnumSerializer =
    new _$CurrentPriceDtoSource_EnumSerializer();

class _$CurrentPriceDtoSource_EnumSerializer
    implements PrimitiveSerializer<CurrentPriceDtoSource_Enum> {
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
  final Iterable<Type> types = const <Type>[CurrentPriceDtoSource_Enum];
  @override
  final String wireName = 'CurrentPriceDtoSource_Enum';

  @override
  Object serialize(Serializers serializers, CurrentPriceDtoSource_Enum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CurrentPriceDtoSource_Enum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CurrentPriceDtoSource_Enum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract mixin class CurrentPriceDtoBuilder {
  void replace(CurrentPriceDto other);
  void update(void Function(CurrentPriceDtoBuilder) updates);
  String? get amount;
  set amount(String? amount);

  String? get currency;
  set currency(String? currency);

  String? get date;
  set date(String? date);

  CurrentPriceDtoSource_Enum? get source_;
  set source_(CurrentPriceDtoSource_Enum? source_);
}

class _$$CurrentPriceDto extends $CurrentPriceDto {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String date;
  @override
  final CurrentPriceDtoSource_Enum source_;

  factory _$$CurrentPriceDto(
          [void Function($CurrentPriceDtoBuilder)? updates]) =>
      (new $CurrentPriceDtoBuilder()..update(updates))._build();

  _$$CurrentPriceDto._(
      {required this.amount,
      required this.currency,
      required this.date,
      required this.source_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amount, r'$CurrentPriceDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'$CurrentPriceDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(date, r'$CurrentPriceDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        source_, r'$CurrentPriceDto', 'source_');
  }

  @override
  $CurrentPriceDto rebuild(void Function($CurrentPriceDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CurrentPriceDtoBuilder toBuilder() =>
      new $CurrentPriceDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CurrentPriceDto &&
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
    return (newBuiltValueToStringHelper(r'$CurrentPriceDto')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('date', date)
          ..add('source_', source_))
        .toString();
  }
}

class $CurrentPriceDtoBuilder
    implements
        Builder<$CurrentPriceDto, $CurrentPriceDtoBuilder>,
        CurrentPriceDtoBuilder {
  _$$CurrentPriceDto? _$v;

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

  $CurrentPriceDtoBuilder() {
    $CurrentPriceDto._defaults(this);
  }

  $CurrentPriceDtoBuilder get _$this {
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
  void replace(covariant $CurrentPriceDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$CurrentPriceDto;
  }

  @override
  void update(void Function($CurrentPriceDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CurrentPriceDto build() => _build();

  _$$CurrentPriceDto _build() {
    final _$result = _$v ??
        new _$$CurrentPriceDto._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'$CurrentPriceDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'$CurrentPriceDto', 'currency'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'$CurrentPriceDto', 'date'),
            source_: BuiltValueNullFieldError.checkNotNull(
                source_, r'$CurrentPriceDto', 'source_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
