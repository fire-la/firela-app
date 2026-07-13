//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cost_detail_dto.g.dart';

/// CostDetailDto
///
/// Properties:
/// * [number] - Per-unit cost basis (mirrors engine Cost.number)
/// * [currency] - Cost currency
/// * [date] - Lot acquisition date (ISO yyyy-mm-dd)
/// * [label] - Lot label
@BuiltValue()
abstract class CostDetailDto implements Built<CostDetailDto, CostDetailDtoBuilder> {
  /// Per-unit cost basis (mirrors engine Cost.number)
  @BuiltValueField(wireName: r'number')
  String? get number;

  /// Cost currency
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Lot acquisition date (ISO yyyy-mm-dd)
  @BuiltValueField(wireName: r'date')
  String? get date;

  /// Lot label
  @BuiltValueField(wireName: r'label')
  String? get label;

  CostDetailDto._();

  factory CostDetailDto([void updates(CostDetailDtoBuilder b)]) = _$CostDetailDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CostDetailDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CostDetailDto> get serializer => _$CostDetailDtoSerializer();
}

class _$CostDetailDtoSerializer implements PrimitiveSerializer<CostDetailDto> {
  @override
  final Iterable<Type> types = const [CostDetailDto, _$CostDetailDto];

  @override
  final String wireName = r'CostDetailDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CostDetailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CostDetailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CostDetailDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CostDetailDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CostDetailDtoBuilder();
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

