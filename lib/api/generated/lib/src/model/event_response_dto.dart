//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_response_dto.g.dart';

/// EventResponseDto
///
/// Properties:
/// * [id] - Unique identifier
/// * [userId] - User ID (owner of the life event)
/// * [date] - Life event date (ISO 8601 format)
/// * [type] - Life event type (user-defined, e.g., \"employer\", \"location\")
/// * [description] - Life event description. May be an empty string (a valid value distinct from absence).
/// * [meta] - Product-side metadata (free-form JSON)
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp. Also emitted as the ETag response header for If-Match optimistic concurrency.
@BuiltValue()
abstract class EventResponseDto implements Built<EventResponseDto, EventResponseDtoBuilder> {
  /// Unique identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID (owner of the life event)
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Life event date (ISO 8601 format)
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Life event type (user-defined, e.g., \"employer\", \"location\")
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Life event description. May be an empty string (a valid value distinct from absence).
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Product-side metadata (free-form JSON)
  @BuiltValueField(wireName: r'meta')
  JsonObject get meta;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp. Also emitted as the ETag response header for If-Match optimistic concurrency.
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  EventResponseDto._();

  factory EventResponseDto([void updates(EventResponseDtoBuilder b)]) = _$EventResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventResponseDto> get serializer => _$EventResponseDtoSerializer();
}

class _$EventResponseDtoSerializer implements PrimitiveSerializer<EventResponseDto> {
  @override
  final Iterable<Type> types = const [EventResponseDto, _$EventResponseDto];

  @override
  final String wireName = r'EventResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
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
    yield r'meta';
    yield serializers.serialize(
      object.meta,
      specifiedType: const FullType(JsonObject),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
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
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventResponseDtoBuilder();
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

