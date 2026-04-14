//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_item_preview_dto.g.dart';

/// ReviewItemPreviewDto
///
/// Properties:
/// * [index] - Index in the import batch (for tracking)
/// * [date] - Transaction date (ISO format)
/// * [narration] - Transaction narration/description
/// * [amount] - Transaction amount (absolute value)
/// * [currency] - Currency code
/// * [payee] - Payee name
/// * [category] - Inferred category from rule matching
/// * [confidence] - Confidence score for the match (0-1)
/// * [branchType] - Type of branch requiring review
/// * [reasons] - Human-readable reasons for requiring review
@BuiltValue()
abstract class ReviewItemPreviewDto
    implements Built<ReviewItemPreviewDto, ReviewItemPreviewDtoBuilder> {
  /// Index in the import batch (for tracking)
  @BuiltValueField(wireName: r'index')
  num get index;

  /// Transaction date (ISO format)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction narration/description
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction amount (absolute value)
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Inferred category from rule matching
  @BuiltValueField(wireName: r'category')
  String? get category;

  /// Confidence score for the match (0-1)
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// Type of branch requiring review
  @BuiltValueField(wireName: r'branchType')
  ReviewItemPreviewDtoBranchTypeEnum? get branchType;
  // enum branchTypeEnum {  DUPLICATE,  PAYEE_MATCH,  RULE_MATCH,  ACCOUNT_VALIDATION,  PIPELINE_ERROR,  };

  /// Human-readable reasons for requiring review
  @BuiltValueField(wireName: r'reasons')
  BuiltList<String>? get reasons;

  ReviewItemPreviewDto._();

  factory ReviewItemPreviewDto([void updates(ReviewItemPreviewDtoBuilder b)]) =
      _$ReviewItemPreviewDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewItemPreviewDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewItemPreviewDto> get serializer =>
      _$ReviewItemPreviewDtoSerializer();
}

class _$ReviewItemPreviewDtoSerializer
    implements PrimitiveSerializer<ReviewItemPreviewDto> {
  @override
  final Iterable<Type> types = const [
    ReviewItemPreviewDto,
    _$ReviewItemPreviewDto
  ];

  @override
  final String wireName = r'ReviewItemPreviewDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewItemPreviewDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(num),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
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
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(String),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.branchType != null) {
      yield r'branchType';
      yield serializers.serialize(
        object.branchType,
        specifiedType: const FullType(ReviewItemPreviewDtoBranchTypeEnum),
      );
    }
    if (object.reasons != null) {
      yield r'reasons';
      yield serializers.serialize(
        object.reasons,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewItemPreviewDto object, {
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
    required ReviewItemPreviewDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.index = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.category = valueDes;
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'branchType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReviewItemPreviewDtoBranchTypeEnum),
          ) as ReviewItemPreviewDtoBranchTypeEnum;
          result.branchType = valueDes;
          break;
        case r'reasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reasons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewItemPreviewDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewItemPreviewDtoBuilder();
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

class ReviewItemPreviewDtoBranchTypeEnum extends EnumClass {
  /// Type of branch requiring review
  @BuiltValueEnumConst(wireName: r'DUPLICATE')
  static const ReviewItemPreviewDtoBranchTypeEnum DUPLICATE =
      _$reviewItemPreviewDtoBranchTypeEnum_DUPLICATE;

  /// Type of branch requiring review
  @BuiltValueEnumConst(wireName: r'PAYEE_MATCH')
  static const ReviewItemPreviewDtoBranchTypeEnum PAYEE_MATCH =
      _$reviewItemPreviewDtoBranchTypeEnum_PAYEE_MATCH;

  /// Type of branch requiring review
  @BuiltValueEnumConst(wireName: r'RULE_MATCH')
  static const ReviewItemPreviewDtoBranchTypeEnum RULE_MATCH =
      _$reviewItemPreviewDtoBranchTypeEnum_RULE_MATCH;

  /// Type of branch requiring review
  @BuiltValueEnumConst(wireName: r'ACCOUNT_VALIDATION')
  static const ReviewItemPreviewDtoBranchTypeEnum ACCOUNT_VALIDATION =
      _$reviewItemPreviewDtoBranchTypeEnum_ACCOUNT_VALIDATION;

  /// Type of branch requiring review
  @BuiltValueEnumConst(wireName: r'PIPELINE_ERROR', fallback: true)
  static const ReviewItemPreviewDtoBranchTypeEnum PIPELINE_ERROR =
      _$reviewItemPreviewDtoBranchTypeEnum_PIPELINE_ERROR;

  static Serializer<ReviewItemPreviewDtoBranchTypeEnum> get serializer =>
      _$reviewItemPreviewDtoBranchTypeEnumSerializer;

  const ReviewItemPreviewDtoBranchTypeEnum._(String name) : super(name);

  static BuiltSet<ReviewItemPreviewDtoBranchTypeEnum> get values =>
      _$reviewItemPreviewDtoBranchTypeEnumValues;
  static ReviewItemPreviewDtoBranchTypeEnum valueOf(String name) =>
      _$reviewItemPreviewDtoBranchTypeEnumValueOf(name);
}
