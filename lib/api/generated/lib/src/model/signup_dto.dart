//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signup_dto.g.dart';

/// SignupDto
///
/// Properties:
/// * [turnstileToken] - Cloudflare Turnstile verification token (optional when Turnstile disabled)
@BuiltValue()
abstract class SignupDto implements Built<SignupDto, SignupDtoBuilder> {
  /// Cloudflare Turnstile verification token (optional when Turnstile disabled)
  @BuiltValueField(wireName: r'turnstileToken')
  String? get turnstileToken;

  SignupDto._();

  factory SignupDto([void updates(SignupDtoBuilder b)]) = _$SignupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignupDto> get serializer => _$SignupDtoSerializer();
}

class _$SignupDtoSerializer implements PrimitiveSerializer<SignupDto> {
  @override
  final Iterable<Type> types = const [SignupDto, _$SignupDto];

  @override
  final String wireName = r'SignupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.turnstileToken != null) {
      yield r'turnstileToken';
      yield serializers.serialize(
        object.turnstileToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignupDto object, {
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
    required SignupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'turnstileToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.turnstileToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignupDtoBuilder();
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
