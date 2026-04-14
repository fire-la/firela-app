//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/review_summary_dto_transaction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_summary_dto.g.dart';

/// ReviewSummaryDto
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
/// * [sourcePlatform] - Source platform (e.g., alipay, wechat)
/// * [transaction]
/// * [amount] - Transaction amount (convenience field for mobile display)
/// * [currency] - Currency code (convenience field for mobile display)
/// * [merchantName] - Payee/Merchant name (convenience field for mobile display)
/// * [accountName] - Account name (convenience field for mobile display)
/// * [transactionTime] - Transaction date/time (convenience field for mobile display)
@BuiltValue()
abstract class ReviewSummaryDto
    implements Built<ReviewSummaryDto, ReviewSummaryDtoBuilder> {
  /// Review item ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Review type
  @BuiltValueField(wireName: r'type')
  ReviewSummaryDtoTypeEnum get type;
  // enum typeEnum {  DUPLICATE,  RULE_MATCH,  PAYEE_MATCH,  ACCOUNT_VALIDATION,  PIPELINE_ERROR,  };

  /// Review status
  @BuiltValueField(wireName: r'status')
  ReviewSummaryDtoStatusEnum get status;
  // enum statusEnum {  PENDING,  RESOLVED,  EXPIRED,  CANCELLED,  };

  /// Confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num get confidence;

  /// Confidence level derived from score
  @BuiltValueField(wireName: r'confidenceLevel')
  ReviewSummaryDtoConfidenceLevelEnum get confidenceLevel;
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

  ReviewSummaryDto._();

  factory ReviewSummaryDto([void updates(ReviewSummaryDtoBuilder b)]) =
      _$ReviewSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewSummaryDto> get serializer =>
      _$ReviewSummaryDtoSerializer();
}

class _$ReviewSummaryDtoSerializer
    implements PrimitiveSerializer<ReviewSummaryDto> {
  @override
  final Iterable<Type> types = const [ReviewSummaryDto, _$ReviewSummaryDto];

  @override
  final String wireName = r'ReviewSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewSummaryDto object, {
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
      specifiedType: const FullType(ReviewSummaryDtoTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ReviewSummaryDtoStatusEnum),
    );
    yield r'confidence';
    yield serializers.serialize(
      object.confidence,
      specifiedType: const FullType(num),
    );
    yield r'confidenceLevel';
    yield serializers.serialize(
      object.confidenceLevel,
      specifiedType: const FullType(ReviewSummaryDtoConfidenceLevelEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewSummaryDto object, {
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
    required ReviewSummaryDtoBuilder result,
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
            specifiedType: const FullType(ReviewSummaryDtoTypeEnum),
          ) as ReviewSummaryDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewSummaryDtoStatusEnum),
          ) as ReviewSummaryDtoStatusEnum;
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
            specifiedType: const FullType(ReviewSummaryDtoConfidenceLevelEnum),
          ) as ReviewSummaryDtoConfidenceLevelEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewSummaryDtoBuilder();
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

class ReviewSummaryDtoTypeEnum extends EnumClass {
  /// Review type
  @BuiltValueEnumConst(wireName: r'DUPLICATE')
  static const ReviewSummaryDtoTypeEnum DUPLICATE =
      _$reviewSummaryDtoTypeEnum_DUPLICATE;

  /// Review type
  @BuiltValueEnumConst(wireName: r'RULE_MATCH')
  static const ReviewSummaryDtoTypeEnum RULE_MATCH =
      _$reviewSummaryDtoTypeEnum_RULE_MATCH;

  /// Review type
  @BuiltValueEnumConst(wireName: r'PAYEE_MATCH')
  static const ReviewSummaryDtoTypeEnum PAYEE_MATCH =
      _$reviewSummaryDtoTypeEnum_PAYEE_MATCH;

  /// Review type
  @BuiltValueEnumConst(wireName: r'ACCOUNT_VALIDATION')
  static const ReviewSummaryDtoTypeEnum ACCOUNT_VALIDATION =
      _$reviewSummaryDtoTypeEnum_ACCOUNT_VALIDATION;

  /// Review type
  @BuiltValueEnumConst(wireName: r'PIPELINE_ERROR', fallback: true)
  static const ReviewSummaryDtoTypeEnum PIPELINE_ERROR =
      _$reviewSummaryDtoTypeEnum_PIPELINE_ERROR;

  static Serializer<ReviewSummaryDtoTypeEnum> get serializer =>
      _$reviewSummaryDtoTypeEnumSerializer;

  const ReviewSummaryDtoTypeEnum._(String name) : super(name);

  static BuiltSet<ReviewSummaryDtoTypeEnum> get values =>
      _$reviewSummaryDtoTypeEnumValues;
  static ReviewSummaryDtoTypeEnum valueOf(String name) =>
      _$reviewSummaryDtoTypeEnumValueOf(name);
}

class ReviewSummaryDtoStatusEnum extends EnumClass {
  /// Review status
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const ReviewSummaryDtoStatusEnum PENDING =
      _$reviewSummaryDtoStatusEnum_PENDING;

  /// Review status
  @BuiltValueEnumConst(wireName: r'RESOLVED')
  static const ReviewSummaryDtoStatusEnum RESOLVED =
      _$reviewSummaryDtoStatusEnum_RESOLVED;

  /// Review status
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const ReviewSummaryDtoStatusEnum EXPIRED =
      _$reviewSummaryDtoStatusEnum_EXPIRED;

  /// Review status
  @BuiltValueEnumConst(wireName: r'CANCELLED', fallback: true)
  static const ReviewSummaryDtoStatusEnum CANCELLED =
      _$reviewSummaryDtoStatusEnum_CANCELLED;

  static Serializer<ReviewSummaryDtoStatusEnum> get serializer =>
      _$reviewSummaryDtoStatusEnumSerializer;

  const ReviewSummaryDtoStatusEnum._(String name) : super(name);

  static BuiltSet<ReviewSummaryDtoStatusEnum> get values =>
      _$reviewSummaryDtoStatusEnumValues;
  static ReviewSummaryDtoStatusEnum valueOf(String name) =>
      _$reviewSummaryDtoStatusEnumValueOf(name);
}

class ReviewSummaryDtoConfidenceLevelEnum extends EnumClass {
  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'HIGH')
  static const ReviewSummaryDtoConfidenceLevelEnum HIGH =
      _$reviewSummaryDtoConfidenceLevelEnum_HIGH;

  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'MEDIUM')
  static const ReviewSummaryDtoConfidenceLevelEnum MEDIUM =
      _$reviewSummaryDtoConfidenceLevelEnum_MEDIUM;

  /// Confidence level derived from score
  @BuiltValueEnumConst(wireName: r'LOW', fallback: true)
  static const ReviewSummaryDtoConfidenceLevelEnum LOW =
      _$reviewSummaryDtoConfidenceLevelEnum_LOW;

  static Serializer<ReviewSummaryDtoConfidenceLevelEnum> get serializer =>
      _$reviewSummaryDtoConfidenceLevelEnumSerializer;

  const ReviewSummaryDtoConfidenceLevelEnum._(String name) : super(name);

  static BuiltSet<ReviewSummaryDtoConfidenceLevelEnum> get values =>
      _$reviewSummaryDtoConfidenceLevelEnumValues;
  static ReviewSummaryDtoConfidenceLevelEnum valueOf(String name) =>
      _$reviewSummaryDtoConfidenceLevelEnumValueOf(name);
}
