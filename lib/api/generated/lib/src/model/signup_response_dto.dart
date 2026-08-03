//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signup_response_dto.g.dart';

/// SignupResponseDto
///
/// Properties:
/// * [authToken] - JWT auth token
/// * [accessToken] - Auto-generated access token
/// * [role] - Assigned user role
@BuiltValue()
abstract class SignupResponseDto implements Built<SignupResponseDto, SignupResponseDtoBuilder> {
  /// JWT auth token
  @BuiltValueField(wireName: r'authToken')
  String get authToken;

  /// Auto-generated access token
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  /// Assigned user role
  @BuiltValueField(wireName: r'role')
  SignupResponseDtoRoleEnum get role;
  // enum roleEnum {  USER,  ADMIN,  DEMO,  INACTIVE,  PAID,  OPS,  };

  SignupResponseDto._();

  factory SignupResponseDto([void updates(SignupResponseDtoBuilder b)]) = _$SignupResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignupResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignupResponseDto> get serializer => _$SignupResponseDtoSerializer();
}

class _$SignupResponseDtoSerializer implements PrimitiveSerializer<SignupResponseDto> {
  @override
  final Iterable<Type> types = const [SignupResponseDto, _$SignupResponseDto];

  @override
  final String wireName = r'SignupResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignupResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authToken';
    yield serializers.serialize(
      object.authToken,
      specifiedType: const FullType(String),
    );
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(SignupResponseDtoRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignupResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignupResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authToken = valueDes;
          break;
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignupResponseDtoRoleEnum),
          ) as SignupResponseDtoRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignupResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignupResponseDtoBuilder();
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

class SignupResponseDtoRoleEnum extends EnumClass {

  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'USER')
  static const SignupResponseDtoRoleEnum USER = _$signupResponseDtoRoleEnum_USER;
  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'ADMIN')
  static const SignupResponseDtoRoleEnum ADMIN = _$signupResponseDtoRoleEnum_ADMIN;
  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'DEMO')
  static const SignupResponseDtoRoleEnum DEMO = _$signupResponseDtoRoleEnum_DEMO;
  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'INACTIVE')
  static const SignupResponseDtoRoleEnum INACTIVE = _$signupResponseDtoRoleEnum_INACTIVE;
  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'PAID')
  static const SignupResponseDtoRoleEnum PAID = _$signupResponseDtoRoleEnum_PAID;
  /// Assigned user role
  @BuiltValueEnumConst(wireName: r'OPS')
  static const SignupResponseDtoRoleEnum OPS = _$signupResponseDtoRoleEnum_OPS;

  static Serializer<SignupResponseDtoRoleEnum> get serializer => _$signupResponseDtoRoleEnumSerializer;

  const SignupResponseDtoRoleEnum._(String name): super(name);

  static BuiltSet<SignupResponseDtoRoleEnum> get values => _$signupResponseDtoRoleEnumValues;
  static SignupResponseDtoRoleEnum valueOf(String name) => _$signupResponseDtoRoleEnumValueOf(name);
}

