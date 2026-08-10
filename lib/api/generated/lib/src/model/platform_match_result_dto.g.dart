// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_match_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformMatchResultDtoTypeEnum _$platformMatchResultDtoTypeEnum_BANK =
    const PlatformMatchResultDtoTypeEnum._('BANK');
const PlatformMatchResultDtoTypeEnum
    _$platformMatchResultDtoTypeEnum_BROKERAGE =
    const PlatformMatchResultDtoTypeEnum._('BROKERAGE');
const PlatformMatchResultDtoTypeEnum
    _$platformMatchResultDtoTypeEnum_CRYPTO_EXCHANGE =
    const PlatformMatchResultDtoTypeEnum._('CRYPTO_EXCHANGE');
const PlatformMatchResultDtoTypeEnum _$platformMatchResultDtoTypeEnum_PAYMENT =
    const PlatformMatchResultDtoTypeEnum._('PAYMENT');
const PlatformMatchResultDtoTypeEnum
    _$platformMatchResultDtoTypeEnum_INVESTMENT =
    const PlatformMatchResultDtoTypeEnum._('INVESTMENT');
const PlatformMatchResultDtoTypeEnum
    _$platformMatchResultDtoTypeEnum_INSURANCE =
    const PlatformMatchResultDtoTypeEnum._('INSURANCE');
const PlatformMatchResultDtoTypeEnum _$platformMatchResultDtoTypeEnum_OTHER =
    const PlatformMatchResultDtoTypeEnum._('OTHER');

PlatformMatchResultDtoTypeEnum _$platformMatchResultDtoTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'BANK':
      return _$platformMatchResultDtoTypeEnum_BANK;
    case 'BROKERAGE':
      return _$platformMatchResultDtoTypeEnum_BROKERAGE;
    case 'CRYPTO_EXCHANGE':
      return _$platformMatchResultDtoTypeEnum_CRYPTO_EXCHANGE;
    case 'PAYMENT':
      return _$platformMatchResultDtoTypeEnum_PAYMENT;
    case 'INVESTMENT':
      return _$platformMatchResultDtoTypeEnum_INVESTMENT;
    case 'INSURANCE':
      return _$platformMatchResultDtoTypeEnum_INSURANCE;
    case 'OTHER':
      return _$platformMatchResultDtoTypeEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlatformMatchResultDtoTypeEnum>
    _$platformMatchResultDtoTypeEnumValues = new BuiltSet<
        PlatformMatchResultDtoTypeEnum>(const <PlatformMatchResultDtoTypeEnum>[
  _$platformMatchResultDtoTypeEnum_BANK,
  _$platformMatchResultDtoTypeEnum_BROKERAGE,
  _$platformMatchResultDtoTypeEnum_CRYPTO_EXCHANGE,
  _$platformMatchResultDtoTypeEnum_PAYMENT,
  _$platformMatchResultDtoTypeEnum_INVESTMENT,
  _$platformMatchResultDtoTypeEnum_INSURANCE,
  _$platformMatchResultDtoTypeEnum_OTHER,
]);

const PlatformMatchResultDtoMatchTypeEnum
    _$platformMatchResultDtoMatchTypeEnum_exact =
    const PlatformMatchResultDtoMatchTypeEnum._('exact');
const PlatformMatchResultDtoMatchTypeEnum
    _$platformMatchResultDtoMatchTypeEnum_prefix =
    const PlatformMatchResultDtoMatchTypeEnum._('prefix');
const PlatformMatchResultDtoMatchTypeEnum
    _$platformMatchResultDtoMatchTypeEnum_substring =
    const PlatformMatchResultDtoMatchTypeEnum._('substring');

