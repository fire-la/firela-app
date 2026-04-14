//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/commodity_response_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commodity_list_response_dto.g.dart';

/// CommodityListResponseDto
///
/// Properties:
/// * [items] - List of commodities
/// * [total] - Total number of commodities
@BuiltValue()
abstract class CommodityListResponseDto
    implements
        Built<CommodityListResponseDto, CommodityListResponseDtoBuilder> {
  /// List of commodities
  @BuiltValueField(wireName: r'items')
  BuiltList<CommodityResponseDto> get items;

  /// Total number of commodities
  @BuiltValueField(wireName: r'total')
  num get total;

  CommodityListResponseDto._();

  factory CommodityListResponseDto(
          [void updates(CommodityListResponseDtoBuilder b)]) =
      _$CommodityListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommodityListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommodityListResponseDto> get serializer =>
      _$CommodityListResponseDtoSerializer();
}

class _$CommodityListResponseDtoSerializer
    implements PrimitiveSerializer<CommodityListResponseDto> {
  @override
  final Iterable<Type> types = const [
    CommodityListResponseDto,
    _$CommodityListResponseDto
  ];

  @override
  final String wireName = r'CommodityListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommodityListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType:
          const FullType(BuiltList, [FullType(CommodityResponseDto)]),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CommodityListResponseDto object, {
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
    required CommodityListResponseDtoBuilder result,
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
                const FullType(BuiltList, [FullType(CommodityResponseDto)]),
          ) as BuiltList<CommodityResponseDto>;
          result.items.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
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
  CommodityListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommodityListResponseDtoBuilder();
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
