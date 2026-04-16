//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/review_summary_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_list_response_dto.g.dart';

/// ReviewListResponseDto
///
/// Properties:
/// * [items]
/// * [total] - Total number of items
/// * [page] - Current page number
/// * [limit] - Items per page
/// * [hasMore] - Whether there are more pages
@BuiltValue()
abstract class ReviewListResponseDto
    implements Built<ReviewListResponseDto, ReviewListResponseDtoBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ReviewSummaryDto> get items;

  /// Total number of items
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Current page number
  @BuiltValueField(wireName: r'page')
  num get page;

  /// Items per page
  @BuiltValueField(wireName: r'limit')
  num get limit;

  /// Whether there are more pages
  @BuiltValueField(wireName: r'hasMore')
  bool get hasMore;

  ReviewListResponseDto._();

  factory ReviewListResponseDto(
      [void updates(ReviewListResponseDtoBuilder b)]) = _$ReviewListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewListResponseDto> get serializer =>
      _$ReviewListResponseDtoSerializer();
}

class _$ReviewListResponseDtoSerializer
    implements PrimitiveSerializer<ReviewListResponseDto> {
  @override
  final Iterable<Type> types = const [
    ReviewListResponseDto,
    _$ReviewListResponseDto
  ];

  @override
  final String wireName = r'ReviewListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ReviewSummaryDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'page';
    yield serializers.serialize(
      object.page,
      specifiedType: const FullType(num),
    );
    yield r'limit';
    yield serializers.serialize(
      object.limit,
      specifiedType: const FullType(num),
    );
    yield r'hasMore';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewListResponseDto object, {
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
    required ReviewListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ReviewSummaryDto)]),
          ) as BuiltList<ReviewSummaryDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.page = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.limit = valueDes;
          break;
        case r'hasMore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewListResponseDtoBuilder();
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
