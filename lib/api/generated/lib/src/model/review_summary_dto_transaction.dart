//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/transaction_summary_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_summary_dto_transaction.g.dart';

/// Transaction summary for display (null if transaction deleted)
///
/// Properties:
/// * [date] - Transaction date (YYYY-MM-DD)
/// * [amount] - Transaction amount (absolute value)
/// * [currency] - Currency code
/// * [narration] - Transaction narration
/// * [id] - Transaction ID (null if transaction deleted)
/// * [payee] - Payee/Merchant name
/// * [accountName] - Source account name (first posting)
/// * [sourceType] - Source type (NLP, CSV, OCR, API)
/// * [sourcePlatform] - Source platform (e.g., alipay, wechat)
@BuiltValue()
abstract class ReviewSummaryDtoTransaction
    implements
        TransactionSummaryDto,
        Built<ReviewSummaryDtoTransaction, ReviewSummaryDtoTransactionBuilder> {
  ReviewSummaryDtoTransaction._();

  factory ReviewSummaryDtoTransaction(
          [void updates(ReviewSummaryDtoTransactionBuilder b)]) =
      _$ReviewSummaryDtoTransaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewSummaryDtoTransactionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewSummaryDtoTransaction> get serializer =>
      _$ReviewSummaryDtoTransactionSerializer();
}

class _$ReviewSummaryDtoTransactionSerializer
    implements PrimitiveSerializer<ReviewSummaryDtoTransaction> {
  @override
  final Iterable<Type> types = const [
    ReviewSummaryDtoTransaction,
    _$ReviewSummaryDtoTransaction
  ];

  @override
  final String wireName = r'ReviewSummaryDtoTransaction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewSummaryDtoTransaction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(TransactionSummaryDtoSourceTypeEnum),
      );
    }
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.sourcePlatform != null) {
      yield r'sourcePlatform';
      yield serializers.serialize(
        object.sourcePlatform,
        specifiedType: const FullType(String),
      );
    }
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewSummaryDtoTransaction object, {
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
    required ReviewSummaryDtoTransactionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionSummaryDtoSourceTypeEnum),
          ) as TransactionSummaryDtoSourceTypeEnum;
          result.sourceType = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'sourcePlatform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourcePlatform = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewSummaryDtoTransaction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewSummaryDtoTransactionBuilder();
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

class ReviewSummaryDtoTransactionSourceTypeEnum extends EnumClass {
  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'NLP')
  static const ReviewSummaryDtoTransactionSourceTypeEnum NLP =
      _$reviewSummaryDtoTransactionSourceTypeEnum_NLP;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'CSV')
  static const ReviewSummaryDtoTransactionSourceTypeEnum CSV =
      _$reviewSummaryDtoTransactionSourceTypeEnum_CSV;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'OCR')
  static const ReviewSummaryDtoTransactionSourceTypeEnum OCR =
      _$reviewSummaryDtoTransactionSourceTypeEnum_OCR;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'API', fallback: true)
  static const ReviewSummaryDtoTransactionSourceTypeEnum API =
      _$reviewSummaryDtoTransactionSourceTypeEnum_API;

  static Serializer<ReviewSummaryDtoTransactionSourceTypeEnum> get serializer =>
      _$reviewSummaryDtoTransactionSourceTypeEnumSerializer;

  const ReviewSummaryDtoTransactionSourceTypeEnum._(String name) : super(name);

  static BuiltSet<ReviewSummaryDtoTransactionSourceTypeEnum> get values =>
      _$reviewSummaryDtoTransactionSourceTypeEnumValues;
  static ReviewSummaryDtoTransactionSourceTypeEnum valueOf(String name) =>
      _$reviewSummaryDtoTransactionSourceTypeEnumValueOf(name);
}
