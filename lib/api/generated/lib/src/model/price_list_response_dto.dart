//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/price_response_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'price_list_response_dto.g.dart';

/// PriceListResponseDto
///
/// Properties:
/// * [items] - List of prices
/// * [total] - Total number of prices
@BuiltValue()
abstract class PriceListResponseDto implements Built<PriceListResponseDto, PriceListResponseDtoBuilder> {
  /// List of prices
  @BuiltValueField(wireName: r'items')
  BuiltList<PriceResponseDto> get items;

  /// Total number of prices
  @BuiltValueField(wireName: r'total')
  num get total;

  PriceListResponseDto._();

  factory PriceListResponseDto([void updates(PriceListResponseDtoBuilder b)]) = _$PriceListResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PriceListResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PriceListResponseDto> get serializer => _$PriceListResponseDtoSerializer();
}

class _$PriceListResponseDtoSerializer implements PrimitiveSerializer<PriceListResponseDto> {
  @override
  final Iterable<Type> types = const [PriceListResponseDto, _$PriceListResponseDto];

  @override
  final String wireName = r'PriceListResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PriceListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PriceResponseDto)]),
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
    PriceListResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PriceListResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PriceResponseDto)]),
          ) as BuiltList<PriceResponseDto>;
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
  PriceListResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceListResponseDtoBuilder();
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

