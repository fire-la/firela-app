//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_suggestion_dto.g.dart';

/// TagSuggestionDto
///
/// Properties:
/// * [tag] - Tag name
/// * [count] - Usage count across ACTIVE transactions
@BuiltValue()
abstract class TagSuggestionDto implements Built<TagSuggestionDto, TagSuggestionDtoBuilder> {
  /// Tag name
  @BuiltValueField(wireName: r'tag')
  String get tag;

  /// Usage count across ACTIVE transactions
  @BuiltValueField(wireName: r'count')
  num get count;

  TagSuggestionDto._();

  factory TagSuggestionDto([void updates(TagSuggestionDtoBuilder b)]) = _$TagSuggestionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagSuggestionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagSuggestionDto> get serializer => _$TagSuggestionDtoSerializer();
}

class _$TagSuggestionDtoSerializer implements PrimitiveSerializer<TagSuggestionDto> {
  @override
  final Iterable<Type> types = const [TagSuggestionDto, _$TagSuggestionDto];

  @override
  final String wireName = r'TagSuggestionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagSuggestionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tag';
    yield serializers.serialize(
      object.tag,
      specifiedType: const FullType(String),
    );
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TagSuggestionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TagSuggestionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tag = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TagSuggestionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagSuggestionDtoBuilder();
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