PlatformMatchResultDtoMatchTypeEnum
    _$platformMatchResultDtoMatchTypeEnumValueOf(String name) {
  switch (name) {
    case 'exact':
      return _$platformMatchResultDtoMatchTypeEnum_exact;
    case 'prefix':
      return _$platformMatchResultDtoMatchTypeEnum_prefix;
    case 'substring':
      return _$platformMatchResultDtoMatchTypeEnum_substring;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PlatformMatchResultDtoMatchTypeEnum>
    _$platformMatchResultDtoMatchTypeEnumValues = new BuiltSet<
        PlatformMatchResultDtoMatchTypeEnum>(const <PlatformMatchResultDtoMatchTypeEnum>[
  _$platformMatchResultDtoMatchTypeEnum_exact,
  _$platformMatchResultDtoMatchTypeEnum_prefix,
  _$platformMatchResultDtoMatchTypeEnum_substring,
]);

Serializer<PlatformMatchResultDtoTypeEnum>
    _$platformMatchResultDtoTypeEnumSerializer =
    new _$PlatformMatchResultDtoTypeEnumSerializer();
Serializer<PlatformMatchResultDtoMatchTypeEnum>
    _$platformMatchResultDtoMatchTypeEnumSerializer =
    new _$PlatformMatchResultDtoMatchTypeEnumSerializer();

class _$PlatformMatchResultDtoTypeEnumSerializer
    implements PrimitiveSerializer<PlatformMatchResultDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[PlatformMatchResultDtoTypeEnum];
  @override
  final String wireName = 'PlatformMatchResultDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlatformMatchResultDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformMatchResultDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformMatchResultDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlatformMatchResultDtoMatchTypeEnumSerializer
    implements PrimitiveSerializer<PlatformMatchResultDtoMatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'exact': 'exact',
    'prefix': 'prefix',
    'substring': 'substring',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'exact': 'exact',
    'prefix': 'prefix',
    'substring': 'substring',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PlatformMatchResultDtoMatchTypeEnum
  ];
  @override
  final String wireName = 'PlatformMatchResultDtoMatchTypeEnum';

  @override
  Object serialize(
          Serializers serializers, PlatformMatchResultDtoMatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PlatformMatchResultDtoMatchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PlatformMatchResultDtoMatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PlatformMatchResultDto extends PlatformMatchResultDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String canonical;
  @override
  final PlatformMatchResultDtoTypeEnum type;
  @override
  final String suggestedSegment;
  @override
  final String? logoUrl;
  @override
  final String? countryCode;
  @override
  final String? category;
  @override
  final PlatformMatchResultDtoMatchTypeEnum matchType;

  factory _$PlatformMatchResultDto(
          [void Function(PlatformMatchResultDtoBuilder)? updates]) =>
      (new PlatformMatchResultDtoBuilder()..update(updates))._build();

  _$PlatformMatchResultDto._(
      {required this.id,
      required this.name,
      required this.canonical,
      required this.type,
      required this.suggestedSegment,
      this.logoUrl,
      this.countryCode,
      this.category,
      required this.matchType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PlatformMatchResultDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'PlatformMatchResultDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        canonical, r'PlatformMatchResultDto', 'canonical');
    BuiltValueNullFieldError.checkNotNull(
        type, r'PlatformMatchResultDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        suggestedSegment, r'PlatformMatchResultDto', 'suggestedSegment');
    BuiltValueNullFieldError.checkNotNull(
        matchType, r'PlatformMatchResultDto', 'matchType');
  }

  @override
  PlatformMatchResultDto rebuild(
          void Function(PlatformMatchResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatformMatchResultDtoBuilder toBuilder() =>
      new PlatformMatchResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformMatchResultDto &&
        id == other.id &&
        name == other.name &&
        canonical == other.canonical &&
        type == other.type &&
        suggestedSegment == other.suggestedSegment &&
        logoUrl == other.logoUrl &&
        countryCode == other.countryCode &&
        category == other.category &&
        matchType == other.matchType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, canonical.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, suggestedSegment.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, countryCode.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, matchType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformMatchResultDto')
          ..add('id', id)
          ..add('name', name)
          ..add('canonical', canonical)
          ..add('type', type)
          ..add('suggestedSegment', suggestedSegment)
          ..add('logoUrl', logoUrl)
          ..add('countryCode', countryCode)
          ..add('category', category)
          ..add('matchType', matchType))
        .toString();
  }
}

class PlatformMatchResultDtoBuilder
    implements Builder<PlatformMatchResultDto, PlatformMatchResultDtoBuilder> {
  _$PlatformMatchResultDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _canonical;
  String? get canonical => _$this._canonical;
  set canonical(String? canonical) => _$this._canonical = canonical;

  PlatformMatchResultDtoTypeEnum? _type;
  PlatformMatchResultDtoTypeEnum? get type => _$this._type;
  set type(PlatformMatchResultDtoTypeEnum? type) => _$this._type = type;

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

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  PlatformMatchResultDtoMatchTypeEnum? _matchType;
  PlatformMatchResultDtoMatchTypeEnum? get matchType => _$this._matchType;
  set matchType(PlatformMatchResultDtoMatchTypeEnum? matchType) =>
      _$this._matchType = matchType;

  PlatformMatchResultDtoBuilder() {
    PlatformMatchResultDto._defaults(this);
  }

  PlatformMatchResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _canonical = $v.canonical;
      _type = $v.type;
      _suggestedSegment = $v.suggestedSegment;
      _logoUrl = $v.logoUrl;
      _countryCode = $v.countryCode;
      _category = $v.category;
      _matchType = $v.matchType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformMatchResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatformMatchResultDto;
  }

  @override
  void update(void Function(PlatformMatchResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformMatchResultDto build() => _build();

  _$PlatformMatchResultDto _build() {
    final _$result = _$v ??
        new _$PlatformMatchResultDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'PlatformMatchResultDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PlatformMatchResultDto', 'name'),
            canonical: BuiltValueNullFieldError.checkNotNull(
                canonical, r'PlatformMatchResultDto', 'canonical'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'PlatformMatchResultDto', 'type'),
            suggestedSegment: BuiltValueNullFieldError.checkNotNull(
                suggestedSegment,
                r'PlatformMatchResultDto',
                'suggestedSegment'),
            logoUrl: logoUrl,
            countryCode: countryCode,
            category: category,
            matchType: BuiltValueNullFieldError.checkNotNull(
                matchType, r'PlatformMatchResultDto', 'matchType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
