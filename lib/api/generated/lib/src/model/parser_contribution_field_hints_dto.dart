//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/field_hint_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_field_hints_dto.g.dart';

/// ParserContributionFieldHintsDto
///
/// Properties:
/// * [date] 
/// * [amount] 
/// * [description] 
/// * [balance] 
/// * [payee] 
/// * [reference] 
/// * [category] 
@BuiltValue()
abstract class ParserContributionFieldHintsDto implements Built<ParserContributionFieldHintsDto, ParserContributionFieldHintsDtoBuilder> {
  @BuiltValueField(wireName: r'date')
  FieldHintDto get date;

  @BuiltValueField(wireName: r'amount')
  FieldHintDto get amount;

  @BuiltValueField(wireName: r'description')
  FieldHintDto? get description;

  @BuiltValueField(wireName: r'balance')
  FieldHintDto? get balance;

  @BuiltValueField(wireName: r'payee')
  FieldHintDto? get payee;

  @BuiltValueField(wireName: r'reference')
  FieldHintDto? get reference;

  @BuiltValueField(wireName: r'category')
  FieldHintDto? get category;

  ParserContributionFieldHintsDto._();

  factory ParserContributionFieldHintsDto([void updates(ParserContributionFieldHintsDtoBuilder b)]) = _$ParserContributionFieldHintsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionFieldHintsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionFieldHintsDto> get serializer => _$ParserContributionFieldHintsDtoSerializer();
}

class _$ParserContributionFieldHintsDtoSerializer implements PrimitiveSerializer<ParserContributionFieldHintsDto> {
  @override
  final Iterable<Type> types = const [ParserContributionFieldHintsDto, _$ParserContributionFieldHintsDto];

  @override
  final String wireName = r'ParserContributionFieldHintsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionFieldHintsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(FieldHintDto),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(FieldHintDto),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(FieldHintDto),
      );
    }
    if (object.balance != null) {
      yield r'balance';
      yield serializers.serialize(
        object.balance,
        specifiedType: const FullType(FieldHintDto),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(FieldHintDto),
      );
    }
    if (object.reference != null) {
      yield r'reference';
      yield serializers.serialize(
        object.reference,
        specifiedType: const FullType(FieldHintDto),
      );
    }
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(FieldHintDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionFieldHintsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionFieldHintsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.date.replace(valueDes);
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.amount.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.description.replace(valueDes);
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.balance.replace(valueDes);
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.payee.replace(valueDes);
          break;
        case r'reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.reference.replace(valueDes);
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FieldHintDto),
          ) as FieldHintDto;
          result.category.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionFieldHintsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionFieldHintsDtoBuilder();
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

