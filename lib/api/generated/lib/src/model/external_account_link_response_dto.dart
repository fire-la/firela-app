//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'external_account_link_response_dto.g.dart';

/// ExternalAccountLinkResponseDto
///
/// Properties:
/// * [id] 
/// * [provider] 
/// * [externalAccountId] 
/// * [beanAccountId] 
/// * [isActive] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ExternalAccountLinkResponseDto implements Built<ExternalAccountLinkResponseDto, ExternalAccountLinkResponseDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'provider')
  String get provider;

  @BuiltValueField(wireName: r'externalAccountId')
  String get externalAccountId;

  @BuiltValueField(wireName: r'beanAccountId')
  String get beanAccountId;

  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String get updatedAt;

  ExternalAccountLinkResponseDto._();

  factory ExternalAccountLinkResponseDto([void updates(ExternalAccountLinkResponseDtoBuilder b)]) = _$ExternalAccountLinkResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExternalAccountLinkResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExternalAccountLinkResponseDto> get serializer => _$ExternalAccountLinkResponseDtoSerializer();
}

class _$ExternalAccountLinkResponseDtoSerializer implements PrimitiveSerializer<ExternalAccountLinkResponseDto> {
  @override
  final Iterable<Type> types = const [ExternalAccountLinkResponseDto, _$ExternalAccountLinkResponseDto];

  @override
  final String wireName = r'ExternalAccountLinkResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExternalAccountLinkResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
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
    yield r'isActive';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExternalAccountLinkResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExternalAccountLinkResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExternalAccountLinkResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExternalAccountLinkResponseDtoBuilder();
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

