//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_rule_dto.g.dart';

/// TestRuleDto
///
/// Properties:
/// * [narration]
/// * [payee]
/// * [categoryAccount]
/// * [amount]
/// * [currency]
@BuiltValue()
abstract class TestRuleDto implements Built<TestRuleDto, TestRuleDtoBuilder> {
  @BuiltValueField(wireName: r'narration')
  String get narration;

  @BuiltValueField(wireName: r'payee')
  String? get payee;

  @BuiltValueField(wireName: r'categoryAccount')
  String? get categoryAccount;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'currency')
  String? get currency;

  TestRuleDto._();

  factory TestRuleDto([void updates(TestRuleDtoBuilder b)]) = _$TestRuleDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestRuleDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestRuleDto> get serializer => _$TestRuleDtoSerializer();
}

class _$TestRuleDtoSerializer implements PrimitiveSerializer<TestRuleDto> {
  @override
  final Iterable<Type> types = const [TestRuleDto, _$TestRuleDto];

  @override
  final String wireName = r'TestRuleDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestRuleDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'narration';
    yield serializers.serialize(
      object.narration,
      specifiedType: const FullType(String),
    );
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    TestRuleDto object, {
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
    required TestRuleDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'categoryAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryAccount = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestRuleDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestRuleDtoBuilder();
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
