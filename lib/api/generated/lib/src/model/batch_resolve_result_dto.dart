//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_resolve_result_dto.g.dart';

/// BatchResolveResultDto
///
/// Properties:
/// * [successCount] - Number of successfully resolved items
/// * [failedCount] - Number of failed items
/// * [results] - Details for each item
@BuiltValue()
abstract class BatchResolveResultDto implements Built<BatchResolveResultDto, BatchResolveResultDtoBuilder> {
  /// Number of successfully resolved items
  @BuiltValueField(wireName: r'successCount')
  num get successCount;

  /// Number of failed items
  @BuiltValueField(wireName: r'failedCount')
  num get failedCount;

  /// Details for each item
  @BuiltValueField(wireName: r'results')
  BuiltList<String> get results;

  BatchResolveResultDto._();

  factory BatchResolveResultDto([void updates(BatchResolveResultDtoBuilder b)]) = _$BatchResolveResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResolveResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResolveResultDto> get serializer => _$BatchResolveResultDtoSerializer();
}

class _$BatchResolveResultDtoSerializer implements PrimitiveSerializer<BatchResolveResultDto> {
  @override
  final Iterable<Type> types = const [BatchResolveResultDto, _$BatchResolveResultDto];

  @override
  final String wireName = r'BatchResolveResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResolveResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'successCount';
    yield serializers.serialize(
      object.successCount,
      specifiedType: const FullType(num),
    );
    yield r'failedCount';
    yield serializers.serialize(
      object.failedCount,
      specifiedType: const FullType(num),
    );
    yield r'results';
    yield serializers.serialize(
      object.results,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResolveResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResolveResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'successCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.successCount = valueDes;
          break;
        case r'failedCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.failedCount = valueDes;
          break;
        case r'results':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.results.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchResolveResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResolveResultDtoBuilder();
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

