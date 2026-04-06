//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/price_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'price_list_response.g.dart';

/// PriceListResponse
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class PriceListResponse
    implements Built<PriceListResponse, PriceListResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<PriceResponse> get items;

  @BuiltValueField(wireName: r'total')
  int get total;

  PriceListResponse._();

  factory PriceListResponse([void updates(PriceListResponseBuilder b)]) =
      _$PriceListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PriceListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PriceListResponse> get serializer =>
      _$PriceListResponseSerializer();
}

class _$PriceListResponseSerializer
    implements PrimitiveSerializer<PriceListResponse> {
  @override
  final Iterable<Type> types = const [PriceListResponse, _$PriceListResponse];

  @override
  final String wireName = r'PriceListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PriceListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PriceResponse)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PriceListResponse object, {
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
    required PriceListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PriceResponse)]),
          ) as BuiltList<PriceResponse>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  PriceListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceListResponseBuilder();
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
