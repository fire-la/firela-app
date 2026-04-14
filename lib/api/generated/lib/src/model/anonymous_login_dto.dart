//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'anonymous_login_dto.g.dart';

/// AnonymousLoginDto
///
/// Properties:
/// * [accessToken] - Access token for anonymous login
@BuiltValue()
abstract class AnonymousLoginDto
    implements Built<AnonymousLoginDto, AnonymousLoginDtoBuilder> {
  /// Access token for anonymous login
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  AnonymousLoginDto._();

  factory AnonymousLoginDto([void updates(AnonymousLoginDtoBuilder b)]) =
      _$AnonymousLoginDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnonymousLoginDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnonymousLoginDto> get serializer =>
      _$AnonymousLoginDtoSerializer();
}

class _$AnonymousLoginDtoSerializer
    implements PrimitiveSerializer<AnonymousLoginDto> {
  @override
  final Iterable<Type> types = const [AnonymousLoginDto, _$AnonymousLoginDto];

  @override
  final String wireName = r'AnonymousLoginDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnonymousLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnonymousLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnonymousLoginDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnonymousLoginDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnonymousLoginDtoBuilder();
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
