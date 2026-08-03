//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anonymous_login_response_dto.g.dart';

/// AnonymousLoginResponseDto
///
/// Properties:
/// * [authToken] - JWT auth token
@BuiltValue()
abstract class AnonymousLoginResponseDto implements Built<AnonymousLoginResponseDto, AnonymousLoginResponseDtoBuilder> {
  /// JWT auth token
  @BuiltValueField(wireName: r'authToken')
  String get authToken;

  AnonymousLoginResponseDto._();

  factory AnonymousLoginResponseDto([void updates(AnonymousLoginResponseDtoBuilder b)]) = _$AnonymousLoginResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnonymousLoginResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnonymousLoginResponseDto> get serializer => _$AnonymousLoginResponseDtoSerializer();
}

class _$AnonymousLoginResponseDtoSerializer implements PrimitiveSerializer<AnonymousLoginResponseDto> {
  @override
  final Iterable<Type> types = const [AnonymousLoginResponseDto, _$AnonymousLoginResponseDto];

  @override
  final String wireName = r'AnonymousLoginResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnonymousLoginResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authToken';
    yield serializers.serialize(
      object.authToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnonymousLoginResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnonymousLoginResponseDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnonymousLoginResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnonymousLoginResponseDtoBuilder();
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

