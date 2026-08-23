//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_samples_dto.g.dart';

/// ParserContributionSamplesDto
///
/// Properties:
/// * [rows] - Client-sanitized sample rows (key = column name, value = cell)
/// * [rawHeaders] 
@BuiltValue()
abstract class ParserContributionSamplesDto implements Built<ParserContributionSamplesDto, ParserContributionSamplesDtoBuilder> {
  /// Client-sanitized sample rows (key = column name, value = cell)
  @BuiltValueField(wireName: r'rows')
  BuiltList<JsonObject> get rows;

  @BuiltValueField(wireName: r'rawHeaders')
  BuiltList<String>? get rawHeaders;

  ParserContributionSamplesDto._();

  factory ParserContributionSamplesDto([void updates(ParserContributionSamplesDtoBuilder b)]) = _$ParserContributionSamplesDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionSamplesDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionSamplesDto> get serializer => _$ParserContributionSamplesDtoSerializer();
}

class _$ParserContributionSamplesDtoSerializer implements PrimitiveSerializer<ParserContributionSamplesDto> {
  @override
  final Iterable<Type> types = const [ParserContributionSamplesDto, _$ParserContributionSamplesDto];

  @override
  final String wireName = r'ParserContributionSamplesDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionSamplesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rows';
    yield serializers.serialize(
      object.rows,
      specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
    );
    if (object.rawHeaders != null) {
      yield r'rawHeaders';
      yield serializers.serialize(
        object.rawHeaders,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionSamplesDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionSamplesDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rows':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonObject)]),
          ) as BuiltList<JsonObject>;
          result.rows.replace(valueDes);
          break;
        case r'rawHeaders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.rawHeaders.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionSamplesDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionSamplesDtoBuilder();
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

