//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'expected_transaction_rule_dto.g.dart';

/// ExpectedTransactionRuleDto
///
/// Properties:
/// * [name] - Rule name
/// * [frequency] - Rule frequency
/// * [currency] - Currency code
/// * [icon] - Rule icon
@BuiltValue()
abstract class ExpectedTransactionRuleDto
    implements
        Built<ExpectedTransactionRuleDto, ExpectedTransactionRuleDtoBuilder> {
  /// Rule name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Rule frequency
  @BuiltValueField(wireName: r'frequency')
  String get frequency;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Rule icon
  @BuiltValueField(wireName: r'icon')
  JsonObject? get icon;

  ExpectedTransactionRuleDto._();

  factory ExpectedTransactionRuleDto(
          [void updates(ExpectedTransactionRuleDtoBuilder b)]) =
      _$ExpectedTransactionRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExpectedTransactionRuleDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExpectedTransactionRuleDto> get serializer =>
      _$ExpectedTransactionRuleDtoSerializer();
}

class _$ExpectedTransactionRuleDtoSerializer
    implements PrimitiveSerializer<ExpectedTransactionRuleDto> {
  @override
  final Iterable<Type> types = const [
    ExpectedTransactionRuleDto,
    _$ExpectedTransactionRuleDto
  ];

  @override
  final String wireName = r'ExpectedTransactionRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExpectedTransactionRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExpectedTransactionRuleDto object, {
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
    required ExpectedTransactionRuleDtoBuilder result,
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
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.frequency = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.icon = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExpectedTransactionRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpectedTransactionRuleDtoBuilder();
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
