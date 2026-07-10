//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/holding_pnl_row_dto.dart';
import 'package:firela_api/src/model/holding_pnl_warning_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'holding_pnl_response_dto.g.dart';

/// HoldingPnlResponseDto
///
/// Properties:
/// * [asOfDate] 
/// * [baseCurrency] 
/// * [method] - Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473).
/// * [rows] 
/// * [warnings] 
@BuiltValue()
abstract class HoldingPnlResponseDto implements Built<HoldingPnlResponseDto, HoldingPnlResponseDtoBuilder> {
  @BuiltValueField(wireName: r'asOfDate')
  String get asOfDate;

  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473).
  @BuiltValueField(wireName: r'method')
  HoldingPnlResponseDtoMethodEnum get method;
  // enum methodEnum {  average,  FIFO,  };

  @BuiltValueField(wireName: r'rows')
  BuiltList<HoldingPnlRowDto> get rows;

  @BuiltValueField(wireName: r'warnings')
  BuiltList<HoldingPnlWarningDto> get warnings;

  HoldingPnlResponseDto._();

  factory HoldingPnlResponseDto([void updates(HoldingPnlResponseDtoBuilder b)]) = _$HoldingPnlResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HoldingPnlResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HoldingPnlResponseDto> get serializer => _$HoldingPnlResponseDtoSerializer();
}

class _$HoldingPnlResponseDtoSerializer implements PrimitiveSerializer<HoldingPnlResponseDto> {
  @override
  final Iterable<Type> types = const [HoldingPnlResponseDto, _$HoldingPnlResponseDto];

  @override
  final String wireName = r'HoldingPnlResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HoldingPnlResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'asOfDate';
    yield serializers.serialize(
      object.asOfDate,
      specifiedType: const FullType(String),
    );
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(HoldingPnlResponseDtoMethodEnum),
    );
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(HoldingPnlRowDto)]),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(HoldingPnlWarningDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    HoldingPnlResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HoldingPnlResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'asOfDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asOfDate = valueDes;
          break;
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HoldingPnlResponseDtoMethodEnum),
          ) as HoldingPnlResponseDtoMethodEnum;
          result.method = valueDes;
          break;
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HoldingPnlRowDto)]),
          ) as BuiltList<HoldingPnlRowDto>;
          result.rows.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(HoldingPnlWarningDto)]),
          ) as BuiltList<HoldingPnlWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HoldingPnlResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HoldingPnlResponseDtoBuilder();
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

class HoldingPnlResponseDtoMethodEnum extends EnumClass {

  /// Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473).
  @BuiltValueEnumConst(wireName: r'average')
  static const HoldingPnlResponseDtoMethodEnum average = _$holdingPnlResponseDtoMethodEnum_average;
  /// Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473).
  @BuiltValueEnumConst(wireName: r'FIFO')
  static const HoldingPnlResponseDtoMethodEnum FIFO = _$holdingPnlResponseDtoMethodEnum_FIFO;

  static Serializer<HoldingPnlResponseDtoMethodEnum> get serializer => _$holdingPnlResponseDtoMethodEnumSerializer;

  const HoldingPnlResponseDtoMethodEnum._(String name): super(name);

  static BuiltSet<HoldingPnlResponseDtoMethodEnum> get values => _$holdingPnlResponseDtoMethodEnumValues;
  static HoldingPnlResponseDtoMethodEnum valueOf(String name) => _$holdingPnlResponseDtoMethodEnumValueOf(name);
}

