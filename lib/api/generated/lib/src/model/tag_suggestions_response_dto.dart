//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/tag_suggestion_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_suggestions_response_dto.g.dart';

/// TagSuggestionsResponseDto
///
/// Properties:
/// * [data] - Tag suggestions sorted as requested
@BuiltValue()
abstract class TagSuggestionsResponseDto implements Built<TagSuggestionsResponseDto, TagSuggestionsResponseDtoBuilder> {
  /// Tag suggestions sorted as requested
  @BuiltValueField(wireName: r'data')
  BuiltList<TagSuggestionDto> get data;

  TagSuggestionsResponseDto._();

  factory TagSuggestionsResponseDto([void updates(TagSuggestionsResponseDtoBuilder b)]) = _$TagSuggestionsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagSuggestionsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagSuggestionsResponseDto> get serializer => _$TagSuggestionsResponseDtoSerializer();
}

class _$TagSuggestionsResponseDtoSerializer implements PrimitiveSerializer<TagSuggestionsResponseDto> {
  @override
  final Iterable<Type> types = const [TagSuggestionsResponseDto, _$TagSuggestionsResponseDto];

  @override
  final String wireName = r'TagSuggestionsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagSuggestionsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(TagSuggestionDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagSuggestionsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TagSuggestionsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TagSuggestionDto)]),
          ) as BuiltList<TagSuggestionDto>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagSuggestionsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagSuggestionsResponseDtoBuilder();
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

