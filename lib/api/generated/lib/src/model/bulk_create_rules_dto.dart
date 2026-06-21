//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_rules_dto.g.dart';

/// BulkCreateRulesDto
///
/// Properties:
/// * [rules] - Array of rules to import
/// * [conflictStrategy] - Conflict handling strategy: skip (default) ignores duplicates, replace soft-deletes existing rule
@BuiltValue()
abstract class BulkCreateRulesDto implements Built<BulkCreateRulesDto, BulkCreateRulesDtoBuilder> {
  /// Array of rules to import
  @BuiltValueField(wireName: r'rules')
  BuiltList<BuiltList> get rules;

  /// Conflict handling strategy: skip (default) ignores duplicates, replace soft-deletes existing rule
  @BuiltValueField(wireName: r'conflictStrategy')
  BulkCreateRulesDtoConflictStrategyEnum get conflictStrategy;
  // enum conflictStrategyEnum {  replace,  skip,  };

  BulkCreateRulesDto._();

  factory BulkCreateRulesDto([void updates(BulkCreateRulesDtoBuilder b)]) = _$BulkCreateRulesDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreateRulesDtoBuilder b) => b
      ..conflictStrategy = const BulkCreateRulesDtoConflictStrategyEnum._('skip');

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreateRulesDto> get serializer => _$BulkCreateRulesDtoSerializer();
}

class _$BulkCreateRulesDtoSerializer implements PrimitiveSerializer<BulkCreateRulesDto> {
  @override
  final Iterable<Type> types = const [BulkCreateRulesDto, _$BulkCreateRulesDto];

  @override
  final String wireName = r'BulkCreateRulesDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreateRulesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
    );
    yield r'conflictStrategy';
    yield serializers.serialize(
      object.conflictStrategy,
      specifiedType: const FullType(BulkCreateRulesDtoConflictStrategyEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreateRulesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkCreateRulesDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.rules.replace(valueDes);
          break;
        case r'conflictStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BulkCreateRulesDtoConflictStrategyEnum),
          ) as BulkCreateRulesDtoConflictStrategyEnum;
          result.conflictStrategy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreateRulesDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreateRulesDtoBuilder();
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

class BulkCreateRulesDtoConflictStrategyEnum extends EnumClass {

  /// Conflict handling strategy: skip (default) ignores duplicates, replace soft-deletes existing rule
  @BuiltValueEnumConst(wireName: r'replace')
  static const BulkCreateRulesDtoConflictStrategyEnum replace = _$bulkCreateRulesDtoConflictStrategyEnum_replace;
  /// Conflict handling strategy: skip (default) ignores duplicates, replace soft-deletes existing rule
  @BuiltValueEnumConst(wireName: r'skip')
  static const BulkCreateRulesDtoConflictStrategyEnum skip = _$bulkCreateRulesDtoConflictStrategyEnum_skip;

  static Serializer<BulkCreateRulesDtoConflictStrategyEnum> get serializer => _$bulkCreateRulesDtoConflictStrategyEnumSerializer;

  const BulkCreateRulesDtoConflictStrategyEnum._(String name): super(name);

  static BuiltSet<BulkCreateRulesDtoConflictStrategyEnum> get values => _$bulkCreateRulesDtoConflictStrategyEnumValues;
  static BulkCreateRulesDtoConflictStrategyEnum valueOf(String name) => _$bulkCreateRulesDtoConflictStrategyEnumValueOf(name);
}

