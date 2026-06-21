// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_platform_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_BANK =
    const CreatePlatformDtoTypeEnum._('BANK');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_BROKERAGE =
    const CreatePlatformDtoTypeEnum._('BROKERAGE');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_CRYPTO_EXCHANGE =
    const CreatePlatformDtoTypeEnum._('CRYPTO_EXCHANGE');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_PAYMENT =
    const CreatePlatformDtoTypeEnum._('PAYMENT');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_INVESTMENT =
    const CreatePlatformDtoTypeEnum._('INVESTMENT');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_INSURANCE =
    const CreatePlatformDtoTypeEnum._('INSURANCE');
const CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnum_OTHER =
    const CreatePlatformDtoTypeEnum._('OTHER');

CreatePlatformDtoTypeEnum _$createPlatformDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'BANK':
      return _$createPlatformDtoTypeEnum_BANK;
    case 'BROKERAGE':
      return _$createPlatformDtoTypeEnum_BROKERAGE;
    case 'CRYPTO_EXCHANGE':
      return _$createPlatformDtoTypeEnum_CRYPTO_EXCHANGE;
    case 'PAYMENT':
      return _$createPlatformDtoTypeEnum_PAYMENT;
    case 'INVESTMENT':
      return _$createPlatformDtoTypeEnum_INVESTMENT;
    case 'INSURANCE':
      return _$createPlatformDtoTypeEnum_INSURANCE;
    case 'OTHER':
      return _$createPlatformDtoTypeEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreatePlatformDtoTypeEnum> _$createPlatformDtoTypeEnumValues =
    new BuiltSet<CreatePlatformDtoTypeEnum>(const <CreatePlatformDtoTypeEnum>[
  _$createPlatformDtoTypeEnum_BANK,
  _$createPlatformDtoTypeEnum_BROKERAGE,
  _$createPlatformDtoTypeEnum_CRYPTO_EXCHANGE,
  _$createPlatformDtoTypeEnum_PAYMENT,
  _$createPlatformDtoTypeEnum_INVESTMENT,
  _$createPlatformDtoTypeEnum_INSURANCE,
  _$createPlatformDtoTypeEnum_OTHER,
]);

Serializer<CreatePlatformDtoTypeEnum> _$createPlatformDtoTypeEnumSerializer =
    new _$CreatePlatformDtoTypeEnumSerializer();

class _$CreatePlatformDtoTypeEnumSerializer
    implements PrimitiveSerializer<CreatePlatformDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[CreatePlatformDtoTypeEnum];
  @override
  final String wireName = 'CreatePlatformDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, CreatePlatformDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreatePlatformDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreatePlatformDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreatePlatformDto extends CreatePlatformDto {
  @override
  final String name;
  @override
  final String canonical;
  @override
  final BuiltList<String> aliases;
  @override
  final String url;
  @override
  final CreatePlatformDtoTypeEnum type;
  @override
  final String? logoUrl;
  @override
  final bool? isActive;

  factory _$CreatePlatformDto(
          [void Function(CreatePlatformDtoBuilder)? updates]) =>
      (new CreatePlatformDtoBuilder()..update(updates))._build();

  _$CreatePlatformDto._(
      {required this.name,
      required this.canonical,
      required this.aliases,
      required this.url,
      required this.type,
      this.logoUrl,
      this.isActive})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreatePlatformDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        canonical, r'CreatePlatformDto', 'canonical');
    BuiltValueNullFieldError.checkNotNull(
        aliases, r'CreatePlatformDto', 'aliases');
    BuiltValueNullFieldError.checkNotNull(url, r'CreatePlatformDto', 'url');
    BuiltValueNullFieldError.checkNotNull(type, r'CreatePlatformDto', 'type');
  }

  @override
  CreatePlatformDto rebuild(void Function(CreatePlatformDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePlatformDtoBuilder toBuilder() =>
      new CreatePlatformDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePlatformDto &&
        name == other.name &&
        canonical == other.canonical &&
        aliases == other.aliases &&
        url == other.url &&
        type == other.type &&
        logoUrl == other.logoUrl &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, canonical.hashCode);
    _$hash = $jc(_$hash, aliases.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, logoUrl.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePlatformDto')
          ..add('name', name)
          ..add('canonical', canonical)
          ..add('aliases', aliases)
          ..add('url', url)
          ..add('type', type)
          ..add('logoUrl', logoUrl)
          ..add('isActive', isActive))
        .toString();
  }
}

class CreatePlatformDtoBuilder
    implements Builder<CreatePlatformDto, CreatePlatformDtoBuilder> {
  _$CreatePlatformDto? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _canonical;
  String? get canonical => _$this._canonical;
  set canonical(String? canonical) => _$this._canonical = canonical;

  ListBuilder<String>? _aliases;
  ListBuilder<String> get aliases =>
      _$this._aliases ??= new ListBuilder<String>();
  set aliases(ListBuilder<String>? aliases) => _$this._aliases = aliases;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  CreatePlatformDtoTypeEnum? _type;
  CreatePlatformDtoTypeEnum? get type => _$this._type;
  set type(CreatePlatformDtoTypeEnum? type) => _$this._type = type;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  CreatePlatformDtoBuilder() {
    CreatePlatformDto._defaults(this);
  }

  CreatePlatformDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _canonical = $v.canonical;
      _aliases = $v.aliases.toBuilder();
      _url = $v.url;
      _type = $v.type;
      _logoUrl = $v.logoUrl;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePlatformDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePlatformDto;
  }

  @override
  void update(void Function(CreatePlatformDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePlatformDto build() => _build();

  _$CreatePlatformDto _build() {
    _$CreatePlatformDto _$result;
    try {
      _$result = _$v ??
          new _$CreatePlatformDto._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreatePlatformDto', 'name'),
              canonical: BuiltValueNullFieldError.checkNotNull(
                  canonical, r'CreatePlatformDto', 'canonical'),
              aliases: aliases.build(),
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'CreatePlatformDto', 'url'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'CreatePlatformDto', 'type'),
              logoUrl: logoUrl,
              isActive: isActive);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aliases';
        aliases.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePlatformDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
