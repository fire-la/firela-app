//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_external_account_link_dto.g.dart';

/// CreateExternalAccountLinkDto
///
/// Properties:
/// * [provider] - Open Banking provider (whitelist)
/// * [externalAccountId] - External account ID from the provider
/// * [beanAccountId] - Target BeanAccount ID (must belong to the JWT user)
@BuiltValue()
abstract class CreateExternalAccountLinkDto implements Built<CreateExternalAccountLinkDto, CreateExternalAccountLinkDtoBuilder> {
  /// Open Banking provider (whitelist)
  @BuiltValueField(wireName: r'provider')
  CreateExternalAccountLinkDtoProviderEnum get provider;
  // enum providerEnum {  plaid,  teller,  truelayer,  gocardless,  simplefin,  yodlee,  beancount-direct,  parsed-bill,  };

  /// External account ID from the provider
  @BuiltValueField(wireName: r'externalAccountId')
  String get externalAccountId;

  /// Target BeanAccount ID (must belong to the JWT user)
  @BuiltValueField(wireName: r'beanAccountId')
  String get beanAccountId;

  CreateExternalAccountLinkDto._();

  factory CreateExternalAccountLinkDto([void updates(CreateExternalAccountLinkDtoBuilder b)]) = _$CreateExternalAccountLinkDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateExternalAccountLinkDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateExternalAccountLinkDto> get serializer => _$CreateExternalAccountLinkDtoSerializer();
}

class _$CreateExternalAccountLinkDtoSerializer implements PrimitiveSerializer<CreateExternalAccountLinkDto> {
  @override
  final Iterable<Type> types = const [CreateExternalAccountLinkDto, _$CreateExternalAccountLinkDto];

  @override
  final String wireName = r'CreateExternalAccountLinkDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateExternalAccountLinkDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(CreateExternalAccountLinkDtoProviderEnum),
    );
    yield r'externalAccountId';
    yield serializers.serialize(
      object.externalAccountId,
      specifiedType: const FullType(String),
    );
    yield r'beanAccountId';
    yield serializers.serialize(
      object.beanAccountId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateExternalAccountLinkDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateExternalAccountLinkDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateExternalAccountLinkDtoProviderEnum),
          ) as CreateExternalAccountLinkDtoProviderEnum;
          result.provider = valueDes;
          break;
        case r'externalAccountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalAccountId = valueDes;
          break;
        case r'beanAccountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.beanAccountId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateExternalAccountLinkDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateExternalAccountLinkDtoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class CreateExternalAccountLinkDtoProviderEnum extends EnumClass {

  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'plaid')
  static const CreateExternalAccountLinkDtoProviderEnum plaid = _$createExternalAccountLinkDtoProviderEnum_plaid;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'teller')
  static const CreateExternalAccountLinkDtoProviderEnum teller = _$createExternalAccountLinkDtoProviderEnum_teller;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'truelayer')
  static const CreateExternalAccountLinkDtoProviderEnum truelayer = _$createExternalAccountLinkDtoProviderEnum_truelayer;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'gocardless')
  static const CreateExternalAccountLinkDtoProviderEnum gocardless = _$createExternalAccountLinkDtoProviderEnum_gocardless;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'simplefin')
  static const CreateExternalAccountLinkDtoProviderEnum simplefin = _$createExternalAccountLinkDtoProviderEnum_simplefin;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'yodlee')
  static const CreateExternalAccountLinkDtoProviderEnum yodlee = _$createExternalAccountLinkDtoProviderEnum_yodlee;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'beancount-direct')
  static const CreateExternalAccountLinkDtoProviderEnum beancountDirect = _$createExternalAccountLinkDtoProviderEnum_beancountDirect;
  /// Open Banking provider (whitelist)
  @BuiltValueEnumConst(wireName: r'parsed-bill')
  static const CreateExternalAccountLinkDtoProviderEnum parsedBill = _$createExternalAccountLinkDtoProviderEnum_parsedBill;

  static Serializer<CreateExternalAccountLinkDtoProviderEnum> get serializer => _$createExternalAccountLinkDtoProviderEnumSerializer;

  const CreateExternalAccountLinkDtoProviderEnum._(String name): super(name);

  static BuiltSet<CreateExternalAccountLinkDtoProviderEnum> get values => _$createExternalAccountLinkDtoProviderEnumValues;
  static CreateExternalAccountLinkDtoProviderEnum valueOf(String name) => _$createExternalAccountLinkDtoProviderEnumValueOf(name);
}

