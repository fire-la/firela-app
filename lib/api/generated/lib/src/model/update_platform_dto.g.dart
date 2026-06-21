// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_platform_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_BANK =
    const UpdatePlatformDtoTypeEnum._('BANK');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_BROKERAGE =
    const UpdatePlatformDtoTypeEnum._('BROKERAGE');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_CRYPTO_EXCHANGE =
    const UpdatePlatformDtoTypeEnum._('CRYPTO_EXCHANGE');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_PAYMENT =
    const UpdatePlatformDtoTypeEnum._('PAYMENT');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_INVESTMENT =
    const UpdatePlatformDtoTypeEnum._('INVESTMENT');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_INSURANCE =
    const UpdatePlatformDtoTypeEnum._('INSURANCE');
const UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnum_OTHER =
    const UpdatePlatformDtoTypeEnum._('OTHER');

UpdatePlatformDtoTypeEnum _$updatePlatformDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'BANK':
      return _$updatePlatformDtoTypeEnum_BANK;
    case 'BROKERAGE':
      return _$updatePlatformDtoTypeEnum_BROKERAGE;
    case 'CRYPTO_EXCHANGE':
      return _$updatePlatformDtoTypeEnum_CRYPTO_EXCHANGE;
    case 'PAYMENT':
      return _$updatePlatformDtoTypeEnum_PAYMENT;
    case 'INVESTMENT':
      return _$updatePlatformDtoTypeEnum_INVESTMENT;
    case 'INSURANCE':
      return _$updatePlatformDtoTypeEnum_INSURANCE;
    case 'OTHER':
      return _$updatePlatformDtoTypeEnum_OTHER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpdatePlatformDtoTypeEnum> _$updatePlatformDtoTypeEnumValues =
    new BuiltSet<UpdatePlatformDtoTypeEnum>(const <UpdatePlatformDtoTypeEnum>[
  _$updatePlatformDtoTypeEnum_BANK,
  _$updatePlatformDtoTypeEnum_BROKERAGE,
  _$updatePlatformDtoTypeEnum_CRYPTO_EXCHANGE,
  _$updatePlatformDtoTypeEnum_PAYMENT,
  _$updatePlatformDtoTypeEnum_INVESTMENT,
  _$updatePlatformDtoTypeEnum_INSURANCE,
  _$updatePlatformDtoTypeEnum_OTHER,
]);

Serializer<UpdatePlatformDtoTypeEnum> _$updatePlatformDtoTypeEnumSerializer =
    new _$UpdatePlatformDtoTypeEnumSerializer();

class _$UpdatePlatformDtoTypeEnumSerializer
    implements PrimitiveSerializer<UpdatePlatformDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[UpdatePlatformDtoTypeEnum];
  @override
  final String wireName = 'UpdatePlatformDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, UpdatePlatformDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdatePlatformDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdatePlatformDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdatePlatformDto extends UpdatePlatformDto {
  @override
  final String? name;
  @override
  final String? canonical;
  @override
  final BuiltList<String>? aliases;
  @override
  final String? url;
  @override
  final UpdatePlatformDtoTypeEnum? type;
  @override
  final String? logoUrl;
  @override
  final bool? isActive;

  factory _$UpdatePlatformDto(
          [void Function(UpdatePlatformDtoBuilder)? updates]) =>
      (new UpdatePlatformDtoBuilder()..update(updates))._build();

  _$UpdatePlatformDto._(
      {this.name,
      this.canonical,
      this.aliases,
      this.url,
      this.type,
      this.logoUrl,
      this.isActive})
      : super._();

  @override
  UpdatePlatformDto rebuild(void Function(UpdatePlatformDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePlatformDtoBuilder toBuilder() =>
      new UpdatePlatformDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePlatformDto &&
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
    return (newBuiltValueToStringHelper(r'UpdatePlatformDto')
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

class UpdatePlatformDtoBuilder
    implements Builder<UpdatePlatformDto, UpdatePlatformDtoBuilder> {
  _$UpdatePlatformDto? _$v;

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

  UpdatePlatformDtoTypeEnum? _type;
  UpdatePlatformDtoTypeEnum? get type => _$this._type;
  set type(UpdatePlatformDtoTypeEnum? type) => _$this._type = type;

  String? _logoUrl;
  String? get logoUrl => _$this._logoUrl;
  set logoUrl(String? logoUrl) => _$this._logoUrl = logoUrl;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  UpdatePlatformDtoBuilder() {
    UpdatePlatformDto._defaults(this);
  }

  UpdatePlatformDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _canonical = $v.canonical;
      _aliases = $v.aliases?.toBuilder();
      _url = $v.url;
      _type = $v.type;
      _logoUrl = $v.logoUrl;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePlatformDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePlatformDto;
  }

  @override
  void update(void Function(UpdatePlatformDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePlatformDto build() => _build();

  _$UpdatePlatformDto _build() {
    _$UpdatePlatformDto _$result;
    try {
      _$result = _$v ??
          new _$UpdatePlatformDto._(
              name: name,
              canonical: canonical,
              aliases: _aliases?.build(),
              url: url,
              type: type,
              logoUrl: logoUrl,
              isActive: isActive);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aliases';
        _aliases?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdatePlatformDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
