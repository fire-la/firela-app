//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisor_login_response_dto.g.dart';

/// AdvisorLoginResponseDto
///
/// Properties:
/// * [authToken] - Advisor-scoped JWT auth token (short TTL, aggregate-only)
@BuiltValue()
abstract class AdvisorLoginResponseDto implements Built<AdvisorLoginResponseDto, AdvisorLoginResponseDtoBuilder> {
  /// Advisor-scoped JWT auth token (short TTL, aggregate-only)
  @BuiltValueField(wireName: r'authToken')
  String get authToken;

  AdvisorLoginResponseDto._();

  factory AdvisorLoginResponseDto([void updates(AdvisorLoginResponseDtoBuilder b)]) = _$AdvisorLoginResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdvisorLoginResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdvisorLoginResponseDto> get serializer => _$AdvisorLoginResponseDtoSerializer();
}

class _$AdvisorLoginResponseDtoSerializer implements PrimitiveSerializer<AdvisorLoginResponseDto> {
  @override
  final Iterable<Type> types = const [AdvisorLoginResponseDto, _$AdvisorLoginResponseDto];

  @override
  final String wireName = r'AdvisorLoginResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdvisorLoginResponseDto object, {
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
    AdvisorLoginResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdvisorLoginResponseDtoBuilder result,
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
  AdvisorLoginResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvisorLoginResponseDtoBuilder();
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

