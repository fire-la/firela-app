//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_rule_response_dto.g.dart';

/// TransactionRuleResponseDto
///
/// Properties:
/// * [id] - Rule ID
/// * [name] - Rule name
/// * [narrationKeywords] - Keywords to match in transaction narration
/// * [payeeKeywords] - Keywords to match in payee name
/// * [categoryKeywords] - Keywords to match in category
/// * [methodKeywords] - Keywords to match in payment method
/// * [matchLogic] - Keyword matching logic
/// * [priority] - Rule priority (0-1000, higher = first match)
/// * [enabled] - Whether the rule is enabled
/// * [autoApplyEnabled] - Whether auto-apply is enabled for this rule
/// * [confirmationCount] - Number of confirmations for NLP-learned rules
/// * [additionalTags] - Additional tags
/// * [createdAt] - Created timestamp
/// * [updatedAt] - Updated timestamp
/// * [description] - Rule description
/// * [categoryAccount] - Destination account for categorization
/// * [amountRange] - Amount range for matching
/// * [learningSource] - Learning source: NLP, REVIEW_CENTER, or null for manual
/// * [additionalMetadata] - Additional metadata
@BuiltValue()
abstract class TransactionRuleResponseDto
    implements
        Built<TransactionRuleResponseDto, TransactionRuleResponseDtoBuilder> {
  /// Rule ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Rule name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Keywords to match in transaction narration
  @BuiltValueField(wireName: r'narrationKeywords')
  BuiltList<String> get narrationKeywords;

  /// Keywords to match in payee name
  @BuiltValueField(wireName: r'payeeKeywords')
  BuiltList<String> get payeeKeywords;

  /// Keywords to match in category
  @BuiltValueField(wireName: r'categoryKeywords')
  BuiltList<String> get categoryKeywords;

  /// Keywords to match in payment method
  @BuiltValueField(wireName: r'methodKeywords')
  BuiltList<String> get methodKeywords;

  /// Keyword matching logic
  @BuiltValueField(wireName: r'matchLogic')
  TransactionRuleResponseDtoMatchLogicEnum get matchLogic;
  // enum matchLogicEnum {  OR,  AND,  };

  /// Rule priority (0-1000, higher = first match)
  @BuiltValueField(wireName: r'priority')
  num get priority;

  /// Whether the rule is enabled
  @BuiltValueField(wireName: r'enabled')
  bool get enabled;

  /// Whether auto-apply is enabled for this rule
  @BuiltValueField(wireName: r'autoApplyEnabled')
  bool get autoApplyEnabled;

  /// Number of confirmations for NLP-learned rules
  @BuiltValueField(wireName: r'confirmationCount')
  num get confirmationCount;

  /// Additional tags
  @BuiltValueField(wireName: r'additionalTags')
  BuiltList<String> get additionalTags;

  /// Created timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Updated timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// Rule description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Destination account for categorization
  @BuiltValueField(wireName: r'categoryAccount')
  String? get categoryAccount;

  /// Amount range for matching
  @BuiltValueField(wireName: r'amountRange')
  JsonObject? get amountRange;

  /// Learning source: NLP, REVIEW_CENTER, or null for manual
  @BuiltValueField(wireName: r'learningSource')
  TransactionRuleResponseDtoLearningSourceEnum? get learningSource;
  // enum learningSourceEnum {  NLP,  REVIEW_CENTER,  };

  /// Additional metadata
  @BuiltValueField(wireName: r'additionalMetadata')
  JsonObject? get additionalMetadata;

  TransactionRuleResponseDto._();

  factory TransactionRuleResponseDto(
          [void updates(TransactionRuleResponseDtoBuilder b)]) =
      _$TransactionRuleResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionRuleResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionRuleResponseDto> get serializer =>
      _$TransactionRuleResponseDtoSerializer();
}

