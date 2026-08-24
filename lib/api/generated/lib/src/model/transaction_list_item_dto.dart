//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/posting_detail_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_list_item_dto.g.dart';

/// TransactionListItemDto
///
/// Properties:
/// * [id] - Transaction ID
/// * [date] - Transaction date
/// * [flag] - Transaction flag
/// * [customFlag] - Custom flag (if not using standard flags)
/// * [payee] - Payee name
/// * [narration] - Transaction narration
/// * [tags] - Transaction tags
/// * [links] - Transaction links
/// * [meta] - Transaction metadata
/// * [status] - Transaction status
/// * [sourceType] - Source type (free-form string from transaction metadata, e.g. import, api)
/// * [sourcePlatform] - Source platform (e.g., alipay, wechat)
/// * [postings] - Transaction postings
/// * [createdAt] - Created at timestamp
/// * [voidedAt] - Voided at timestamp (if voided)
/// * [voidedBy] - User ID who voided this transaction
/// * [correctionReason] - Correction reason (if voided or superseded)
/// * [supersededBy] - ID of the transaction that supersedes this one (set when status=SUPERSEDED)
/// * [originalTxn] - ID of the transaction this one corrected/replaced (back-link on the replacement)
/// * [viewpointAmount] - Row amount under the request viewpoint (ADR-0126). Category viewpoint (category + flow): per-leg sign-normalized sum over the category account set (Income-root legs negated, Expenses-root identity) — positive under normal booking but NOT clamped (explicit negative expense legs and net-flip refund months stay negative). No viewpoint (plain list / search, no accountId): wallet money-flow net = raw-sign sum over cost-less Assets/Liabilities legs (income positive, expenses negative, transfers net ~0); color cue is the wallet sign (net < 0 = wealth-decreasing). Status-orthogonal: audit views match too (ADR-0128 amount-as-matching-key). Omitted under the account viewpoint (incl. dual) and for rows with no wallet leg.
/// * [viewpointCurrency] - Currency of viewpointAmount. A row spanning multiple currencies takes the largest-magnitude currency group (known simplification, ADR-0126).
@BuiltValue()
abstract class TransactionListItemDto implements Built<TransactionListItemDto, TransactionListItemDtoBuilder> {
  /// Transaction ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Transaction date
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Transaction flag
  @BuiltValueField(wireName: r'flag')
  TransactionListItemDtoFlagEnum? get flag;
  // enum flagEnum {  CLEARED,  PENDING,  PADDING,  SUMMARIZE,  TRANSFER,  CONVERSIONS,  };

  /// Custom flag (if not using standard flags)
  @BuiltValueField(wireName: r'customFlag')
  String? get customFlag;

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction narration
  @BuiltValueField(wireName: r'narration')
  String get narration;

  /// Transaction tags
  @BuiltValueField(wireName: r'tags')
  BuiltList<String> get tags;

  /// Transaction links
  @BuiltValueField(wireName: r'links')
  BuiltList<String> get links;

  /// Transaction metadata
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  /// Transaction status
  @BuiltValueField(wireName: r'status')
  TransactionListItemDtoStatusEnum get status;
  // enum statusEnum {  ACTIVE,  VOIDED,  SUPERSEDED,  };

  /// Source type (free-form string from transaction metadata, e.g. import, api)
  @BuiltValueField(wireName: r'sourceType')
  String? get sourceType;

  /// Source platform (e.g., alipay, wechat)
  @BuiltValueField(wireName: r'sourcePlatform')
  String? get sourcePlatform;

  /// Transaction postings
  @BuiltValueField(wireName: r'postings')
  BuiltList<PostingDetailDto> get postings;

  /// Created at timestamp
  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  /// Voided at timestamp (if voided)
  @BuiltValueField(wireName: r'voidedAt')
  String? get voidedAt;

  /// User ID who voided this transaction
  @BuiltValueField(wireName: r'voidedBy')
  String? get voidedBy;

  /// Correction reason (if voided or superseded)
  @BuiltValueField(wireName: r'correctionReason')
  String? get correctionReason;

  /// ID of the transaction that supersedes this one (set when status=SUPERSEDED)
  @BuiltValueField(wireName: r'supersededBy')
  String? get supersededBy;

  /// ID of the transaction this one corrected/replaced (back-link on the replacement)
  @BuiltValueField(wireName: r'originalTxn')
  String? get originalTxn;

  /// Row amount under the request viewpoint (ADR-0126). Category viewpoint (category + flow): per-leg sign-normalized sum over the category account set (Income-root legs negated, Expenses-root identity) — positive under normal booking but NOT clamped (explicit negative expense legs and net-flip refund months stay negative). No viewpoint (plain list / search, no accountId): wallet money-flow net = raw-sign sum over cost-less Assets/Liabilities legs (income positive, expenses negative, transfers net ~0); color cue is the wallet sign (net < 0 = wealth-decreasing). Status-orthogonal: audit views match too (ADR-0128 amount-as-matching-key). Omitted under the account viewpoint (incl. dual) and for rows with no wallet leg.
  @BuiltValueField(wireName: r'viewpointAmount')
  String? get viewpointAmount;

  /// Currency of viewpointAmount. A row spanning multiple currencies takes the largest-magnitude currency group (known simplification, ADR-0126).
  @BuiltValueField(wireName: r'viewpointCurrency')
  String? get viewpointCurrency;

  TransactionListItemDto._();

  factory TransactionListItemDto([void updates(TransactionListItemDtoBuilder b)]) = _$TransactionListItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionListItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionListItemDto> get serializer => _$TransactionListItemDtoSerializer();
}

