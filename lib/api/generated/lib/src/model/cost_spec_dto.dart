//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cost_spec_dto.g.dart';

/// CostSpecDto
///
/// Properties:
/// * [mode] - Cost specification mode (mirrors engine CostSpec)
/// * [numberPerUnit] - Per-unit cost (required when mode is \"per-unit\")
/// * [totalNumber] - Total cost for all units (required when mode is \"total\")
/// * [currency] - Cost currency (required in all modes)
/// * [date] - Lot acquisition date, ISO 8601 (required when mode is \"date\")
/// * [label] - Lot label (required when mode is \"label\"; optional tag in buy modes)
/// * [merge] - Merge lots for AVERAGE booking (mode: auto)
@BuiltValue()
abstract class CostSpecDto implements Built<CostSpecDto, CostSpecDtoBuilder> {
  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueField(wireName: r'mode')
  CostSpecDtoModeEnum get mode;
  // enum modeEnum {  per-unit,  total,  date,  label,  auto,  };

  /// Per-unit cost (required when mode is \"per-unit\")
  @BuiltValueField(wireName: r'numberPerUnit')
  String? get numberPerUnit;

  /// Total cost for all units (required when mode is \"total\")
  @BuiltValueField(wireName: r'totalNumber')
  String? get totalNumber;

  /// Cost currency (required in all modes)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Lot acquisition date, ISO 8601 (required when mode is \"date\")
  @BuiltValueField(wireName: r'date')
  String? get date;

  /// Lot label (required when mode is \"label\"; optional tag in buy modes)
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Merge lots for AVERAGE booking (mode: auto)
  @BuiltValueField(wireName: r'merge')
  bool? get merge;

  CostSpecDto._();

  factory CostSpecDto([void updates(CostSpecDtoBuilder b)]) = _$CostSpecDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CostSpecDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CostSpecDto> get serializer => _$CostSpecDtoSerializer();
}

class _$CostSpecDtoSerializer implements PrimitiveSerializer<CostSpecDto> {
  @override
  final Iterable<Type> types = const [CostSpecDto, _$CostSpecDto];

  @override
  final String wireName = r'CostSpecDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CostSpecDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(CostSpecDtoModeEnum),
    );
    if (object.numberPerUnit != null) {
      yield r'numberPerUnit';
      yield serializers.serialize(
        object.numberPerUnit,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalNumber != null) {
      yield r'totalNumber';
      yield serializers.serialize(
        object.totalNumber,
        specifiedType: const FullType(String),
      );
    }
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
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
    if (object.merge != null) {
      yield r'merge';
      yield serializers.serialize(
        object.merge,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CostSpecDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CostSpecDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CostSpecDtoModeEnum),
          ) as CostSpecDtoModeEnum;
          result.mode = valueDes;
          break;
        case r'numberPerUnit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.numberPerUnit = valueDes;
          break;
        case r'totalNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalNumber = valueDes;
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
        case r'merge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.merge = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CostSpecDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CostSpecDtoBuilder();
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

class CostSpecDtoModeEnum extends EnumClass {

  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueEnumConst(wireName: r'per-unit')
  static const CostSpecDtoModeEnum perUnit = _$costSpecDtoModeEnum_perUnit;
  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueEnumConst(wireName: r'total')
  static const CostSpecDtoModeEnum total = _$costSpecDtoModeEnum_total;
  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueEnumConst(wireName: r'date')
  static const CostSpecDtoModeEnum date = _$costSpecDtoModeEnum_date;
  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueEnumConst(wireName: r'label')
  static const CostSpecDtoModeEnum label = _$costSpecDtoModeEnum_label;
  /// Cost specification mode (mirrors engine CostSpec)
  @BuiltValueEnumConst(wireName: r'auto')
  static const CostSpecDtoModeEnum auto = _$costSpecDtoModeEnum_auto;

  static Serializer<CostSpecDtoModeEnum> get serializer => _$costSpecDtoModeEnumSerializer;

  const CostSpecDtoModeEnum._(String name): super(name);

  static BuiltSet<CostSpecDtoModeEnum> get values => _$costSpecDtoModeEnumValues;
  static CostSpecDtoModeEnum valueOf(String name) => _$costSpecDtoModeEnumValueOf(name);
}

