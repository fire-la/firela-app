//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_void_result_dto.g.dart';

/// BatchVoidResultDto
///
/// Properties:
/// * [voided] - Number of transactions transitioned to VOIDED by this call (single DB transaction).
/// * [notFound] - IDs not voided: nonexistent, or owned but no longer ACTIVE (already VOIDED/SUPERSEDED). An idempotent retry of a fully voided batch therefore reads as success: voided 0 with notFound holding every id.
@BuiltValue()
abstract class BatchVoidResultDto implements Built<BatchVoidResultDto, BatchVoidResultDtoBuilder> {
  /// Number of transactions transitioned to VOIDED by this call (single DB transaction).
  @BuiltValueField(wireName: r'voided')
  num get voided;

  /// IDs not voided: nonexistent, or owned but no longer ACTIVE (already VOIDED/SUPERSEDED). An idempotent retry of a fully voided batch therefore reads as success: voided 0 with notFound holding every id.
  @BuiltValueField(wireName: r'notFound')
  BuiltList<String> get notFound;

  BatchVoidResultDto._();

  factory BatchVoidResultDto([void updates(BatchVoidResultDtoBuilder b)]) = _$BatchVoidResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchVoidResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchVoidResultDto> get serializer => _$BatchVoidResultDtoSerializer();
}

class _$BatchVoidResultDtoSerializer implements PrimitiveSerializer<BatchVoidResultDto> {
  @override
  final Iterable<Type> types = const [BatchVoidResultDto, _$BatchVoidResultDto];

  @override
  final String wireName = r'BatchVoidResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchVoidResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'voided';
    yield serializers.serialize(
      object.voided,
      specifiedType: const FullType(num),
    );
    yield r'notFound';
    yield serializers.serialize(
      object.notFound,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchVoidResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchVoidResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voided':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.voided = valueDes;
          break;
        case r'notFound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.notFound.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchVoidResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchVoidResultDtoBuilder();
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

