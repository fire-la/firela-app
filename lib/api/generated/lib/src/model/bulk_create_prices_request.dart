//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/create_price_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_prices_request.g.dart';

/// BulkCreatePricesRequest
///
/// Properties:
/// * [prices]
@BuiltValue()
abstract class BulkCreatePricesRequest
    implements Built<BulkCreatePricesRequest, BulkCreatePricesRequestBuilder> {
  @BuiltValueField(wireName: r'prices')
  BuiltList<CreatePriceRequest> get prices;

  BulkCreatePricesRequest._();

  factory BulkCreatePricesRequest(
          [void updates(BulkCreatePricesRequestBuilder b)]) =
      _$BulkCreatePricesRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreatePricesRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreatePricesRequest> get serializer =>
      _$BulkCreatePricesRequestSerializer();
}

class _$BulkCreatePricesRequestSerializer
    implements PrimitiveSerializer<BulkCreatePricesRequest> {
  @override
  final Iterable<Type> types = const [
    BulkCreatePricesRequest,
    _$BulkCreatePricesRequest
  ];

  @override
  final String wireName = r'BulkCreatePricesRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreatePricesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'prices';
    yield serializers.serialize(
      object.prices,
      specifiedType: const FullType(BuiltList, [FullType(CreatePriceRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreatePricesRequest object, {
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
    required BulkCreatePricesRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(CreatePriceRequest)]),
          ) as BuiltList<CreatePriceRequest>;
          result.prices.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreatePricesRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreatePricesRequestBuilder();
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
