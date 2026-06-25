//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_resolve_dto.g.dart';

/// BatchResolveDto
///
/// Properties:
/// * [reviewIds] - Review item IDs to resolve
/// * [action] - Decision action to apply to all items
/// * [data] - Additional data for the decision
@BuiltValue()
abstract class BatchResolveDto implements Built<BatchResolveDto, BatchResolveDtoBuilder> {
  /// Review item IDs to resolve
  @BuiltValueField(wireName: r'reviewIds')
  BuiltList<String> get reviewIds;

  /// Decision action to apply to all items
  @BuiltValueField(wireName: r'action')
  String get action;

  /// Additional data for the decision
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  BatchResolveDto._();

  factory BatchResolveDto([void updates(BatchResolveDtoBuilder b)]) = _$BatchResolveDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResolveDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResolveDto> get serializer => _$BatchResolveDtoSerializer();
}

class _$BatchResolveDtoSerializer implements PrimitiveSerializer<BatchResolveDto> {
  @override
  final Iterable<Type> types = const [BatchResolveDto, _$BatchResolveDto];

  @override
  final String wireName = r'BatchResolveDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResolveDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reviewIds';
    yield serializers.serialize(
      object.reviewIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResolveDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResolveDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reviewIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reviewIds.replace(valueDes);
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchResolveDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResolveDtoBuilder();
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

