//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/create_commodity_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_commodities_request.g.dart';

/// BulkCreateCommoditiesRequest
///
/// Properties:
/// * [commodities]
@BuiltValue()
abstract class BulkCreateCommoditiesRequest
    implements
        Built<BulkCreateCommoditiesRequest,
            BulkCreateCommoditiesRequestBuilder> {
  @BuiltValueField(wireName: r'commodities')
  BuiltList<CreateCommodityRequest> get commodities;

  BulkCreateCommoditiesRequest._();

  factory BulkCreateCommoditiesRequest(
          [void updates(BulkCreateCommoditiesRequestBuilder b)]) =
      _$BulkCreateCommoditiesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreateCommoditiesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreateCommoditiesRequest> get serializer =>
      _$BulkCreateCommoditiesRequestSerializer();
}

class _$BulkCreateCommoditiesRequestSerializer
    implements PrimitiveSerializer<BulkCreateCommoditiesRequest> {
  @override
  final Iterable<Type> types = const [
    BulkCreateCommoditiesRequest,
    _$BulkCreateCommoditiesRequest
  ];

  @override
  final String wireName = r'BulkCreateCommoditiesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreateCommoditiesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'commodities';
    yield serializers.serialize(
      object.commodities,
      specifiedType:
          const FullType(BuiltList, [FullType(CreateCommodityRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreateCommoditiesRequest object, {
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
    required BulkCreateCommoditiesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'commodities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(CreateCommodityRequest)]),
          ) as BuiltList<CreateCommodityRequest>;
          result.commodities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreateCommoditiesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreateCommoditiesRequestBuilder();
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
