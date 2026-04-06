//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/commodity_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commodity_list_response.g.dart';

/// CommodityListResponse
///
/// Properties:
/// * [items]
/// * [total]
@BuiltValue()
abstract class CommodityListResponse
    implements Built<CommodityListResponse, CommodityListResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<CommodityResponse> get items;

  @BuiltValueField(wireName: r'total')
  int get total;

  CommodityListResponse._();

  factory CommodityListResponse(
      [void updates(CommodityListResponseBuilder b)]) = _$CommodityListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommodityListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommodityListResponse> get serializer =>
      _$CommodityListResponseSerializer();
}

class _$CommodityListResponseSerializer
    implements PrimitiveSerializer<CommodityListResponse> {
  @override
  final Iterable<Type> types = const [
    CommodityListResponse,
    _$CommodityListResponse
  ];

  @override
  final String wireName = r'CommodityListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommodityListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CommodityResponse)]),
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
    CommodityListResponse object, {
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
    required CommodityListResponseBuilder result,
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
                const FullType(BuiltList, [FullType(CommodityResponse)]),
          ) as BuiltList<CommodityResponse>;
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
  CommodityListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommodityListResponseBuilder();
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
