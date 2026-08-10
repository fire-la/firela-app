// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_list_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_BANK =
    const PlatformListItemDtoTypeEnum._('BANK');
const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_BROKERAGE =
    const PlatformListItemDtoTypeEnum._('BROKERAGE');
const PlatformListItemDtoTypeEnum
    _$platformListItemDtoTypeEnum_CRYPTO_EXCHANGE =
    const PlatformListItemDtoTypeEnum._('CRYPTO_EXCHANGE');
const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_PAYMENT =
    const PlatformListItemDtoTypeEnum._('PAYMENT');
const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_INVESTMENT =
    const PlatformListItemDtoTypeEnum._('INVESTMENT');
const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_INSURANCE =
    const PlatformListItemDtoTypeEnum._('INSURANCE');
const PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnum_OTHER =
    const PlatformListItemDtoTypeEnum._('OTHER');

PlatformListItemDtoTypeEnum _$platformListItemDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'BANK':
      return _$platformListItemDtoTypeEnum_BANK;
    case 'BROKERAGE':
      return _$platformListItemDtoTypeEnum_BROKERAGE;
    case 'CRYPTO_EXCHANGE':
      return _$platformListItemDtoTypeEnum_CRYPTO_EXCHANGE;
    case 'PAYMENT':
      return _$platformListItemDtoTypeEnum_PAYMENT;
    case 'INVESTMENT':
      return _$platformListItemDtoTypeEnum_INVESTMENT;
    case 'INSURANCE':
      return _$platformListItemDtoTypeEnum_INSURANCE;
    case 'OTHER':
      return _$platformListItemDtoTypeEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlatformListItemDtoTypeEnum>
    _$platformListItemDtoTypeEnumValues = new BuiltSet<
        PlatformListItemDtoTypeEnum>(const <PlatformListItemDtoTypeEnum>[
  _$platformListItemDtoTypeEnum_BANK,
  _$platformListItemDtoTypeEnum_BROKERAGE,
  _$platformListItemDtoTypeEnum_CRYPTO_EXCHANGE,
  _$platformListItemDtoTypeEnum_PAYMENT,
  _$platformListItemDtoTypeEnum_INVESTMENT,
  _$platformListItemDtoTypeEnum_INSURANCE,
  _$platformListItemDtoTypeEnum_OTHER,
]);

Serializer<PlatformListItemDtoTypeEnum>
    _$platformListItemDtoTypeEnumSerializer =
    new _$PlatformListItemDtoTypeEnumSerializer();

class _$PlatformListItemDtoTypeEnumSerializer
    implements PrimitiveSerializer<PlatformListItemDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[PlatformListItemDtoTypeEnum];
  @override
  final String wireName = 'PlatformListItemDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, PlatformListItemDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformListItemDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformListItemDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlatformListItemDto extends PlatformListItemDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final PlatformListItemDtoTypeEnum type;
  @override
  final String canonical;
  @override
  final String suggestedSegment;
  @override
  final String? logoUrl;
  @override
  final String? countryCode;
  @override
  final bool isBound;

  factory _$PlatformListItemDto(
          [void Function(PlatformListItemDtoBuilder)? updates]) =>
      (new PlatformListItemDtoBuilder()..update(updates))._build();

  _$PlatformListItemDto._(
      {required this.id,
      required this.name,
      required this.url,
      required this.type,
      required this.canonical,
      required this.suggestedSegment,
      this.logoUrl,
      this.countryCode,
      required this.isBound})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PlatformListItemDto', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'PlatformListItemDto', 'name');
    BuiltValueNullFieldError.checkNotNull(url, r'PlatformListItemDto', 'url');
    BuiltValueNullFieldError.checkNotNull(type, r'PlatformListItemDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        canonical, r'PlatformListItemDto', 'canonical');
    BuiltValueNullFieldError.checkNotNull(
        suggestedSegment, r'PlatformListItemDto', 'suggestedSegment');
    BuiltValueNullFieldError.checkNotNull(
        isBound, r'PlatformListItemDto', 'isBound');
  }

  @override
  PlatformListItemDto rebuild(
          void Function(PlatformListItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformListItemDtoBuilder toBuilder() =>
      new PlatformListItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformListItemDto &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        type == other.type &&
        canonical == other.canonical &&
        suggestedSegment == other.suggestedSegment &&
        logoUrl == other.logoUrl &&
        countryCode == other.countryCode &&
        isBound == other.isBound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, canonical.hashCode);
    _$hash = $jc(_$hash, suggestedSegment.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, isBound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformListItemDto')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('type', type)
          ..add('canonical', canonical)
          ..add('suggestedSegment', suggestedSegment)
          ..add('logoUrl', logoUrl)
          ..add('countryCode', countryCode)
          ..add('isBound', isBound))
        .toString();
  }
}

class PlatformListItemDtoBuilder
    implements Builder<PlatformListItemDto, PlatformListItemDtoBuilder> {
  _$PlatformListItemDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  PlatformListItemDtoTypeEnum? _type;
  PlatformListItemDtoTypeEnum? get type => _$this._type;
  set type(PlatformListItemDtoTypeEnum? type) => _$this._type = type;

  String? _canonical;
  String? get canonical => _$this._canonical;
  set canonical(String? canonical) => _$this._canonical = canonical;

  String? _suggestedSegment;
  String? get suggestedSegment => _$this._suggestedSegment;
  set suggestedSegment(String? suggestedSegment) =>
      _$this._suggestedSegment = suggestedSegment;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  bool? _isBound;
  bool? get isBound => _$this._isBound;
  set isBound(bool? isBound) => _$this._isBound = isBound;

  PlatformListItemDtoBuilder() {
    PlatformListItemDto._defaults(this);
  }

  PlatformListItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _url = $v.url;
      _type = $v.type;
      _canonical = $v.canonical;
      _suggestedSegment = $v.suggestedSegment;
      _logoUrl = $v.logoUrl;
      _countryCode = $v.countryCode;
      _isBound = $v.isBound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformListItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformListItemDto;
  }

  @override
  void update(void Function(PlatformListItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformListItemDto build() => _build();

  _$PlatformListItemDto _build() {
    final _$result = _$v ??
        new _$PlatformListItemDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlatformListItemDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlatformListItemDto', 'name'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, r'PlatformListItemDto', 'url'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PlatformListItemDto', 'type'),
            canonical: BuiltValueNullFieldError.checkNotNull(
                canonical, r'PlatformListItemDto', 'canonical'),
            suggestedSegment: BuiltValueNullFieldError.checkNotNull(
                suggestedSegment, r'PlatformListItemDto', 'suggestedSegment'),
            logoUrl: logoUrl,
            countryCode: countryCode,
            isBound: BuiltValueNullFieldError.checkNotNull(
                isBound, r'PlatformListItemDto', 'isBound'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
