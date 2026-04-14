//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'supported_providers_response_dto.g.dart';

/// SupportedProvidersResponseDto
///
/// Properties:
/// * [providers] - List of supported provider names
@BuiltValue()
abstract class SupportedProvidersResponseDto
    implements
        Built<SupportedProvidersResponseDto,
            SupportedProvidersResponseDtoBuilder> {
  /// List of supported provider names
  @BuiltValueField(wireName: r'providers')
  BuiltList<String> get providers;

  SupportedProvidersResponseDto._();

  factory SupportedProvidersResponseDto(
          [void updates(SupportedProvidersResponseDtoBuilder b)]) =
      _$SupportedProvidersResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SupportedProvidersResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SupportedProvidersResponseDto> get serializer =>
      _$SupportedProvidersResponseDtoSerializer();
}

class _$SupportedProvidersResponseDtoSerializer
    implements PrimitiveSerializer<SupportedProvidersResponseDto> {
  @override
  final Iterable<Type> types = const [
    SupportedProvidersResponseDto,
    _$SupportedProvidersResponseDto
  ];

  @override
  final String wireName = r'SupportedProvidersResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SupportedProvidersResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'providers';
    yield serializers.serialize(
      object.providers,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SupportedProvidersResponseDto object, {
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
    required SupportedProvidersResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'providers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.providers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SupportedProvidersResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SupportedProvidersResponseDtoBuilder();
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
