//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_recurring_rule_dto.g.dart';

/// UpdateRecurringRuleDto
///
/// Properties:
/// * [name] - Rule name
/// * [icon] - Icon emoji
/// * [frequency] - Recurring frequency
/// * [expectedAmount] - Expected amount
/// * [expectedDay] - Expected day of month (1-31)
/// * [customIntervalDays] - Custom interval in days
/// * [currency] - Currency code
/// * [matchPayeePattern] - Payee matching pattern
/// * [matchAmountTolerance] - Amount tolerance percentage (0-1)
/// * [defaultExpenseAccount] - Default expense account
/// * [defaultPaymentAccount] - Default payment account
/// * [defaultPayee] - Default payee
/// * [autoCreate] - Auto-create transaction
/// * [isActive] - Rule active status
/// * [endDate] - Rule end date (ISO format)
@BuiltValue()
abstract class UpdateRecurringRuleDto implements Built<UpdateRecurringRuleDto, UpdateRecurringRuleDtoBuilder> {
  /// Rule name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Icon emoji
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Recurring frequency
  @BuiltValueField(wireName: r'frequency')
  UpdateRecurringRuleDtoFrequencyEnum? get frequency;
  // enum frequencyEnum {  WEEKLY,  BIWEEKLY,  MONTHLY,  BIMONTHLY,  QUARTERLY,  YEARLY,  CUSTOM,  };

  /// Expected amount
  @BuiltValueField(wireName: r'expectedAmount')
  num? get expectedAmount;

  /// Expected day of month (1-31)
  @BuiltValueField(wireName: r'expectedDay')
  num? get expectedDay;

  /// Custom interval in days
  @BuiltValueField(wireName: r'customIntervalDays')
  num? get customIntervalDays;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Payee matching pattern
  @BuiltValueField(wireName: r'matchPayeePattern')
  String? get matchPayeePattern;

  /// Amount tolerance percentage (0-1)
  @BuiltValueField(wireName: r'matchAmountTolerance')
  num? get matchAmountTolerance;

  /// Default expense account
  @BuiltValueField(wireName: r'defaultExpenseAccount')
  String? get defaultExpenseAccount;

  /// Default payment account
  @BuiltValueField(wireName: r'defaultPaymentAccount')
  String? get defaultPaymentAccount;

  /// Default payee
  @BuiltValueField(wireName: r'defaultPayee')
  String? get defaultPayee;

  /// Auto-create transaction
  @BuiltValueField(wireName: r'autoCreate')
  bool? get autoCreate;

  /// Rule active status
  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  /// Rule end date (ISO format)
  @BuiltValueField(wireName: r'endDate')
  String? get endDate;

  UpdateRecurringRuleDto._();

  factory UpdateRecurringRuleDto([void updates(UpdateRecurringRuleDtoBuilder b)]) = _$UpdateRecurringRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateRecurringRuleDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateRecurringRuleDto> get serializer => _$UpdateRecurringRuleDtoSerializer();
}

class _$UpdateRecurringRuleDtoSerializer implements PrimitiveSerializer<UpdateRecurringRuleDto> {
  @override
  final Iterable<Type> types = const [UpdateRecurringRuleDto, _$UpdateRecurringRuleDto];

  @override
  final String wireName = r'UpdateRecurringRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateRecurringRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(UpdateRecurringRuleDtoFrequencyEnum),
      );
    }
    if (object.expectedAmount != null) {
      yield r'expectedAmount';
      yield serializers.serialize(
        object.expectedAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.expectedDay != null) {
      yield r'expectedDay';
      yield serializers.serialize(
        object.expectedDay,
        specifiedType: const FullType(num),
      );
    }
    if (object.customIntervalDays != null) {
      yield r'customIntervalDays';
      yield serializers.serialize(
        object.customIntervalDays,
        specifiedType: const FullType(num),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchPayeePattern != null) {
      yield r'matchPayeePattern';
      yield serializers.serialize(
        object.matchPayeePattern,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchAmountTolerance != null) {
      yield r'matchAmountTolerance';
      yield serializers.serialize(
        object.matchAmountTolerance,
        specifiedType: const FullType(num),
      );
    }
    if (object.defaultExpenseAccount != null) {
      yield r'defaultExpenseAccount';
      yield serializers.serialize(
        object.defaultExpenseAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultPaymentAccount != null) {
      yield r'defaultPaymentAccount';
      yield serializers.serialize(
        object.defaultPaymentAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultPayee != null) {
      yield r'defaultPayee';
      yield serializers.serialize(
        object.defaultPayee,
        specifiedType: const FullType(String),
      );
    }
    if (object.autoCreate != null) {
      yield r'autoCreate';
      yield serializers.serialize(
        object.autoCreate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateRecurringRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateRecurringRuleDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateRecurringRuleDtoFrequencyEnum),
          ) as UpdateRecurringRuleDtoFrequencyEnum;
          result.frequency = valueDes;
          break;
        case r'expectedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedAmount = valueDes;
          break;
        case r'expectedDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedDay = valueDes;
          break;
        case r'customIntervalDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.customIntervalDays = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'matchPayeePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchPayeePattern = valueDes;
          break;
        case r'matchAmountTolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.matchAmountTolerance = valueDes;
          break;
        case r'defaultExpenseAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultExpenseAccount = valueDes;
          break;
        case r'defaultPaymentAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultPaymentAccount = valueDes;
          break;
        case r'defaultPayee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultPayee = valueDes;
          break;
        case r'autoCreate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoCreate = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateRecurringRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateRecurringRuleDtoBuilder();
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

class UpdateRecurringRuleDtoFrequencyEnum extends EnumClass {

  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'WEEKLY')
  static const UpdateRecurringRuleDtoFrequencyEnum WEEKLY = _$updateRecurringRuleDtoFrequencyEnum_WEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIWEEKLY')
  static const UpdateRecurringRuleDtoFrequencyEnum BIWEEKLY = _$updateRecurringRuleDtoFrequencyEnum_BIWEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'MONTHLY')
  static const UpdateRecurringRuleDtoFrequencyEnum MONTHLY = _$updateRecurringRuleDtoFrequencyEnum_MONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIMONTHLY')
  static const UpdateRecurringRuleDtoFrequencyEnum BIMONTHLY = _$updateRecurringRuleDtoFrequencyEnum_BIMONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'QUARTERLY')
  static const UpdateRecurringRuleDtoFrequencyEnum QUARTERLY = _$updateRecurringRuleDtoFrequencyEnum_QUARTERLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'YEARLY')
  static const UpdateRecurringRuleDtoFrequencyEnum YEARLY = _$updateRecurringRuleDtoFrequencyEnum_YEARLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const UpdateRecurringRuleDtoFrequencyEnum CUSTOM = _$updateRecurringRuleDtoFrequencyEnum_CUSTOM;

  static Serializer<UpdateRecurringRuleDtoFrequencyEnum> get serializer => _$updateRecurringRuleDtoFrequencyEnumSerializer;

  const UpdateRecurringRuleDtoFrequencyEnum._(String name): super(name);

  static BuiltSet<UpdateRecurringRuleDtoFrequencyEnum> get values => _$updateRecurringRuleDtoFrequencyEnumValues;
  static UpdateRecurringRuleDtoFrequencyEnum valueOf(String name) => _$updateRecurringRuleDtoFrequencyEnumValueOf(name);
}

