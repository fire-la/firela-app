//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/template_metadata_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'template_metadata_response_dto.g.dart';

/// TemplateMetadataResponseDto
///
/// Properties:
/// * [metadata] 
@BuiltValue()
abstract class TemplateMetadataResponseDto implements Built<TemplateMetadataResponseDto, TemplateMetadataResponseDtoBuilder> {
  @BuiltValueField(wireName: r'metadata')
  TemplateMetadataDto? get metadata;

  TemplateMetadataResponseDto._();

  factory TemplateMetadataResponseDto([void updates(TemplateMetadataResponseDtoBuilder b)]) = _$TemplateMetadataResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TemplateMetadataResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TemplateMetadataResponseDto> get serializer => _$TemplateMetadataResponseDtoSerializer();
}

class _$TemplateMetadataResponseDtoSerializer implements PrimitiveSerializer<TemplateMetadataResponseDto> {
  @override
  final Iterable<Type> types = const [TemplateMetadataResponseDto, _$TemplateMetadataResponseDto];

  @override
  final String wireName = r'TemplateMetadataResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TemplateMetadataResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(TemplateMetadataDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TemplateMetadataResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TemplateMetadataResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TemplateMetadataDto),
          ) as TemplateMetadataDto;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TemplateMetadataResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateMetadataResponseDtoBuilder();
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

