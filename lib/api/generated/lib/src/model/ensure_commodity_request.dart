//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ensure_commodity_request.g.dart';

/// EnsureCommodityRequest
///
/// Properties:
/// * [date]
/// * [metadata]
/// * [symbolProfileId]
@BuiltValue()
abstract class EnsureCommodityRequest
    implements Built<EnsureCommodityRequest, EnsureCommodityRequestBuilder> {
  @BuiltValueField(wireName: r'date')
  Date get date;

  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, JsonObject?>? get metadata;

  @BuiltValueField(wireName: r'symbolProfileId')
  String? get symbolProfileId;

  EnsureCommodityRequest._();

  factory EnsureCommodityRequest(
          [void updates(EnsureCommodityRequestBuilder b)]) =
      _$EnsureCommodityRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EnsureCommodityRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EnsureCommodityRequest> get serializer =>
      _$EnsureCommodityRequestSerializer();
}

class _$EnsureCommodityRequestSerializer
    implements PrimitiveSerializer<EnsureCommodityRequest> {
  @override
  final Iterable<Type> types = const [
    EnsureCommodityRequest,
    _$EnsureCommodityRequest
  ];

  @override
  final String wireName = r'EnsureCommodityRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EnsureCommodityRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
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
    EnsureCommodityRequest object, {
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
    required EnsureCommodityRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
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
  EnsureCommodityRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnsureCommodityRequestBuilder();
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
