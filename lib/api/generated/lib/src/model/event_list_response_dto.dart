//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/event_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_list_response_dto.g.dart';

/// EventListResponseDto
///
/// Properties:
/// * [items] - List of life events
/// * [total] - Total number of life events matching the query
@BuiltValue()
abstract class EventListResponseDto implements Built<EventListResponseDto, EventListResponseDtoBuilder> {
  /// List of life events
  @BuiltValueField(wireName: r'items')
  BuiltList<EventResponseDto> get items;

  /// Total number of life events matching the query
  @BuiltValueField(wireName: r'total')
  num get total;

  EventListResponseDto._();

  factory EventListResponseDto([void updates(EventListResponseDtoBuilder b)]) = _$EventListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EventListResponseDto> get serializer => _$EventListResponseDtoSerializer();
}

class _$EventListResponseDtoSerializer implements PrimitiveSerializer<EventListResponseDto> {
  @override
  final Iterable<Type> types = const [EventListResponseDto, _$EventListResponseDto];

  @override
  final String wireName = r'EventListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EventListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(EventResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EventListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(EventResponseDto)]),
          ) as BuiltList<EventResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EventListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventListResponseDtoBuilder();
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

