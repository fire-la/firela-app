//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_rule_dto.g.dart';

/// ValidateRuleDto
///
/// Properties:
/// * [name]
/// * [matchLogic]
/// * [priority]
/// * [description]
/// * [narrationKeywords]
/// * [payeeKeywords]
/// * [categoryKeywords]
/// * [methodKeywords] - Payment method keywords (e.g., HuaBei, YuEBao)
/// * [categoryAccount] - Destination account for expenses/income (e.g., Expenses:Food:Coffee)
/// * [amountMin] - Minimum transaction amount (inclusive)
/// * [amountMax] - Maximum transaction amount (inclusive)
/// * [additionalTags]
/// * [additionalMetadata]
/// * [upsertByPayee] - If true, update existing rule with matching payeeKeywords[0] instead of creating new rule
@BuiltValue()
abstract class ValidateRuleDto
    implements Built<ValidateRuleDto, ValidateRuleDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'matchLogic')
  ValidateRuleDtoMatchLogicEnum get matchLogic;
  // enum matchLogicEnum {  OR,  AND,  };

  @BuiltValueField(wireName: r'priority')
  num get priority;

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

  /// Minimum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMin')
  num? get amountMin;

  /// Maximum transaction amount (inclusive)
  @BuiltValueField(wireName: r'amountMax')
  num? get amountMax;

  @BuiltValueField(wireName: r'additionalTags')
  BuiltList<BuiltList>? get additionalTags;

  @BuiltValueField(wireName: r'additionalMetadata')
  JsonObject? get additionalMetadata;

  /// If true, update existing rule with matching payeeKeywords[0] instead of creating new rule
  @BuiltValueField(wireName: r'upsertByPayee')
  bool? get upsertByPayee;

  ValidateRuleDto._();

  factory ValidateRuleDto([void updates(ValidateRuleDtoBuilder b)]) =
      _$ValidateRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateRuleDtoBuilder b) => b
    ..matchLogic = const ValidateRuleDtoMatchLogicEnum._('OR')
    ..priority = 50;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateRuleDto> get serializer =>
      _$ValidateRuleDtoSerializer();
}

class _$ValidateRuleDtoSerializer
    implements PrimitiveSerializer<ValidateRuleDto> {
  @override
  final Iterable<Type> types = const [ValidateRuleDto, _$ValidateRuleDto];

  @override
  final String wireName = r'ValidateRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'matchLogic';
    yield serializers.serialize(
      object.matchLogic,
      specifiedType: const FullType(ValidateRuleDtoMatchLogicEnum),
    );
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(num),
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
    ValidateRuleDto object, {
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
    required ValidateRuleDtoBuilder result,
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
        case r'matchLogic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ValidateRuleDtoMatchLogicEnum),
          ) as ValidateRuleDtoMatchLogicEnum;
          result.matchLogic = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.priority = valueDes;
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
  ValidateRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateRuleDtoBuilder();
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

class ValidateRuleDtoMatchLogicEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OR')
  static const ValidateRuleDtoMatchLogicEnum OR =
      _$validateRuleDtoMatchLogicEnum_OR;
  @BuiltValueEnumConst(wireName: r'AND', fallback: true)
  static const ValidateRuleDtoMatchLogicEnum AND =
      _$validateRuleDtoMatchLogicEnum_AND;

  static Serializer<ValidateRuleDtoMatchLogicEnum> get serializer =>
      _$validateRuleDtoMatchLogicEnumSerializer;

  const ValidateRuleDtoMatchLogicEnum._(String name) : super(name);

  static BuiltSet<ValidateRuleDtoMatchLogicEnum> get values =>
      _$validateRuleDtoMatchLogicEnumValues;
  static ValidateRuleDtoMatchLogicEnum valueOf(String name) =>
      _$validateRuleDtoMatchLogicEnumValueOf(name);
}
