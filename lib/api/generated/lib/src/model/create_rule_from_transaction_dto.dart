//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_rule_from_transaction_dto.g.dart';

/// CreateRuleFromTransactionDto
///
/// Properties:
/// * [frequency] - Recurring frequency
/// * [name] - Optional name override (default: transaction payee)
/// * [icon] - Optional icon emoji
@BuiltValue()
abstract class CreateRuleFromTransactionDto implements Built<CreateRuleFromTransactionDto, CreateRuleFromTransactionDtoBuilder> {
  /// Recurring frequency
  @BuiltValueField(wireName: r'frequency')
  CreateRuleFromTransactionDtoFrequencyEnum get frequency;
  // enum frequencyEnum {  WEEKLY,  BIWEEKLY,  MONTHLY,  BIMONTHLY,  QUARTERLY,  YEARLY,  CUSTOM,  };

  /// Optional name override (default: transaction payee)
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Optional icon emoji
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  CreateRuleFromTransactionDto._();

  factory CreateRuleFromTransactionDto([void updates(CreateRuleFromTransactionDtoBuilder b)]) = _$CreateRuleFromTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateRuleFromTransactionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateRuleFromTransactionDto> get serializer => _$CreateRuleFromTransactionDtoSerializer();
}

class _$CreateRuleFromTransactionDtoSerializer implements PrimitiveSerializer<CreateRuleFromTransactionDto> {
  @override
  final Iterable<Type> types = const [CreateRuleFromTransactionDto, _$CreateRuleFromTransactionDto];

  @override
  final String wireName = r'CreateRuleFromTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateRuleFromTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(CreateRuleFromTransactionDtoFrequencyEnum),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateRuleFromTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateRuleFromTransactionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateRuleFromTransactionDtoFrequencyEnum),
          ) as CreateRuleFromTransactionDtoFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateRuleFromTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRuleFromTransactionDtoBuilder();
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

class CreateRuleFromTransactionDtoFrequencyEnum extends EnumClass {

  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'WEEKLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum WEEKLY = _$createRuleFromTransactionDtoFrequencyEnum_WEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIWEEKLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum BIWEEKLY = _$createRuleFromTransactionDtoFrequencyEnum_BIWEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'MONTHLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum MONTHLY = _$createRuleFromTransactionDtoFrequencyEnum_MONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIMONTHLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum BIMONTHLY = _$createRuleFromTransactionDtoFrequencyEnum_BIMONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'QUARTERLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum QUARTERLY = _$createRuleFromTransactionDtoFrequencyEnum_QUARTERLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'YEARLY')
  static const CreateRuleFromTransactionDtoFrequencyEnum YEARLY = _$createRuleFromTransactionDtoFrequencyEnum_YEARLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const CreateRuleFromTransactionDtoFrequencyEnum CUSTOM = _$createRuleFromTransactionDtoFrequencyEnum_CUSTOM;

  static Serializer<CreateRuleFromTransactionDtoFrequencyEnum> get serializer => _$createRuleFromTransactionDtoFrequencyEnumSerializer;

  const CreateRuleFromTransactionDtoFrequencyEnum._(String name): super(name);

  static BuiltSet<CreateRuleFromTransactionDtoFrequencyEnum> get values => _$createRuleFromTransactionDtoFrequencyEnumValues;
  static CreateRuleFromTransactionDtoFrequencyEnum valueOf(String name) => _$createRuleFromTransactionDtoFrequencyEnumValueOf(name);
}

