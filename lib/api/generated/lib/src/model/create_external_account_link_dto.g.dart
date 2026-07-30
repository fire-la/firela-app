// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_external_account_link_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_plaid =
    const CreateExternalAccountLinkDtoProviderEnum._('plaid');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_teller =
    const CreateExternalAccountLinkDtoProviderEnum._('teller');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_truelayer =
    const CreateExternalAccountLinkDtoProviderEnum._('truelayer');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_gocardless =
    const CreateExternalAccountLinkDtoProviderEnum._('gocardless');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_simplefin =
    const CreateExternalAccountLinkDtoProviderEnum._('simplefin');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_yodlee =
    const CreateExternalAccountLinkDtoProviderEnum._('yodlee');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_beancountDirect =
    const CreateExternalAccountLinkDtoProviderEnum._('beancountDirect');
const CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnum_parsedBill =
    const CreateExternalAccountLinkDtoProviderEnum._('parsedBill');

CreateExternalAccountLinkDtoProviderEnum
    _$createExternalAccountLinkDtoProviderEnumValueOf(String name) {
  switch (name) {
    case 'plaid':
      return _$createExternalAccountLinkDtoProviderEnum_plaid;
    case 'teller':
      return _$createExternalAccountLinkDtoProviderEnum_teller;
    case 'truelayer':
      return _$createExternalAccountLinkDtoProviderEnum_truelayer;
    case 'gocardless':
      return _$createExternalAccountLinkDtoProviderEnum_gocardless;
    case 'simplefin':
      return _$createExternalAccountLinkDtoProviderEnum_simplefin;
    case 'yodlee':
      return _$createExternalAccountLinkDtoProviderEnum_yodlee;
    case 'beancountDirect':
      return _$createExternalAccountLinkDtoProviderEnum_beancountDirect;
    case 'parsedBill':
      return _$createExternalAccountLinkDtoProviderEnum_parsedBill;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateExternalAccountLinkDtoProviderEnum>
    _$createExternalAccountLinkDtoProviderEnumValues = new BuiltSet<
        CreateExternalAccountLinkDtoProviderEnum>(const <CreateExternalAccountLinkDtoProviderEnum>[
  _$createExternalAccountLinkDtoProviderEnum_plaid,
  _$createExternalAccountLinkDtoProviderEnum_teller,
  _$createExternalAccountLinkDtoProviderEnum_truelayer,
  _$createExternalAccountLinkDtoProviderEnum_gocardless,
  _$createExternalAccountLinkDtoProviderEnum_simplefin,
  _$createExternalAccountLinkDtoProviderEnum_yodlee,
  _$createExternalAccountLinkDtoProviderEnum_beancountDirect,
  _$createExternalAccountLinkDtoProviderEnum_parsedBill,
]);

Serializer<CreateExternalAccountLinkDtoProviderEnum>
    _$createExternalAccountLinkDtoProviderEnumSerializer =
    new _$CreateExternalAccountLinkDtoProviderEnumSerializer();

class _$CreateExternalAccountLinkDtoProviderEnumSerializer
    implements PrimitiveSerializer<CreateExternalAccountLinkDtoProviderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'plaid': 'plaid',
    'teller': 'teller',
    'truelayer': 'truelayer',
    'gocardless': 'gocardless',
    'simplefin': 'simplefin',
    'yodlee': 'yodlee',
    'beancountDirect': 'beancount-direct',
    'parsedBill': 'parsed-bill',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'plaid': 'plaid',
    'teller': 'teller',
    'truelayer': 'truelayer',
    'gocardless': 'gocardless',
    'simplefin': 'simplefin',
    'yodlee': 'yodlee',
    'beancount-direct': 'beancountDirect',
    'parsed-bill': 'parsedBill',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateExternalAccountLinkDtoProviderEnum
  ];
  @override
  final String wireName = 'CreateExternalAccountLinkDtoProviderEnum';

  @override
  Object serialize(Serializers serializers,
          CreateExternalAccountLinkDtoProviderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateExternalAccountLinkDtoProviderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateExternalAccountLinkDtoProviderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateExternalAccountLinkDto extends CreateExternalAccountLinkDto {
  @override
  final CreateExternalAccountLinkDtoProviderEnum provider;
  @override
  final String externalAccountId;
  @override
  final String beanAccountId;

  factory _$CreateExternalAccountLinkDto(
          [void Function(CreateExternalAccountLinkDtoBuilder)? updates]) =>
      (new CreateExternalAccountLinkDtoBuilder()..update(updates))._build();

  _$CreateExternalAccountLinkDto._(
      {required this.provider,
      required this.externalAccountId,
      required this.beanAccountId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        provider, r'CreateExternalAccountLinkDto', 'provider');
    BuiltValueNullFieldError.checkNotNull(externalAccountId,
        r'CreateExternalAccountLinkDto', 'externalAccountId');
    BuiltValueNullFieldError.checkNotNull(
        beanAccountId, r'CreateExternalAccountLinkDto', 'beanAccountId');
  }

  @override
  CreateExternalAccountLinkDto rebuild(
          void Function(CreateExternalAccountLinkDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateExternalAccountLinkDtoBuilder toBuilder() =>
      new CreateExternalAccountLinkDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateExternalAccountLinkDto &&
        provider == other.provider &&
        externalAccountId == other.externalAccountId &&
        beanAccountId == other.beanAccountId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jc(_$hash, externalAccountId.hashCode);
    _$hash = $jc(_$hash, beanAccountId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateExternalAccountLinkDto')
          ..add('provider', provider)
          ..add('externalAccountId', externalAccountId)
          ..add('beanAccountId', beanAccountId))
        .toString();
  }
}

class CreateExternalAccountLinkDtoBuilder
    implements
        Builder<CreateExternalAccountLinkDto,
            CreateExternalAccountLinkDtoBuilder> {
  _$CreateExternalAccountLinkDto? _$v;

  CreateExternalAccountLinkDtoProviderEnum? _provider;
  CreateExternalAccountLinkDtoProviderEnum? get provider => _$this._provider;
  set provider(CreateExternalAccountLinkDtoProviderEnum? provider) =>
      _$this._provider = provider;

  String? _externalAccountId;
  String? get externalAccountId => _$this._externalAccountId;
  set externalAccountId(String? externalAccountId) =>
      _$this._externalAccountId = externalAccountId;

  String? _beanAccountId;
  String? get beanAccountId => _$this._beanAccountId;
  set beanAccountId(String? beanAccountId) =>
      _$this._beanAccountId = beanAccountId;

  CreateExternalAccountLinkDtoBuilder() {
    CreateExternalAccountLinkDto._defaults(this);
  }

  CreateExternalAccountLinkDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _externalAccountId = $v.externalAccountId;
      _beanAccountId = $v.beanAccountId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateExternalAccountLinkDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateExternalAccountLinkDto;
  }

  @override
  void update(void Function(CreateExternalAccountLinkDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateExternalAccountLinkDto build() => _build();

  _$CreateExternalAccountLinkDto _build() {
    final _$result = _$v ??
        new _$CreateExternalAccountLinkDto._(
            provider: BuiltValueNullFieldError.checkNotNull(
                provider, r'CreateExternalAccountLinkDto', 'provider'),
            externalAccountId: BuiltValueNullFieldError.checkNotNull(
                externalAccountId,
                r'CreateExternalAccountLinkDto',
                'externalAccountId'),
            beanAccountId: BuiltValueNullFieldError.checkNotNull(beanAccountId,
                r'CreateExternalAccountLinkDto', 'beanAccountId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
