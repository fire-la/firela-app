//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_bean_event_dto.g.dart';

/// CreateBeanEventDto
///
/// Properties:
/// * [date] - Life event date (ISO 8601)
/// * [type] - Life event type (e.g., \"employer\", \"location\", \"marital-status\") — user-defined, no enum constraint at engine layer
/// * [description] - Life event description. Empty string is a VALID value (distinct from absence).
/// * [meta] - Product-side metadata (lives in BeanEvent.meta JSON, never in engine Event fields)
@BuiltValue()
abstract class CreateBeanEventDto implements Built<CreateBeanEventDto, CreateBeanEventDtoBuilder> {
  /// Life event date (ISO 8601)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Life event type (e.g., \"employer\", \"location\", \"marital-status\") — user-defined, no enum constraint at engine layer
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Life event description. Empty string is a VALID value (distinct from absence).
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Product-side metadata (lives in BeanEvent.meta JSON, never in engine Event fields)
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  CreateBeanEventDto._();

  factory CreateBeanEventDto([void updates(CreateBeanEventDtoBuilder b)]) = _$CreateBeanEventDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBeanEventDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBeanEventDto> get serializer => _$CreateBeanEventDtoSerializer();
}

class _$CreateBeanEventDtoSerializer implements PrimitiveSerializer<CreateBeanEventDto> {
  @override
  final Iterable<Type> types = const [CreateBeanEventDto, _$CreateBeanEventDto];

  @override
  final String wireName = r'CreateBeanEventDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBeanEventDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBeanEventDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBeanEventDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateBeanEventDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBeanEventDtoBuilder();
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

