//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_transaction_rule_dto.g.dart';

/// UpdateTransactionRuleDto
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
/// * [enabled] - Enable or disable the rule
/// * [additionalTags] 
/// * [additionalMetadata] 
@BuiltValue()
abstract class UpdateTransactionRuleDto implements Built<UpdateTransactionRuleDto, UpdateTransactionRuleDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

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
  UpdateTransactionRuleDtoMatchLogicEnum? get matchLogic;
  // enum matchLogicEnum {  OR,  AND,  };

  /// Minimum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMin')
  num? get amountMin;

  /// Maximum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMax')
  num? get amountMax;

  @BuiltValueField(wireName: r'priority')
  num? get priority;

  /// Enable or disable the rule
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'additionalTags')
  BuiltList<BuiltList>? get additionalTags;

  @BuiltValueField(wireName: r'additionalMetadata')
  JsonObject? get additionalMetadata;

  UpdateTransactionRuleDto._();

  factory UpdateTransactionRuleDto([void updates(UpdateTransactionRuleDtoBuilder b)]) = _$UpdateTransactionRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTransactionRuleDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTransactionRuleDto> get serializer => _$UpdateTransactionRuleDtoSerializer();
}

class _$UpdateTransactionRuleDtoSerializer implements PrimitiveSerializer<UpdateTransactionRuleDto> {
  @override
  final Iterable<Type> types = const [UpdateTransactionRuleDto, _$UpdateTransactionRuleDto];

  @override
  final String wireName = r'UpdateTransactionRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTransactionRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.matchLogic != null) {
      yield r'matchLogic';
      yield serializers.serialize(
        object.matchLogic,
        specifiedType: const FullType(UpdateTransactionRuleDtoMatchLogicEnum),
      );
    }
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
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(num),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTransactionRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTransactionRuleDtoBuilder result,
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
            specifiedType: const FullType(UpdateTransactionRuleDtoMatchLogicEnum),
          ) as UpdateTransactionRuleDtoMatchLogicEnum;
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
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTransactionRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTransactionRuleDtoBuilder();
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

class UpdateTransactionRuleDtoMatchLogicEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OR')
  static const UpdateTransactionRuleDtoMatchLogicEnum OR = _$updateTransactionRuleDtoMatchLogicEnum_OR;
  @BuiltValueEnumConst(wireName: r'AND')
  static const UpdateTransactionRuleDtoMatchLogicEnum AND = _$updateTransactionRuleDtoMatchLogicEnum_AND;

  static Serializer<UpdateTransactionRuleDtoMatchLogicEnum> get serializer => _$updateTransactionRuleDtoMatchLogicEnumSerializer;

  const UpdateTransactionRuleDtoMatchLogicEnum._(String name): super(name);

  static BuiltSet<UpdateTransactionRuleDtoMatchLogicEnum> get values => _$updateTransactionRuleDtoMatchLogicEnumValues;
  static UpdateTransactionRuleDtoMatchLogicEnum valueOf(String name) => _$updateTransactionRuleDtoMatchLogicEnumValueOf(name);
}

