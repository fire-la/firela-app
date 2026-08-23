//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/expected_transaction_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_examples_dto.g.dart';

/// ParserContributionExamplesDto
///
/// Properties:
/// * [expectedTransactions] 
@BuiltValue()
abstract class ParserContributionExamplesDto implements Built<ParserContributionExamplesDto, ParserContributionExamplesDtoBuilder> {
  @BuiltValueField(wireName: r'expectedTransactions')
  BuiltList<ExpectedTransactionDto> get expectedTransactions;

  ParserContributionExamplesDto._();

  factory ParserContributionExamplesDto([void updates(ParserContributionExamplesDtoBuilder b)]) = _$ParserContributionExamplesDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionExamplesDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionExamplesDto> get serializer => _$ParserContributionExamplesDtoSerializer();
}

class _$ParserContributionExamplesDtoSerializer implements PrimitiveSerializer<ParserContributionExamplesDto> {
  @override
  final Iterable<Type> types = const [ParserContributionExamplesDto, _$ParserContributionExamplesDto];

  @override
  final String wireName = r'ParserContributionExamplesDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionExamplesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expectedTransactions';
    yield serializers.serialize(
      object.expectedTransactions,
      specifiedType: const FullType(BuiltList, [FullType(ExpectedTransactionDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionExamplesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionExamplesDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expectedTransactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExpectedTransactionDto)]),
          ) as BuiltList<ExpectedTransactionDto>;
          result.expectedTransactions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionExamplesDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionExamplesDtoBuilder();
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

