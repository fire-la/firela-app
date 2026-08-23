//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'parser_contribution_relay_response_dto.g.dart';

/// ParserContributionRelayResponseDto
///
/// Properties:
/// * [issueUrl] 
/// * [issueNumber] 
@BuiltValue()
abstract class ParserContributionRelayResponseDto implements Built<ParserContributionRelayResponseDto, ParserContributionRelayResponseDtoBuilder> {
  @BuiltValueField(wireName: r'issueUrl')
  String get issueUrl;

  @BuiltValueField(wireName: r'issueNumber')
  num get issueNumber;

  ParserContributionRelayResponseDto._();

  factory ParserContributionRelayResponseDto([void updates(ParserContributionRelayResponseDtoBuilder b)]) = _$ParserContributionRelayResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ParserContributionRelayResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ParserContributionRelayResponseDto> get serializer => _$ParserContributionRelayResponseDtoSerializer();
}

class _$ParserContributionRelayResponseDtoSerializer implements PrimitiveSerializer<ParserContributionRelayResponseDto> {
  @override
  final Iterable<Type> types = const [ParserContributionRelayResponseDto, _$ParserContributionRelayResponseDto];

  @override
  final String wireName = r'ParserContributionRelayResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ParserContributionRelayResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'issueUrl';
    yield serializers.serialize(
      object.issueUrl,
      specifiedType: const FullType(String),
    );
    yield r'issueNumber';
    yield serializers.serialize(
      object.issueNumber,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ParserContributionRelayResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ParserContributionRelayResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'issueUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issueUrl = valueDes;
          break;
        case r'issueNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.issueNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ParserContributionRelayResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParserContributionRelayResponseDtoBuilder();
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

