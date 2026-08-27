// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_standards_platform_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_BANK =
    const PlatformStandardsPlatformDtoTypeEnum._('BANK');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_BROKERAGE =
    const PlatformStandardsPlatformDtoTypeEnum._('BROKERAGE');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_CRYPTO_EXCHANGE =
    const PlatformStandardsPlatformDtoTypeEnum._('CRYPTO_EXCHANGE');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_PAYMENT =
    const PlatformStandardsPlatformDtoTypeEnum._('PAYMENT');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_INVESTMENT =
    const PlatformStandardsPlatformDtoTypeEnum._('INVESTMENT');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_INSURANCE =
    const PlatformStandardsPlatformDtoTypeEnum._('INSURANCE');
const PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnum_OTHER =
    const PlatformStandardsPlatformDtoTypeEnum._('OTHER');

PlatformStandardsPlatformDtoTypeEnum
    _$platformStandardsPlatformDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'BANK':
      return _$platformStandardsPlatformDtoTypeEnum_BANK;
    case 'BROKERAGE':
      return _$platformStandardsPlatformDtoTypeEnum_BROKERAGE;
    case 'CRYPTO_EXCHANGE':
      return _$platformStandardsPlatformDtoTypeEnum_CRYPTO_EXCHANGE;
    case 'PAYMENT':
      return _$platformStandardsPlatformDtoTypeEnum_PAYMENT;
    case 'INVESTMENT':
      return _$platformStandardsPlatformDtoTypeEnum_INVESTMENT;
    case 'INSURANCE':
      return _$platformStandardsPlatformDtoTypeEnum_INSURANCE;
    case 'OTHER':
      return _$platformStandardsPlatformDtoTypeEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlatformStandardsPlatformDtoTypeEnum>
    _$platformStandardsPlatformDtoTypeEnumValues = new BuiltSet<
        PlatformStandardsPlatformDtoTypeEnum>(const <PlatformStandardsPlatformDtoTypeEnum>[
  _$platformStandardsPlatformDtoTypeEnum_BANK,
  _$platformStandardsPlatformDtoTypeEnum_BROKERAGE,
  _$platformStandardsPlatformDtoTypeEnum_CRYPTO_EXCHANGE,
  _$platformStandardsPlatformDtoTypeEnum_PAYMENT,
  _$platformStandardsPlatformDtoTypeEnum_INVESTMENT,
  _$platformStandardsPlatformDtoTypeEnum_INSURANCE,
  _$platformStandardsPlatformDtoTypeEnum_OTHER,
]);

Serializer<PlatformStandardsPlatformDtoTypeEnum>
    _$platformStandardsPlatformDtoTypeEnumSerializer =
    new _$PlatformStandardsPlatformDtoTypeEnumSerializer();

class _$PlatformStandardsPlatformDtoTypeEnumSerializer
    implements PrimitiveSerializer<PlatformStandardsPlatformDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BANK': 'BANK',
    'BROKERAGE': 'BROKERAGE',
    'CRYPTO_EXCHANGE': 'CRYPTO_EXCHANGE',
    'PAYMENT': 'PAYMENT',
    'INVESTMENT': 'INVESTMENT',
    'INSURANCE': 'INSURANCE',
    'OTHER': 'OTHER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BANK': 'BANK',
    'BROKERAGE': 'BROKERAGE',
    'CRYPTO_EXCHANGE': 'CRYPTO_EXCHANGE',
    'PAYMENT': 'PAYMENT',
    'INVESTMENT': 'INVESTMENT',
    'INSURANCE': 'INSURANCE',
    'OTHER': 'OTHER',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PlatformStandardsPlatformDtoTypeEnum
  ];
  @override
  final String wireName = 'PlatformStandardsPlatformDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlatformStandardsPlatformDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformStandardsPlatformDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformStandardsPlatformDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlatformStandardsPlatformDto extends PlatformStandardsPlatformDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String canonical;
  @override
  final String suggestedSegment;
  @override
  final PlatformStandardsPlatformDtoTypeEnum type;
  @override
  final String? category;

  factory _$PlatformStandardsPlatformDto(
          [void Function(PlatformStandardsPlatformDtoBuilder)? updates]) =>
      (new PlatformStandardsPlatformDtoBuilder()..update(updates))._build();

  _$PlatformStandardsPlatformDto._(
      {required this.id,
      required this.name,
      required this.canonical,
      required this.suggestedSegment,
      required this.type,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'PlatformStandardsPlatformDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'PlatformStandardsPlatformDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        canonical, r'PlatformStandardsPlatformDto', 'canonical');
    BuiltValueNullFieldError.checkNotNull(
        suggestedSegment, r'PlatformStandardsPlatformDto', 'suggestedSegment');
    BuiltValueNullFieldError.checkNotNull(
        type, r'PlatformStandardsPlatformDto', 'type');
  }

  @override
  PlatformStandardsPlatformDto rebuild(
          void Function(PlatformStandardsPlatformDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformStandardsPlatformDtoBuilder toBuilder() =>
      new PlatformStandardsPlatformDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformStandardsPlatformDto &&
        id == other.id &&
        name == other.name &&
        canonical == other.canonical &&
        suggestedSegment == other.suggestedSegment &&
        type == other.type &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, canonical.hashCode);
    _$hash = $jc(_$hash, suggestedSegment.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformStandardsPlatformDto')
          ..add('id', id)
          ..add('name', name)
          ..add('canonical', canonical)
          ..add('suggestedSegment', suggestedSegment)
          ..add('type', type)
          ..add('category', category))
        .toString();
  }
}

class PlatformStandardsPlatformDtoBuilder
    implements
        Builder<PlatformStandardsPlatformDto,
            PlatformStandardsPlatformDtoBuilder> {
  _$PlatformStandardsPlatformDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _canonical;
  String? get canonical => _$this._canonical;
  set canonical(String? canonical) => _$this._canonical = canonical;

  String? _suggestedSegment;
  String? get suggestedSegment => _$this._suggestedSegment;
  set suggestedSegment(String? suggestedSegment) =>
      _$this._suggestedSegment = suggestedSegment;

  PlatformStandardsPlatformDtoTypeEnum? _type;
  PlatformStandardsPlatformDtoTypeEnum? get type => _$this._type;
  set type(PlatformStandardsPlatformDtoTypeEnum? type) => _$this._type = type;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  PlatformStandardsPlatformDtoBuilder() {
    PlatformStandardsPlatformDto._defaults(this);
  }

  PlatformStandardsPlatformDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _canonical = $v.canonical;
      _suggestedSegment = $v.suggestedSegment;
      _type = $v.type;
      _category = $v.category;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformStandardsPlatformDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformStandardsPlatformDto;
  }

  @override
  void update(void Function(PlatformStandardsPlatformDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformStandardsPlatformDto build() => _build();

  _$PlatformStandardsPlatformDto _build() {
    final _$result = _$v ??
        new _$PlatformStandardsPlatformDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlatformStandardsPlatformDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlatformStandardsPlatformDto', 'name'),
            canonical: BuiltValueNullFieldError.checkNotNull(
                canonical, r'PlatformStandardsPlatformDto', 'canonical'),
            suggestedSegment: BuiltValueNullFieldError.checkNotNull(
                suggestedSegment,
                r'PlatformStandardsPlatformDto',
                'suggestedSegment'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PlatformStandardsPlatformDto', 'type'),
            category: category);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
