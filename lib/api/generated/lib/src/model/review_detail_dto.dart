//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/decision_option_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/review_summary_dto_transaction.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_detail_dto.g.dart';

/// ReviewDetailDto
///
/// Properties:
/// * [id] - Review item ID
/// * [type] - Review type
/// * [status] - Review status
/// * [confidence] - Confidence score (0-1)
/// * [confidenceLevel] - Confidence level derived from score
/// * [summary] - Human-readable summary of the review item
/// * [matchReasons] - Human-readable reasons for branching
/// * [sourceType] - Source type (NLP, CSV, OCR, API)
/// * [createdAt] - Creation timestamp
/// * [reviewData] - Review-type-specific data (JSONB). Structure varies by type: DUPLICATE: {newTransaction, existingTransaction, matchScore}, RULE_MATCH: {transaction, matchedRule, suggestedAccount}, PAYEE_MATCH: {originalPayee, suggestedPayee}, ACCOUNT_VALIDATION: {invalidAccount, suggestedCorrection, similarAccounts}, PIPELINE_ERROR: {errorType, errorMessage}
/// * [decisionOptions] - Available decision options
/// * [sourcePlatform] - Source platform (e.g., alipay, wechat)
/// * [transaction]
/// * [amount] - Transaction amount (convenience field for mobile display)
/// * [currency] - Currency code (convenience field for mobile display)
/// * [merchantName] - Payee/Merchant name (convenience field for mobile display)
/// * [accountName] - Account name (convenience field for mobile display)
/// * [transactionTime] - Transaction date/time (convenience field for mobile display)
/// * [transactionId] - Related transaction ID if applicable
@BuiltValue()
abstract class ReviewDetailDto
    implements Built<ReviewDetailDto, ReviewDetailDtoBuilder> {
  /// Review item ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Review type
  @BuiltValueField(wireName: r'type')
  ReviewDetailDtoTypeEnum get type;
  // enum typeEnum {  DUPLICATE,  RULE_MATCH,  PAYEE_MATCH,  ACCOUNT_VALIDATION,  PIPELINE_ERROR,  };

  /// Review status
  @BuiltValueField(wireName: r'status')
  ReviewDetailDtoStatusEnum get status;
  // enum statusEnum {  PENDING,  RESOLVED,  EXPIRED,  CANCELLED,  };

  /// Confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Confidence level derived from score
  @BuiltValueField(wireName: r'confidenceLevel')
  ReviewDetailDtoConfidenceLevelEnum get confidenceLevel;
  // enum confidenceLevelEnum {  HIGH,  MEDIUM,  LOW,  };

  /// Human-readable summary of the review item
  @BuiltValueField(wireName: r'summary')
  String get summary;

  /// Human-readable reasons for branching
  @BuiltValueField(wireName: r'matchReasons')
  BuiltList<String> get matchReasons;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueField(wireName: r'sourceType')
  String get sourceType;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Review-type-specific data (JSONB). Structure varies by type: DUPLICATE: {newTransaction, existingTransaction, matchScore}, RULE_MATCH: {transaction, matchedRule, suggestedAccount}, PAYEE_MATCH: {originalPayee, suggestedPayee}, ACCOUNT_VALIDATION: {invalidAccount, suggestedCorrection, similarAccounts}, PIPELINE_ERROR: {errorType, errorMessage}
  @BuiltValueField(wireName: r'reviewData')
  JsonObject get reviewData;

  /// Available decision options
  @BuiltValueField(wireName: r'decisionOptions')
  BuiltList<DecisionOptionDto> get decisionOptions;

  /// Source platform (e.g., alipay, wechat)
  @BuiltValueField(wireName: r'sourcePlatform')
  String? get sourcePlatform;

  @BuiltValueField(wireName: r'transaction')
  ReviewSummaryDtoTransaction? get transaction;

  /// Transaction amount (convenience field for mobile display)
  @BuiltValueField(wireName: r'amount')
  String? get amount;

  /// Currency code (convenience field for mobile display)
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Payee/Merchant name (convenience field for mobile display)
  @BuiltValueField(wireName: r'merchantName')
  String? get merchantName;

  /// Account name (convenience field for mobile display)
  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  /// Transaction date/time (convenience field for mobile display)
  @BuiltValueField(wireName: r'transactionTime')
  String? get transactionTime;

  /// Related transaction ID if applicable
  @BuiltValueField(wireName: r'transactionId')
  String? get transactionId;

  ReviewDetailDto._();

  factory ReviewDetailDto([void updates(ReviewDetailDtoBuilder b)]) =
      _$ReviewDetailDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewDetailDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewDetailDto> get serializer =>
      _$ReviewDetailDtoSerializer();
}

