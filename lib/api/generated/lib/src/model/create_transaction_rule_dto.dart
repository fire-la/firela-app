//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_transaction_rule_dto.g.dart';

/// CreateTransactionRuleDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [narrationKeywords] 
/// * [payeeKeywords] 
/// * [categoryKeywords] 
/// * [methodKeywords] - Payment method keywords (e.g., HuaBei, YuEBao)
/// * [categoryAccount] - Destination account for expenses/income (e.g., Expenses:Food:Coffee)
/// * [matchLogic] 
/// * [amountMin] - Minimum transaction amount (inclusive)
/// * [amountMax] - Maximum transaction amount (inclusive)
/// * [priority] 
/// * [additionalTags] 
/// * [additionalMetadata] 
/// * [upsertByPayee] - If true, update existing rule with matching payeeKeywords[0] instead of creating new rule
@BuiltValue()
abstract class CreateTransactionRuleDto implements Built<CreateTransactionRuleDto, CreateTransactionRuleDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'narrationKeywords')
  BuiltList<BuiltList>? get narrationKeywords;

  @BuiltValueField(wireName: r'payeeKeywords')
  BuiltList<BuiltList>? get payeeKeywords;

  @BuiltValueField(wireName: r'categoryKeywords')
  BuiltList<BuiltList>? get categoryKeywords;

  /// Payment method keywords (e.g., HuaBei, YuEBao)
  @BuiltValueField(wireName: r'methodKeywords')
  BuiltList<BuiltList>? get methodKeywords;

  /// Destination account for expenses/income (e.g., Expenses:Food:Coffee)
  @BuiltValueField(wireName: r'categoryAccount')
  String? get categoryAccount;

  @BuiltValueField(wireName: r'matchLogic')
  CreateTransactionRuleDtoMatchLogicEnum get matchLogic;
  // enum matchLogicEnum {  OR,  AND,  };

  /// Minimum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMin')
  num? get amountMin;

  /// Maximum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMax')
  num? get amountMax;

  @BuiltValueField(wireName: r'priority')
  num get priority;

  @BuiltValueField(wireName: r'additionalTags')
  BuiltList<BuiltList>? get additionalTags;

  @BuiltValueField(wireName: r'additionalMetadata')
  JsonObject? get additionalMetadata;

  /// If true, update existing rule with matching payeeKeywords[0] instead of creating new rule
  @BuiltValueField(wireName: r'upsertByPayee')
  bool? get upsertByPayee;

  CreateTransactionRuleDto._();

  factory CreateTransactionRuleDto([void updates(CreateTransactionRuleDtoBuilder b)]) = _$CreateTransactionRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTransactionRuleDtoBuilder b) => b
      ..matchLogic = const CreateTransactionRuleDtoMatchLogicEnum._('OR')
      ..priority = 50;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTransactionRuleDto> get serializer => _$CreateTransactionRuleDtoSerializer();
}

class _$CreateTransactionRuleDtoSerializer implements PrimitiveSerializer<CreateTransactionRuleDto> {
  @override
  final Iterable<Type> types = const [CreateTransactionRuleDto, _$CreateTransactionRuleDto];

  @override
  final String wireName = r'CreateTransactionRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTransactionRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.narrationKeywords != null) {
      yield r'narrationKeywords';
      yield serializers.serialize(
        object.narrationKeywords,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
      );
    }
    if (object.payeeKeywords != null) {
      yield r'payeeKeywords';
      yield serializers.serialize(
        object.payeeKeywords,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
      );
    }
    if (object.categoryKeywords != null) {
      yield r'categoryKeywords';
      yield serializers.serialize(
        object.categoryKeywords,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
      );
    }
    if (object.methodKeywords != null) {
      yield r'methodKeywords';
      yield serializers.serialize(
        object.methodKeywords,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
      );
    }
    if (object.categoryAccount != null) {
      yield r'categoryAccount';
      yield serializers.serialize(
        object.categoryAccount,
        specifiedType: const FullType(String),
      );
    }
    yield r'matchLogic';
    yield serializers.serialize(
      object.matchLogic,
      specifiedType: const FullType(CreateTransactionRuleDtoMatchLogicEnum),
    );
    if (object.amountMin != null) {
      yield r'amountMin';
      yield serializers.serialize(
        object.amountMin,
        specifiedType: const FullType(num),
      );
    }
    if (object.amountMax != null) {
      yield r'amountMax';
      yield serializers.serialize(
        object.amountMax,
        specifiedType: const FullType(num),
      );
    }
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(num),
    );
    if (object.additionalTags != null) {
      yield r'additionalTags';
      yield serializers.serialize(
        object.additionalTags,
        specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
      );
    }
    if (object.additionalMetadata != null) {
      yield r'additionalMetadata';
      yield serializers.serialize(
        object.additionalMetadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.upsertByPayee != null) {
      yield r'upsertByPayee';
      yield serializers.serialize(
        object.upsertByPayee,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTransactionRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTransactionRuleDtoBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'narrationKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.narrationKeywords.replace(valueDes);
          break;
        case r'payeeKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.payeeKeywords.replace(valueDes);
          break;
        case r'categoryKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.categoryKeywords.replace(valueDes);
          break;
        case r'methodKeywords':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.methodKeywords.replace(valueDes);
          break;
        case r'categoryAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryAccount = valueDes;
          break;
        case r'matchLogic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTransactionRuleDtoMatchLogicEnum),
          ) as CreateTransactionRuleDtoMatchLogicEnum;
          result.matchLogic = valueDes;
          break;
        case r'amountMin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountMin = valueDes;
          break;
        case r'amountMax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amountMax = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.priority = valueDes;
          break;
        case r'additionalTags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.additionalTags.replace(valueDes);
          break;
        case r'additionalMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.additionalMetadata = valueDes;
          break;
        case r'upsertByPayee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.upsertByPayee = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTransactionRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransactionRuleDtoBuilder();
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

class CreateTransactionRuleDtoMatchLogicEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OR')
  static const CreateTransactionRuleDtoMatchLogicEnum OR = _$createTransactionRuleDtoMatchLogicEnum_OR;
  @BuiltValueEnumConst(wireName: r'AND')
  static const CreateTransactionRuleDtoMatchLogicEnum AND = _$createTransactionRuleDtoMatchLogicEnum_AND;

  static Serializer<CreateTransactionRuleDtoMatchLogicEnum> get serializer => _$createTransactionRuleDtoMatchLogicEnumSerializer;

  const CreateTransactionRuleDtoMatchLogicEnum._(String name): super(name);

  static BuiltSet<CreateTransactionRuleDtoMatchLogicEnum> get values => _$createTransactionRuleDtoMatchLogicEnumValues;
  static CreateTransactionRuleDtoMatchLogicEnum valueOf(String name) => _$createTransactionRuleDtoMatchLogicEnumValueOf(name);
}

