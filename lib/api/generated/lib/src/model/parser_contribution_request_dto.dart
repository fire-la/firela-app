//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/parser_contribution_field_hints_dto.dart';
import 'package:firela_api/src/model/parser_contribution_meta_dto.dart';
import 'package:firela_api/src/model/parser_contribution_examples_dto.dart';
import 'package:firela_api/src/model/parser_contribution_samples_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_request_dto.g.dart';

/// ParserContributionRequestDto
///
/// Properties:
/// * [meta] 
/// * [samples] 
/// * [fieldHints] 
/// * [examples] 
@BuiltValue()
abstract class ParserContributionRequestDto implements Built<ParserContributionRequestDto, ParserContributionRequestDtoBuilder> {
  @BuiltValueField(wireName: r'meta')
  ParserContributionMetaDto get meta;

  @BuiltValueField(wireName: r'samples')
  ParserContributionSamplesDto get samples;

  @BuiltValueField(wireName: r'fieldHints')
  ParserContributionFieldHintsDto get fieldHints;

  @BuiltValueField(wireName: r'examples')
  ParserContributionExamplesDto? get examples;

  ParserContributionRequestDto._();

  factory ParserContributionRequestDto([void updates(ParserContributionRequestDtoBuilder b)]) = _$ParserContributionRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionRequestDto> get serializer => _$ParserContributionRequestDtoSerializer();
}

class _$ParserContributionRequestDtoSerializer implements PrimitiveSerializer<ParserContributionRequestDto> {
  @override
  final Iterable<Type> types = const [ParserContributionRequestDto, _$ParserContributionRequestDto];

  @override
  final String wireName = r'ParserContributionRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'meta';
    yield serializers.serialize(
      object.meta,
      specifiedType: const FullType(ParserContributionMetaDto),
    );
    yield r'samples';
    yield serializers.serialize(
      object.samples,
      specifiedType: const FullType(ParserContributionSamplesDto),
    );
    yield r'fieldHints';
    yield serializers.serialize(
      object.fieldHints,
      specifiedType: const FullType(ParserContributionFieldHintsDto),
    );
    if (object.examples != null) {
      yield r'examples';
      yield serializers.serialize(
        object.examples,
        specifiedType: const FullType(ParserContributionExamplesDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionMetaDto),
          ) as ParserContributionMetaDto;
          result.meta.replace(valueDes);
          break;
        case r'samples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionSamplesDto),
          ) as ParserContributionSamplesDto;
          result.samples.replace(valueDes);
          break;
        case r'fieldHints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionFieldHintsDto),
          ) as ParserContributionFieldHintsDto;
          result.fieldHints.replace(valueDes);
          break;
        case r'examples':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ParserContributionExamplesDto),
          ) as ParserContributionExamplesDto;
          result.examples.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionRequestDtoBuilder();
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

