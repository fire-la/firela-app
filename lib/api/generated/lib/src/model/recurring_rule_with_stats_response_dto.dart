//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'recurring_rule_with_stats_response_dto.g.dart';

/// RecurringRuleWithStatsResponseDto
///
/// Properties:
/// * [id] - Rule ID
/// * [userId] - User ID
/// * [name] - Rule name
/// * [frequency] - Recurring frequency
/// * [expectedAmount] - Expected amount
/// * [currency] - Currency code
/// * [matchAmountTolerance] - Amount tolerance percentage
/// * [isActive] - Whether rule is active
/// * [startDate] - Rule start date (YYYY-MM-DD)
/// * [autoCreate] - Auto-create transaction on expected date
/// * [totalCount] - Total matched transactions count
/// * [createdAt] - Created at timestamp
/// * [updatedAt] - Updated at timestamp
/// * [pendingCount] - Number of pending expected transactions
/// * [overdueCount] - Number of overdue expected transactions
/// * [totalAmount] - Total amount of all matched transactions
/// * [averageAmount] - Average amount per transaction
/// * [transactionCount] - Number of matched transactions
/// * [variance] - Amount variance (standard deviation squared)
/// * [upcomingCount] - Number of upcoming expected transactions
/// * [icon] - Icon emoji
/// * [expectedDay] - Expected day of month
/// * [customIntervalDays] - Custom interval in days
/// * [matchPayeePattern] - Payee matching pattern
/// * [defaultExpenseAccount] - Default expense account
/// * [defaultPaymentAccount] - Default payment account
/// * [defaultPayee] - Default payee
/// * [endDate] - Rule end date (YYYY-MM-DD)
/// * [lastOccurrence] - Last matched occurrence date (YYYY-MM-DD)
/// * [nextExpectedDate] - Next expected date (YYYY-MM-DD)
/// * [firstDate] - First matched transaction date (YYYY-MM-DD)
/// * [lastDate] - Last matched transaction date (YYYY-MM-DD)
@BuiltValue()
abstract class RecurringRuleWithStatsResponseDto
    implements
        Built<RecurringRuleWithStatsResponseDto,
            RecurringRuleWithStatsResponseDtoBuilder> {
  /// Rule ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Rule name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Recurring frequency
  @BuiltValueField(wireName: r'frequency')
  String get frequency;

  /// Expected amount
  @BuiltValueField(wireName: r'expectedAmount')
  num get expectedAmount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Amount tolerance percentage
  @BuiltValueField(wireName: r'matchAmountTolerance')
  num get matchAmountTolerance;

  /// Whether rule is active
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  /// Rule start date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'startDate')
  String get startDate;

  /// Auto-create transaction on expected date
  @BuiltValueField(wireName: r'autoCreate')
  bool get autoCreate;

  /// Total matched transactions count
  @BuiltValueField(wireName: r'totalCount')
  num get totalCount;

  /// Created at timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Updated at timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Number of pending expected transactions
  @BuiltValueField(wireName: r'pendingCount')
  num get pendingCount;

  /// Number of overdue expected transactions
  @BuiltValueField(wireName: r'overdueCount')
  num get overdueCount;

  /// Total amount of all matched transactions
  @BuiltValueField(wireName: r'totalAmount')
  num get totalAmount;

  /// Average amount per transaction
  @BuiltValueField(wireName: r'averageAmount')
  num get averageAmount;

  /// Number of matched transactions
  @BuiltValueField(wireName: r'transactionCount')
  num get transactionCount;

  /// Amount variance (standard deviation squared)
  @BuiltValueField(wireName: r'variance')
  num get variance;

  /// Number of upcoming expected transactions
  @BuiltValueField(wireName: r'upcomingCount')
  num get upcomingCount;

  /// Icon emoji
  @BuiltValueField(wireName: r'icon')
  JsonObject? get icon;

  /// Expected day of month
  @BuiltValueField(wireName: r'expectedDay')
  JsonObject? get expectedDay;

  /// Custom interval in days
  @BuiltValueField(wireName: r'customIntervalDays')
  JsonObject? get customIntervalDays;

  /// Payee matching pattern
  @BuiltValueField(wireName: r'matchPayeePattern')
  JsonObject? get matchPayeePattern;

  /// Default expense account
  @BuiltValueField(wireName: r'defaultExpenseAccount')
  JsonObject? get defaultExpenseAccount;

  /// Default payment account
  @BuiltValueField(wireName: r'defaultPaymentAccount')
  JsonObject? get defaultPaymentAccount;

  /// Default payee
  @BuiltValueField(wireName: r'defaultPayee')
  JsonObject? get defaultPayee;

  /// Rule end date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'endDate')
  JsonObject? get endDate;

  /// Last matched occurrence date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'lastOccurrence')
  JsonObject? get lastOccurrence;

  /// Next expected date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'nextExpectedDate')
  JsonObject? get nextExpectedDate;

  /// First matched transaction date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'firstDate')
  JsonObject? get firstDate;

  /// Last matched transaction date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'lastDate')
  JsonObject? get lastDate;

  RecurringRuleWithStatsResponseDto._();

  factory RecurringRuleWithStatsResponseDto(
          [void updates(RecurringRuleWithStatsResponseDtoBuilder b)]) =
      _$RecurringRuleWithStatsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecurringRuleWithStatsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecurringRuleWithStatsResponseDto> get serializer =>
      _$RecurringRuleWithStatsResponseDtoSerializer();
}

