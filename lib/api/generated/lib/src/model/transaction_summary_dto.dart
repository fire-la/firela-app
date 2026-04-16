//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_summary_dto.g.dart';

/// TransactionSummaryDto
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
@BuiltValue(instantiable: false)
abstract class TransactionSummaryDto {
  /// Transaction date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction amount (absolute value)
  @BuiltValueField(wireName: r'amount')
  String get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction ID (null if transaction deleted)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Payee/Merchant name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Source account name (first posting)
  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueField(wireName: r'sourceType')
  TransactionSummaryDtoSourceTypeEnum? get sourceType;
  // enum sourceTypeEnum {  NLP,  CSV,  OCR,  API,  };

  /// Source platform (e.g., alipay, wechat)
  @BuiltValueField(wireName: r'sourcePlatform')
  String? get sourcePlatform;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionSummaryDto> get serializer =>
      _$TransactionSummaryDtoSerializer();
}

class _$TransactionSummaryDtoSerializer
    implements PrimitiveSerializer<TransactionSummaryDto> {
  @override
  final Iterable<Type> types = const [TransactionSummaryDto];

  @override
  final String wireName = r'TransactionSummaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
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
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(TransactionSummaryDtoSourceTypeEnum),
      );
    }
    if (object.sourcePlatform != null) {
      yield r'sourcePlatform';
      yield serializers.serialize(
        object.sourcePlatform,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  TransactionSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized,
            specifiedType: FullType($TransactionSummaryDto))
        as $TransactionSummaryDto;
  }
}

/// a concrete implementation of [TransactionSummaryDto], since [TransactionSummaryDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TransactionSummaryDto
    implements
        TransactionSummaryDto,
        Built<$TransactionSummaryDto, $TransactionSummaryDtoBuilder> {
  $TransactionSummaryDto._();

  factory $TransactionSummaryDto(
          [void Function($TransactionSummaryDtoBuilder)? updates]) =
      _$$TransactionSummaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TransactionSummaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TransactionSummaryDto> get serializer =>
      _$$TransactionSummaryDtoSerializer();
}

class _$$TransactionSummaryDtoSerializer
    implements PrimitiveSerializer<$TransactionSummaryDto> {
  @override
  final Iterable<Type> types = const [
    $TransactionSummaryDto,
    _$$TransactionSummaryDto
  ];

  @override
  final String wireName = r'$TransactionSummaryDto';

  @override
  Object serialize(
    Serializers serializers,
    $TransactionSummaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object,
        specifiedType: FullType(TransactionSummaryDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransactionSummaryDtoBuilder result,
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
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
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
        case r'sourcePlatform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourcePlatform = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $TransactionSummaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TransactionSummaryDtoBuilder();
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

class TransactionSummaryDtoSourceTypeEnum extends EnumClass {
  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'NLP')
  static const TransactionSummaryDtoSourceTypeEnum NLP =
      _$transactionSummaryDtoSourceTypeEnum_NLP;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'CSV')
  static const TransactionSummaryDtoSourceTypeEnum CSV =
      _$transactionSummaryDtoSourceTypeEnum_CSV;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'OCR')
  static const TransactionSummaryDtoSourceTypeEnum OCR =
      _$transactionSummaryDtoSourceTypeEnum_OCR;

  /// Source type (NLP, CSV, OCR, API)
  @BuiltValueEnumConst(wireName: r'API', fallback: true)
  static const TransactionSummaryDtoSourceTypeEnum API =
      _$transactionSummaryDtoSourceTypeEnum_API;

  static Serializer<TransactionSummaryDtoSourceTypeEnum> get serializer =>
      _$transactionSummaryDtoSourceTypeEnumSerializer;

  const TransactionSummaryDtoSourceTypeEnum._(String name) : super(name);

  static BuiltSet<TransactionSummaryDtoSourceTypeEnum> get values =>
      _$transactionSummaryDtoSourceTypeEnumValues;
  static TransactionSummaryDtoSourceTypeEnum valueOf(String name) =>
      _$transactionSummaryDtoSourceTypeEnumValueOf(name);
}
