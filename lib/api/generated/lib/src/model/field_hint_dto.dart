//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_hint_dto.g.dart';

/// FieldHintDto
///
/// Properties:
/// * [columnName] 
/// * [format] - Date format, e.g. yyyy-MM-dd HH:mm
/// * [signConvention] 
/// * [creditColumn] 
/// * [debitColumn] 
@BuiltValue()
abstract class FieldHintDto implements Built<FieldHintDto, FieldHintDtoBuilder> {
  @BuiltValueField(wireName: r'columnName')
  String get columnName;

  /// Date format, e.g. yyyy-MM-dd HH:mm
  @BuiltValueField(wireName: r'format')
  String? get format;

  @BuiltValueField(wireName: r'signConvention')
  FieldHintDtoSignConventionEnum? get signConvention;
  // enum signConventionEnum {  negative-expense,  positive-expense,  separate-columns,  };

  @BuiltValueField(wireName: r'creditColumn')
  String? get creditColumn;

  @BuiltValueField(wireName: r'debitColumn')
  String? get debitColumn;

  FieldHintDto._();

  factory FieldHintDto([void updates(FieldHintDtoBuilder b)]) = _$FieldHintDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FieldHintDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FieldHintDto> get serializer => _$FieldHintDtoSerializer();
}

class _$FieldHintDtoSerializer implements PrimitiveSerializer<FieldHintDto> {
  @override
  final Iterable<Type> types = const [FieldHintDto, _$FieldHintDto];

  @override
  final String wireName = r'FieldHintDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FieldHintDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'columnName';
    yield serializers.serialize(
      object.columnName,
      specifiedType: const FullType(String),
    );
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(String),
      );
    }
    if (object.signConvention != null) {
      yield r'signConvention';
      yield serializers.serialize(
        object.signConvention,
        specifiedType: const FullType(FieldHintDtoSignConventionEnum),
      );
    }
    if (object.creditColumn != null) {
      yield r'creditColumn';
      yield serializers.serialize(
        object.creditColumn,
        specifiedType: const FullType(String),
      );
    }
    if (object.debitColumn != null) {
      yield r'debitColumn';
      yield serializers.serialize(
        object.debitColumn,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FieldHintDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FieldHintDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'columnName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.columnName = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.format = valueDes;
          break;
        case r'signConvention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDtoSignConventionEnum),
          ) as FieldHintDtoSignConventionEnum;
          result.signConvention = valueDes;
          break;
        case r'creditColumn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creditColumn = valueDes;
          break;
        case r'debitColumn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.debitColumn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FieldHintDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FieldHintDtoBuilder();
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

class FieldHintDtoSignConventionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'negative-expense')
  static const FieldHintDtoSignConventionEnum negativeExpense = _$fieldHintDtoSignConventionEnum_negativeExpense;
  @BuiltValueEnumConst(wireName: r'positive-expense')
  static const FieldHintDtoSignConventionEnum positiveExpense = _$fieldHintDtoSignConventionEnum_positiveExpense;
  @BuiltValueEnumConst(wireName: r'separate-columns')
  static const FieldHintDtoSignConventionEnum separateColumns = _$fieldHintDtoSignConventionEnum_separateColumns;

  static Serializer<FieldHintDtoSignConventionEnum> get serializer => _$fieldHintDtoSignConventionEnumSerializer;

  const FieldHintDtoSignConventionEnum._(String name): super(name);

  static BuiltSet<FieldHintDtoSignConventionEnum> get values => _$fieldHintDtoSignConventionEnumValues;
  static FieldHintDtoSignConventionEnum valueOf(String name) => _$fieldHintDtoSignConventionEnumValueOf(name);
}