class _$TransactionListItemDtoSerializer implements PrimitiveSerializer<TransactionListItemDto> {
  @override
  final Iterable<Type> types = const [TransactionListItemDto, _$TransactionListItemDto];

  @override
  final String wireName = r'TransactionListItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionListItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(TransactionListItemDtoFlagEnum),
      );
    }
    if (object.customFlag != null) {
      yield r'customFlag';
      yield serializers.serialize(
        object.customFlag,
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
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'links';
    yield serializers.serialize(
      object.links,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(TransactionListItemDtoStatusEnum),
    );
    if (object.sourceType != null) {
      yield r'sourceType';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourcePlatform != null) {
      yield r'sourcePlatform';
      yield serializers.serialize(
        object.sourcePlatform,
        specifiedType: const FullType(String),
      );
    }
    yield r'postings';
    yield serializers.serialize(
      object.postings,
      specifiedType: const FullType(BuiltList, [FullType(PostingDetailDto)]),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    if (object.voidedAt != null) {
      yield r'voidedAt';
      yield serializers.serialize(
        object.voidedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.voidedBy != null) {
      yield r'voidedBy';
      yield serializers.serialize(
        object.voidedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.correctionReason != null) {
      yield r'correctionReason';
      yield serializers.serialize(
        object.correctionReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.supersededBy != null) {
      yield r'supersededBy';
      yield serializers.serialize(
        object.supersededBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.originalTxn != null) {
      yield r'originalTxn';
      yield serializers.serialize(
        object.originalTxn,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewpointAmount != null) {
      yield r'viewpointAmount';
      yield serializers.serialize(
        object.viewpointAmount,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewpointCurrency != null) {
      yield r'viewpointCurrency';
      yield serializers.serialize(
        object.viewpointCurrency,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionListItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransactionListItemDtoBuilder result,
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
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionListItemDtoFlagEnum),
          ) as TransactionListItemDtoFlagEnum;
          result.flag = valueDes;
          break;
        case r'customFlag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customFlag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.links.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransactionListItemDtoStatusEnum),
          ) as TransactionListItemDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'sourceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceType = valueDes;
          break;
        case r'sourcePlatform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourcePlatform = valueDes;
          break;
        case r'postings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PostingDetailDto)]),
          ) as BuiltList<PostingDetailDto>;
          result.postings.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'voidedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voidedAt = valueDes;
          break;
        case r'voidedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voidedBy = valueDes;
          break;
        case r'correctionReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctionReason = valueDes;
          break;
        case r'supersededBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supersededBy = valueDes;
          break;
        case r'originalTxn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originalTxn = valueDes;
          break;
        case r'viewpointAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewpointAmount = valueDes;
          break;
        case r'viewpointCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewpointCurrency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionListItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionListItemDtoBuilder();
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

class TransactionListItemDtoFlagEnum extends EnumClass {

  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'CLEARED')
  static const TransactionListItemDtoFlagEnum CLEARED = _$transactionListItemDtoFlagEnum_CLEARED;
  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const TransactionListItemDtoFlagEnum PENDING = _$transactionListItemDtoFlagEnum_PENDING;
  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'PADDING')
  static const TransactionListItemDtoFlagEnum PADDING = _$transactionListItemDtoFlagEnum_PADDING;
  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'SUMMARIZE')
  static const TransactionListItemDtoFlagEnum SUMMARIZE = _$transactionListItemDtoFlagEnum_SUMMARIZE;
  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const TransactionListItemDtoFlagEnum TRANSFER = _$transactionListItemDtoFlagEnum_TRANSFER;
  /// Transaction flag
  @BuiltValueEnumConst(wireName: r'CONVERSIONS')
  static const TransactionListItemDtoFlagEnum CONVERSIONS = _$transactionListItemDtoFlagEnum_CONVERSIONS;

  static Serializer<TransactionListItemDtoFlagEnum> get serializer => _$transactionListItemDtoFlagEnumSerializer;

  const TransactionListItemDtoFlagEnum._(String name): super(name);

  static BuiltSet<TransactionListItemDtoFlagEnum> get values => _$transactionListItemDtoFlagEnumValues;
  static TransactionListItemDtoFlagEnum valueOf(String name) => _$transactionListItemDtoFlagEnumValueOf(name);
}

class TransactionListItemDtoStatusEnum extends EnumClass {

  /// Transaction status
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const TransactionListItemDtoStatusEnum ACTIVE = _$transactionListItemDtoStatusEnum_ACTIVE;
  /// Transaction status
  @BuiltValueEnumConst(wireName: r'VOIDED')
  static const TransactionListItemDtoStatusEnum VOIDED = _$transactionListItemDtoStatusEnum_VOIDED;
  /// Transaction status
  @BuiltValueEnumConst(wireName: r'SUPERSEDED')
  static const TransactionListItemDtoStatusEnum SUPERSEDED = _$transactionListItemDtoStatusEnum_SUPERSEDED;

  static Serializer<TransactionListItemDtoStatusEnum> get serializer => _$transactionListItemDtoStatusEnumSerializer;

  const TransactionListItemDtoStatusEnum._(String name): super(name);

  static BuiltSet<TransactionListItemDtoStatusEnum> get values => _$transactionListItemDtoStatusEnumValues;
  static TransactionListItemDtoStatusEnum valueOf(String name) => _$transactionListItemDtoStatusEnumValueOf(name);
}

