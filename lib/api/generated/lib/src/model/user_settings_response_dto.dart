//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_settings_response_dto.g.dart';

/// UserSettingsResponseDto
///
/// Properties:
/// * [baseCurrency] - Base currency (ISO 4217) for net-worth/report aggregation. Independent of region (ADR-0006).
@BuiltValue()
abstract class UserSettingsResponseDto implements Built<UserSettingsResponseDto, UserSettingsResponseDtoBuilder> {
  /// Base currency (ISO 4217) for net-worth/report aggregation. Independent of region (ADR-0006).
  @BuiltValueField(wireName: r'baseCurrency')
  String? get baseCurrency;

  UserSettingsResponseDto._();

  factory UserSettingsResponseDto([void updates(UserSettingsResponseDtoBuilder b)]) = _$UserSettingsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingsResponseDto> get serializer => _$UserSettingsResponseDtoSerializer();
}

class _$UserSettingsResponseDtoSerializer implements PrimitiveSerializer<UserSettingsResponseDto> {
  @override
  final Iterable<Type> types = const [UserSettingsResponseDto, _$UserSettingsResponseDto];

  @override
  final String wireName = r'UserSettingsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'baseCurrency';
    yield object.baseCurrency == null ? null : serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.baseCurrency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingsResponseDtoBuilder();
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

