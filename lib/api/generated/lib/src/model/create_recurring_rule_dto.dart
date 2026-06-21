//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_recurring_rule_dto.g.dart';

/// CreateRecurringRuleDto
///
/// Properties:
/// * [name] - Rule name (unique per user)
/// * [icon] - Icon emoji
/// * [frequency] - Recurring frequency
/// * [expectedAmount] - Expected amount (positive number)
/// * [expectedDay] - Expected day of month (1-31)
/// * [customIntervalDays] - Custom interval in days (required for CUSTOM frequency)
/// * [currency] - Currency code
/// * [matchPayeePattern] - Payee matching pattern (supports wildcards)
/// * [matchAmountTolerance] - Amount tolerance percentage (0-1)
/// * [defaultExpenseAccount] - Default expense account for auto-create
/// * [defaultPaymentAccount] - Default payment account for auto-create
/// * [defaultPayee] - Default payee for auto-create
/// * [autoCreate] - Auto-create transaction when expected date arrives
/// * [startDate] - Rule start date (ISO format)
/// * [endDate] - Rule end date (ISO format)
@BuiltValue()
abstract class CreateRecurringRuleDto implements Built<CreateRecurringRuleDto, CreateRecurringRuleDtoBuilder> {
  /// Rule name (unique per user)
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Icon emoji
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Recurring frequency
  @BuiltValueField(wireName: r'frequency')
  CreateRecurringRuleDtoFrequencyEnum get frequency;
  // enum frequencyEnum {  WEEKLY,  BIWEEKLY,  MONTHLY,  BIMONTHLY,  QUARTERLY,  YEARLY,  CUSTOM,  };

  /// Expected amount (positive number)
  @BuiltValueField(wireName: r'expectedAmount')
  num get expectedAmount;

  /// Expected day of month (1-31)
  @BuiltValueField(wireName: r'expectedDay')
  num? get expectedDay;

  /// Custom interval in days (required for CUSTOM frequency)
  @BuiltValueField(wireName: r'customIntervalDays')
  num? get customIntervalDays;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Payee matching pattern (supports wildcards)
  @BuiltValueField(wireName: r'matchPayeePattern')
  String? get matchPayeePattern;

  /// Amount tolerance percentage (0-1)
  @BuiltValueField(wireName: r'matchAmountTolerance')
  num get matchAmountTolerance;

  /// Default expense account for auto-create
  @BuiltValueField(wireName: r'defaultExpenseAccount')
  String? get defaultExpenseAccount;

  /// Default payment account for auto-create
  @BuiltValueField(wireName: r'defaultPaymentAccount')
  String? get defaultPaymentAccount;

  /// Default payee for auto-create
  @BuiltValueField(wireName: r'defaultPayee')
  String? get defaultPayee;

  /// Auto-create transaction when expected date arrives
  @BuiltValueField(wireName: r'autoCreate')
  bool get autoCreate;

  /// Rule start date (ISO format)
  @BuiltValueField(wireName: r'startDate')
  String? get startDate;

  /// Rule end date (ISO format)
  @BuiltValueField(wireName: r'endDate')
  String? get endDate;

  CreateRecurringRuleDto._();

  factory CreateRecurringRuleDto([void updates(CreateRecurringRuleDtoBuilder b)]) = _$CreateRecurringRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateRecurringRuleDtoBuilder b) => b
      ..currency = 'CNY'
      ..matchAmountTolerance = 0.075
      ..autoCreate = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateRecurringRuleDto> get serializer => _$CreateRecurringRuleDtoSerializer();
}

class _$CreateRecurringRuleDtoSerializer implements PrimitiveSerializer<CreateRecurringRuleDto> {
  @override
  final Iterable<Type> types = const [CreateRecurringRuleDto, _$CreateRecurringRuleDto];

  @override
  final String wireName = r'CreateRecurringRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateRecurringRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(CreateRecurringRuleDtoFrequencyEnum),
    );
    yield r'expectedAmount';
    yield serializers.serialize(
      object.expectedAmount,
      specifiedType: const FullType(num),
    );
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
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.matchPayeePattern != null) {
      yield r'matchPayeePattern';
      yield serializers.serialize(
        object.matchPayeePattern,
        specifiedType: const FullType(String),
      );
    }
    yield r'matchAmountTolerance';
    yield serializers.serialize(
      object.matchAmountTolerance,
      specifiedType: const FullType(num),
    );
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
    yield r'autoCreate';
    yield serializers.serialize(
      object.autoCreate,
      specifiedType: const FullType(bool),
    );
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(String),
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
    CreateRecurringRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateRecurringRuleDtoBuilder result,
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
            specifiedType: const FullType(CreateRecurringRuleDtoFrequencyEnum),
          ) as CreateRecurringRuleDtoFrequencyEnum;
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
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startDate = valueDes;
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
  CreateRecurringRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateRecurringRuleDtoBuilder();
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

class CreateRecurringRuleDtoFrequencyEnum extends EnumClass {

  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'WEEKLY')
  static const CreateRecurringRuleDtoFrequencyEnum WEEKLY = _$createRecurringRuleDtoFrequencyEnum_WEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIWEEKLY')
  static const CreateRecurringRuleDtoFrequencyEnum BIWEEKLY = _$createRecurringRuleDtoFrequencyEnum_BIWEEKLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'MONTHLY')
  static const CreateRecurringRuleDtoFrequencyEnum MONTHLY = _$createRecurringRuleDtoFrequencyEnum_MONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'BIMONTHLY')
  static const CreateRecurringRuleDtoFrequencyEnum BIMONTHLY = _$createRecurringRuleDtoFrequencyEnum_BIMONTHLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'QUARTERLY')
  static const CreateRecurringRuleDtoFrequencyEnum QUARTERLY = _$createRecurringRuleDtoFrequencyEnum_QUARTERLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'YEARLY')
  static const CreateRecurringRuleDtoFrequencyEnum YEARLY = _$createRecurringRuleDtoFrequencyEnum_YEARLY;
  /// Recurring frequency
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const CreateRecurringRuleDtoFrequencyEnum CUSTOM = _$createRecurringRuleDtoFrequencyEnum_CUSTOM;

  static Serializer<CreateRecurringRuleDtoFrequencyEnum> get serializer => _$createRecurringRuleDtoFrequencyEnumSerializer;

  const CreateRecurringRuleDtoFrequencyEnum._(String name): super(name);

  static BuiltSet<CreateRecurringRuleDtoFrequencyEnum> get values => _$createRecurringRuleDtoFrequencyEnumValues;
  static CreateRecurringRuleDtoFrequencyEnum valueOf(String name) => _$createRecurringRuleDtoFrequencyEnumValueOf(name);
}

