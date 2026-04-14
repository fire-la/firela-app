//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_stats_dto.g.dart';

/// ReviewStatsDto
///
/// Properties:
/// * [total] - Total pending reviews
/// * [byType] - Count by type
/// * [oldestPending] - Oldest pending review date
@BuiltValue()
abstract class ReviewStatsDto
    implements Built<ReviewStatsDto, ReviewStatsDtoBuilder> {
  /// Total pending reviews
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Count by type
  @BuiltValueField(wireName: r'byType')
  JsonObject get byType;

  /// Oldest pending review date
  @BuiltValueField(wireName: r'oldestPending')
  DateTime? get oldestPending;

  ReviewStatsDto._();

  factory ReviewStatsDto([void updates(ReviewStatsDtoBuilder b)]) =
      _$ReviewStatsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewStatsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewStatsDto> get serializer =>
      _$ReviewStatsDtoSerializer();
}

class _$ReviewStatsDtoSerializer
    implements PrimitiveSerializer<ReviewStatsDto> {
  @override
  final Iterable<Type> types = const [ReviewStatsDto, _$ReviewStatsDto];

  @override
  final String wireName = r'ReviewStatsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewStatsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'byType';
    yield serializers.serialize(
      object.byType,
      specifiedType: const FullType(JsonObject),
    );
    if (object.oldestPending != null) {
      yield r'oldestPending';
      yield serializers.serialize(
        object.oldestPending,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewStatsDto object, {
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
    required ReviewStatsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'byType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.byType = valueDes;
          break;
        case r'oldestPending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.oldestPending = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewStatsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewStatsDtoBuilder();
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