class _$TransactionRuleResponseDtoSerializer
    implements PrimitiveSerializer<TransactionRuleResponseDto> {
  @override
  final Iterable<Type> types = const [
    TransactionRuleResponseDto,
    _$TransactionRuleResponseDto
  ];

  @override
  final String wireName = r'TransactionRuleResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionRuleResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'narrationKeywords';
    yield serializers.serialize(
      object.narrationKeywords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'payeeKeywords';
    yield serializers.serialize(
      object.payeeKeywords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'categoryKeywords';
    yield serializers.serialize(
      object.categoryKeywords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'methodKeywords';
    yield serializers.serialize(
      object.methodKeywords,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'matchLogic';
    yield serializers.serialize(
      object.matchLogic,
      specifiedType: const FullType(TransactionRuleResponseDtoMatchLogicEnum),
    );
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(num),
    );
    yield r'enabled';
    yield serializers.serialize(
      object.enabled,
      specifiedType: const FullType(bool),
    );
    yield r'autoApplyEnabled';
    yield serializers.serialize(
      object.autoApplyEnabled,
      specifiedType: const FullType(bool),
    );
    yield r'confirmationCount';
    yield serializers.serialize(
      object.confirmationCount,
      specifiedType: const FullType(num),
    );
    yield r'additionalTags';
    yield serializers.serialize(
      object.additionalTags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoryAccount != null) {
      yield r'categoryAccount';
      yield serializers.serialize(
        object.categoryAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.amountRange != null) {
      yield r'amountRange';
      yield serializers.serialize(
        object.amountRange,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.learningSource != null) {
      yield r'learningSource';
      yield serializers.serialize(
        object.learningSource,
        specifiedType:
            const FullType(TransactionRuleResponseDtoLearningSourceEnum),
      );
    }
    if (object.additionalMetadata != null) {
      yield r'additionalMetadata';
      yield serializers.serialize(
        object.additionalMetadata,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionRuleResponseDto object, {
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
    required TransactionRuleResponseDtoBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'narrationKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.narrationKeywords.replace(valueDes);
          break;
        case r'payeeKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.payeeKeywords.replace(valueDes);
          break;
        case r'categoryKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.categoryKeywords.replace(valueDes);
          break;
        case r'methodKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.methodKeywords.replace(valueDes);
          break;
        case r'matchLogic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransactionRuleResponseDtoMatchLogicEnum),
          ) as TransactionRuleResponseDtoMatchLogicEnum;
          result.matchLogic = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.priority = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'autoApplyEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoApplyEnabled = valueDes;
          break;
        case r'confirmationCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confirmationCount = valueDes;
          break;
        case r'additionalTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.additionalTags.replace(valueDes);
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'categoryAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryAccount = valueDes;
          break;
        case r'amountRange':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.amountRange = valueDes;
          break;
        case r'learningSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TransactionRuleResponseDtoLearningSourceEnum),
          ) as TransactionRuleResponseDtoLearningSourceEnum;
          result.learningSource = valueDes;
          break;
        case r'additionalMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.additionalMetadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionRuleResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionRuleResponseDtoBuilder();
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

class TransactionRuleResponseDtoMatchLogicEnum extends EnumClass {
  /// Keyword matching logic
  @BuiltValueEnumConst(wireName: r'OR')
  static const TransactionRuleResponseDtoMatchLogicEnum OR =
      _$transactionRuleResponseDtoMatchLogicEnum_OR;

  /// Keyword matching logic
  @BuiltValueEnumConst(wireName: r'AND', fallback: true)
  static const TransactionRuleResponseDtoMatchLogicEnum AND =
      _$transactionRuleResponseDtoMatchLogicEnum_AND;

  static Serializer<TransactionRuleResponseDtoMatchLogicEnum> get serializer =>
      _$transactionRuleResponseDtoMatchLogicEnumSerializer;

  const TransactionRuleResponseDtoMatchLogicEnum._(String name) : super(name);

  static BuiltSet<TransactionRuleResponseDtoMatchLogicEnum> get values =>
      _$transactionRuleResponseDtoMatchLogicEnumValues;
  static TransactionRuleResponseDtoMatchLogicEnum valueOf(String name) =>
      _$transactionRuleResponseDtoMatchLogicEnumValueOf(name);
}

class TransactionRuleResponseDtoLearningSourceEnum extends EnumClass {
  /// Learning source: NLP, REVIEW_CENTER, or null for manual
  @BuiltValueEnumConst(wireName: r'NLP')
  static const TransactionRuleResponseDtoLearningSourceEnum NLP =
      _$transactionRuleResponseDtoLearningSourceEnum_NLP;

  /// Learning source: NLP, REVIEW_CENTER, or null for manual
  @BuiltValueEnumConst(wireName: r'REVIEW_CENTER', fallback: true)
  static const TransactionRuleResponseDtoLearningSourceEnum REVIEW_CENTER =
      _$transactionRuleResponseDtoLearningSourceEnum_REVIEW_CENTER;

  static Serializer<TransactionRuleResponseDtoLearningSourceEnum>
      get serializer =>
          _$transactionRuleResponseDtoLearningSourceEnumSerializer;

  const TransactionRuleResponseDtoLearningSourceEnum._(String name)
      : super(name);

  static BuiltSet<TransactionRuleResponseDtoLearningSourceEnum> get values =>
      _$transactionRuleResponseDtoLearningSourceEnumValues;
  static TransactionRuleResponseDtoLearningSourceEnum valueOf(String name) =>
      _$transactionRuleResponseDtoLearningSourceEnumValueOf(name);
}
