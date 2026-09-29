//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisor_login_dto.g.dart';

/// AdvisorLoginDto
///
/// Properties:
/// * [accessToken] - Access token to exchange for an advisor-scoped token
@BuiltValue()
abstract class AdvisorLoginDto implements Built<AdvisorLoginDto, AdvisorLoginDtoBuilder> {
  /// Access token to exchange for an advisor-scoped token
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  AdvisorLoginDto._();

  factory AdvisorLoginDto([void updates(AdvisorLoginDtoBuilder b)]) = _$AdvisorLoginDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdvisorLoginDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdvisorLoginDto> get serializer => _$AdvisorLoginDtoSerializer();
}

class _$AdvisorLoginDtoSerializer implements PrimitiveSerializer<AdvisorLoginDto> {
  @override
  final Iterable<Type> types = const [AdvisorLoginDto, _$AdvisorLoginDto];

  @override
  final String wireName = r'AdvisorLoginDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdvisorLoginDto object, {
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
    AdvisorLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdvisorLoginDtoBuilder result,
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
  AdvisorLoginDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdvisorLoginDtoBuilder();
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