class _$RecurringRuleWithStatsResponseDtoSerializer
    implements PrimitiveSerializer<RecurringRuleWithStatsResponseDto> {
  @override
  final Iterable<Type> types = const [
    RecurringRuleWithStatsResponseDto,
    _$RecurringRuleWithStatsResponseDto
  ];

  @override
  final String wireName = r'RecurringRuleWithStatsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecurringRuleWithStatsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(String),
    );
    yield r'expectedAmount';
    yield serializers.serialize(
      object.expectedAmount,
      specifiedType: const FullType(num),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'matchAmountTolerance';
    yield serializers.serialize(
      object.matchAmountTolerance,
      specifiedType: const FullType(num),
    );
    yield r'isActive';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    yield r'startDate';
    yield serializers.serialize(
      object.startDate,
      specifiedType: const FullType(String),
    );
    yield r'autoCreate';
    yield serializers.serialize(
      object.autoCreate,
      specifiedType: const FullType(bool),
    );
    yield r'totalCount';
    yield serializers.serialize(
      object.totalCount,
      specifiedType: const FullType(num),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'pendingCount';
    yield serializers.serialize(
      object.pendingCount,
      specifiedType: const FullType(num),
    );
    yield r'overdueCount';
    yield serializers.serialize(
      object.overdueCount,
      specifiedType: const FullType(num),
    );
    yield r'totalAmount';
    yield serializers.serialize(
      object.totalAmount,
      specifiedType: const FullType(num),
    );
    yield r'averageAmount';
    yield serializers.serialize(
      object.averageAmount,
      specifiedType: const FullType(num),
    );
    yield r'transactionCount';
    yield serializers.serialize(
      object.transactionCount,
      specifiedType: const FullType(num),
    );
    yield r'variance';
    yield serializers.serialize(
      object.variance,
      specifiedType: const FullType(num),
    );
    yield r'upcomingCount';
    yield serializers.serialize(
      object.upcomingCount,
      specifiedType: const FullType(num),
    );
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.expectedDay != null) {
      yield r'expectedDay';
      yield serializers.serialize(
        object.expectedDay,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.customIntervalDays != null) {
      yield r'customIntervalDays';
      yield serializers.serialize(
        object.customIntervalDays,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.matchPayeePattern != null) {
      yield r'matchPayeePattern';
      yield serializers.serialize(
        object.matchPayeePattern,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.defaultExpenseAccount != null) {
      yield r'defaultExpenseAccount';
      yield serializers.serialize(
        object.defaultExpenseAccount,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.defaultPaymentAccount != null) {
      yield r'defaultPaymentAccount';
      yield serializers.serialize(
        object.defaultPaymentAccount,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.defaultPayee != null) {
      yield r'defaultPayee';
      yield serializers.serialize(
        object.defaultPayee,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.lastOccurrence != null) {
      yield r'lastOccurrence';
      yield serializers.serialize(
        object.lastOccurrence,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.nextExpectedDate != null) {
      yield r'nextExpectedDate';
      yield serializers.serialize(
        object.nextExpectedDate,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.firstDate != null) {
      yield r'firstDate';
      yield serializers.serialize(
        object.firstDate,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.lastDate != null) {
      yield r'lastDate';
      yield serializers.serialize(
        object.lastDate,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecurringRuleWithStatsResponseDto object, {
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
    required RecurringRuleWithStatsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.frequency = valueDes;
          break;
        case r'expectedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedAmount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'matchAmountTolerance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.matchAmountTolerance = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startDate = valueDes;
          break;
        case r'autoCreate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoCreate = valueDes;
          break;
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'pendingCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pendingCount = valueDes;
          break;
        case r'overdueCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.overdueCount = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAmount = valueDes;
          break;
        case r'averageAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.averageAmount = valueDes;
          break;
        case r'transactionCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.transactionCount = valueDes;
          break;
        case r'variance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.variance = valueDes;
          break;
        case r'upcomingCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.upcomingCount = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.icon = valueDes;
          break;
        case r'expectedDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.expectedDay = valueDes;
          break;
        case r'customIntervalDays':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.customIntervalDays = valueDes;
          break;
        case r'matchPayeePattern':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchPayeePattern = valueDes;
          break;
        case r'defaultExpenseAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.defaultExpenseAccount = valueDes;
          break;
        case r'defaultPaymentAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.defaultPaymentAccount = valueDes;
          break;
        case r'defaultPayee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.defaultPayee = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.endDate = valueDes;
          break;
        case r'lastOccurrence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.lastOccurrence = valueDes;
          break;
        case r'nextExpectedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.nextExpectedDate = valueDes;
          break;
        case r'firstDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.firstDate = valueDes;
          break;
        case r'lastDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.lastDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecurringRuleWithStatsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecurringRuleWithStatsResponseDtoBuilder();
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
