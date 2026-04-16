//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/expected_transaction_rule_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expected_transaction_response_dto.g.dart';

/// ExpectedTransactionResponseDto
///
/// Properties:
/// * [id] - Expected transaction ID
/// * [userId] - User ID
/// * [ruleId] - Associated rule ID
/// * [expectedDate] - Expected date (YYYY-MM-DD)
/// * [expectedAmount] - Expected amount
/// * [status] - Status (PENDING, COMPLETED, SKIPPED)
/// * [isOverdue] - Whether this expected transaction is overdue
/// * [rule]
/// * [createdAt] - Created at timestamp
/// * [updatedAt] - Updated at timestamp
/// * [matchedTransactionId] - Matched transaction ID
/// * [matchedAt] - Match timestamp (ISO 8601)
/// * [matchConfidence] - Match confidence score (0-1)
@BuiltValue()
abstract class ExpectedTransactionResponseDto
    implements
        Built<ExpectedTransactionResponseDto,
            ExpectedTransactionResponseDtoBuilder> {
  /// Expected transaction ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Associated rule ID
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// Expected date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'expectedDate')
  String get expectedDate;

  /// Expected amount
  @BuiltValueField(wireName: r'expectedAmount')
  num get expectedAmount;

  /// Status (PENDING, COMPLETED, SKIPPED)
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Whether this expected transaction is overdue
  @BuiltValueField(wireName: r'isOverdue')
  bool get isOverdue;

  @BuiltValueField(wireName: r'rule')
  ExpectedTransactionRuleDto get rule;

  /// Created at timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Updated at timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Matched transaction ID
  @BuiltValueField(wireName: r'matchedTransactionId')
  JsonObject? get matchedTransactionId;

  /// Match timestamp (ISO 8601)
  @BuiltValueField(wireName: r'matchedAt')
  JsonObject? get matchedAt;

  /// Match confidence score (0-1)
  @BuiltValueField(wireName: r'matchConfidence')
  JsonObject? get matchConfidence;

  ExpectedTransactionResponseDto._();

  factory ExpectedTransactionResponseDto(
          [void updates(ExpectedTransactionResponseDtoBuilder b)]) =
      _$ExpectedTransactionResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpectedTransactionResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpectedTransactionResponseDto> get serializer =>
      _$ExpectedTransactionResponseDtoSerializer();
}

class _$ExpectedTransactionResponseDtoSerializer
    implements PrimitiveSerializer<ExpectedTransactionResponseDto> {
  @override
  final Iterable<Type> types = const [
    ExpectedTransactionResponseDto,
    _$ExpectedTransactionResponseDto
  ];

  @override
  final String wireName = r'ExpectedTransactionResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpectedTransactionResponseDto object, {
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
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
      specifiedType: const FullType(String),
    );
    yield r'expectedDate';
    yield serializers.serialize(
      object.expectedDate,
      specifiedType: const FullType(String),
    );
    yield r'expectedAmount';
    yield serializers.serialize(
      object.expectedAmount,
      specifiedType: const FullType(num),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'isOverdue';
    yield serializers.serialize(
      object.isOverdue,
      specifiedType: const FullType(bool),
    );
    yield r'rule';
    yield serializers.serialize(
      object.rule,
      specifiedType: const FullType(ExpectedTransactionRuleDto),
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
    if (object.matchedTransactionId != null) {
      yield r'matchedTransactionId';
      yield serializers.serialize(
        object.matchedTransactionId,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.matchedAt != null) {
      yield r'matchedAt';
      yield serializers.serialize(
        object.matchedAt,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.matchConfidence != null) {
      yield r'matchConfidence';
      yield serializers.serialize(
        object.matchConfidence,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExpectedTransactionResponseDto object, {
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
    required ExpectedTransactionResponseDtoBuilder result,
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
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
          break;
        case r'expectedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expectedDate = valueDes;
          break;
        case r'expectedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedAmount = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'isOverdue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOverdue = valueDes;
          break;
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExpectedTransactionRuleDto),
          ) as ExpectedTransactionRuleDto;
          result.rule.replace(valueDes);
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
        case r'matchedTransactionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchedTransactionId = valueDes;
          break;
        case r'matchedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchedAt = valueDes;
          break;
        case r'matchConfidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.matchConfidence = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExpectedTransactionResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpectedTransactionResponseDtoBuilder();
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