class _$ReviewDetailDtoSerializer
    implements PrimitiveSerializer<ReviewDetailDto> {
  @override
  final Iterable<Type> types = const [ReviewDetailDto, _$ReviewDetailDto];

  @override
  final String wireName = r'ReviewDetailDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewDetailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ReviewDetailDtoTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReviewDetailDtoStatusEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'confidenceLevel';
    yield serializers.serialize(
      object.confidenceLevel,
      specifiedType: const FullType(ReviewDetailDtoConfidenceLevelEnum),
    );
    yield r'summary';
    yield serializers.serialize(
      object.summary,
      specifiedType: const FullType(String),
    );
    yield r'matchReasons';
    yield serializers.serialize(
      object.matchReasons,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'sourceType';
    yield serializers.serialize(
      object.sourceType,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'reviewData';
    yield serializers.serialize(
      object.reviewData,
      specifiedType: const FullType(JsonObject),
    );
    yield r'decisionOptions';
    yield serializers.serialize(
      object.decisionOptions,
      specifiedType: const FullType(BuiltList, [FullType(DecisionOptionDto)]),
    );
    if (object.sourcePlatform != null) {
      yield r'sourcePlatform';
      yield serializers.serialize(
        object.sourcePlatform,
        specifiedType: const FullType(String),
      );
    }
    if (object.transaction != null) {
      yield r'transaction';
      yield serializers.serialize(
        object.transaction,
        specifiedType: const FullType.nullable(ReviewSummaryDtoTransaction),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
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
    if (object.merchantName != null) {
      yield r'merchantName';
      yield serializers.serialize(
        object.merchantName,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType(String),
      );
    }
    if (object.transactionTime != null) {
      yield r'transactionTime';
      yield serializers.serialize(
        object.transactionTime,
        specifiedType: const FullType(String),
      );
    }
    if (object.transactionId != null) {
      yield r'transactionId';
      yield serializers.serialize(
        object.transactionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewDetailDto object, {
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
    required ReviewDetailDtoBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewDetailDtoTypeEnum),
          ) as ReviewDetailDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewDetailDtoStatusEnum),
          ) as ReviewDetailDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'confidenceLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewDetailDtoConfidenceLevelEnum),
          ) as ReviewDetailDtoConfidenceLevelEnum;
          result.confidenceLevel = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summary = valueDes;
          break;
        case r'matchReasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.matchReasons.replace(valueDes);
          break;
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceType = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'reviewData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.reviewData = valueDes;
          break;
        case r'decisionOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(DecisionOptionDto)]),
          ) as BuiltList<DecisionOptionDto>;
          result.decisionOptions.replace(valueDes);
          break;
        case r'sourcePlatform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourcePlatform = valueDes;
          break;
        case r'transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReviewSummaryDtoTransaction),
          ) as ReviewSummaryDtoTransaction?;
          if (valueDes == null) continue;
          result.transaction.replace(valueDes);
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'merchantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.merchantName = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'transactionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionTime = valueDes;
          break;
        case r'transactionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewDetailDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewDetailDtoBuilder();
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

class ReviewDetailDtoTypeEnum extends EnumClass {
  /// Review type
  @BuiltValueEnumConst(wireName: r'DUPLICATE')
  static const ReviewDetailDtoTypeEnum DUPLICATE =
      _$reviewDetailDtoTypeEnum_DUPLICATE;

  /// Review type
  @BuiltValueEnumConst(wireName: r'RULE_MATCH')
  static const ReviewDetailDtoTypeEnum RULE_MATCH =
      _$reviewDetailDtoTypeEnum_RULE_MATCH;

  /// Review type
  @BuiltValueEnumConst(wireName: r'PAYEE_MATCH')
  static const ReviewDetailDtoTypeEnum PAYEE_MATCH =
      _$reviewDetailDtoTypeEnum_PAYEE_MATCH;

  /// Review type
  @BuiltValueEnumConst(wireName: r'ACCOUNT_VALIDATION')
  static const ReviewDetailDtoTypeEnum ACCOUNT_VALIDATION =
      _$reviewDetailDtoTypeEnum_ACCOUNT_VALIDATION;

  /// Review type
  @BuiltValueEnumConst(wireName: r'PIPELINE_ERROR', fallback: true)
  static const ReviewDetailDtoTypeEnum PIPELINE_ERROR =
      _$reviewDetailDtoTypeEnum_PIPELINE_ERROR;

  static Serializer<ReviewDetailDtoTypeEnum> get serializer =>
      _$reviewDetailDtoTypeEnumSerializer;

  const ReviewDetailDtoTypeEnum._(String name) : super(name);

  static BuiltSet<ReviewDetailDtoTypeEnum> get values =>
      _$reviewDetailDtoTypeEnumValues;
  static ReviewDetailDtoTypeEnum valueOf(String name) =>
      _$reviewDetailDtoTypeEnumValueOf(name);
}

class ReviewDetailDtoStatusEnum extends EnumClass {
  /// Review status
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const ReviewDetailDtoStatusEnum PENDING =
      _$reviewDetailDtoStatusEnum_PENDING;

  /// Review status
  @BuiltValueEnumConst(wireName: r'RESOLVED')
  static const ReviewDetailDtoStatusEnum RESOLVED =
      _$reviewDetailDtoStatusEnum_RESOLVED;

  /// Review status
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const ReviewDetailDtoStatusEnum EXPIRED =
      _$reviewDetailDtoStatusEnum_EXPIRED;

  /// Review status
  @BuiltValueEnumConst(wireName: r'CANCELLED', fallback: true)
  static const ReviewDetailDtoStatusEnum CANCELLED =
      _$reviewDetailDtoStatusEnum_CANCELLED;

  static Serializer<ReviewDetailDtoStatusEnum> get serializer =>
      _$reviewDetailDtoStatusEnumSerializer;

  const ReviewDetailDtoStatusEnum._(String name) : super(name);

  static BuiltSet<ReviewDetailDtoStatusEnum> get values =>
      _$reviewDetailDtoStatusEnumValues;
  static ReviewDetailDtoStatusEnum valueOf(String name) =>
      _$reviewDetailDtoStatusEnumValueOf(name);
}

class ReviewDetailDtoConfidenceLevelEnum extends EnumClass {
  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'HIGH')
  static const ReviewDetailDtoConfidenceLevelEnum HIGH =
      _$reviewDetailDtoConfidenceLevelEnum_HIGH;

  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'MEDIUM')
  static const ReviewDetailDtoConfidenceLevelEnum MEDIUM =
      _$reviewDetailDtoConfidenceLevelEnum_MEDIUM;

  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'LOW', fallback: true)
  static const ReviewDetailDtoConfidenceLevelEnum LOW =
      _$reviewDetailDtoConfidenceLevelEnum_LOW;

  static Serializer<ReviewDetailDtoConfidenceLevelEnum> get serializer =>
      _$reviewDetailDtoConfidenceLevelEnumSerializer;

  const ReviewDetailDtoConfidenceLevelEnum._(String name) : super(name);

  static BuiltSet<ReviewDetailDtoConfidenceLevelEnum> get values =>
      _$reviewDetailDtoConfidenceLevelEnumValues;
  static ReviewDetailDtoConfidenceLevelEnum valueOf(String name) =>
      _$reviewDetailDtoConfidenceLevelEnumValueOf(name);
}
