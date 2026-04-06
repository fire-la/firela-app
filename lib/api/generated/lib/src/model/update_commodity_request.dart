//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_commodity_request.g.dart';

/// UpdateCommodityRequest
///
/// Properties:
/// * [metadata]
/// * [symbolProfileId]
@BuiltValue()
abstract class UpdateCommodityRequest
    implements Built<UpdateCommodityRequest, UpdateCommodityRequestBuilder> {
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  @BuiltValueField(wireName: r'symbolProfileId')
  String? get symbolProfileId;

  UpdateCommodityRequest._();

  factory UpdateCommodityRequest(
          [void updates(UpdateCommodityRequestBuilder b)]) =
      _$UpdateCommodityRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCommodityRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCommodityRequest> get serializer =>
      _$UpdateCommodityRequestSerializer();
}

class _$UpdateCommodityRequestSerializer
    implements PrimitiveSerializer<UpdateCommodityRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateCommodityRequest,
    _$UpdateCommodityRequest
  ];

  @override
  final String wireName = r'UpdateCommodityRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCommodityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.symbolProfileId != null) {
      yield r'symbolProfileId';
      yield serializers.serialize(
        object.symbolProfileId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCommodityRequest object, {
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
    required UpdateCommodityRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.metadata.replace(valueDes);
          break;
        case r'symbolProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbolProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCommodityRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCommodityRequestBuilder();
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
