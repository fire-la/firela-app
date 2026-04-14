//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/nlp_suggested_account_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_suggested_accounts_dto.g.dart';

/// NlpSuggestedAccountsDto
///
/// Properties:
/// * [source_]
/// * [destination]
@BuiltValue()
abstract class NlpSuggestedAccountsDto
    implements Built<NlpSuggestedAccountsDto, NlpSuggestedAccountsDtoBuilder> {
  @BuiltValueField(wireName: r'source')
  NlpSuggestedAccountDto? get source_;

  @BuiltValueField(wireName: r'destination')
  NlpSuggestedAccountDto? get destination;

  NlpSuggestedAccountsDto._();

  factory NlpSuggestedAccountsDto(
          [void updates(NlpSuggestedAccountsDtoBuilder b)]) =
      _$NlpSuggestedAccountsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpSuggestedAccountsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpSuggestedAccountsDto> get serializer =>
      _$NlpSuggestedAccountsDtoSerializer();
}

class _$NlpSuggestedAccountsDtoSerializer
    implements PrimitiveSerializer<NlpSuggestedAccountsDto> {
  @override
  final Iterable<Type> types = const [
    NlpSuggestedAccountsDto,
    _$NlpSuggestedAccountsDto
  ];

  @override
  final String wireName = r'NlpSuggestedAccountsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpSuggestedAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(NlpSuggestedAccountDto),
      );
    }
    if (object.destination != null) {
      yield r'destination';
      yield serializers.serialize(
        object.destination,
        specifiedType: const FullType(NlpSuggestedAccountDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpSuggestedAccountsDto object, {
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
    required NlpSuggestedAccountsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSuggestedAccountDto),
          ) as NlpSuggestedAccountDto;
          result.source_.replace(valueDes);
          break;
        case r'destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSuggestedAccountDto),
          ) as NlpSuggestedAccountDto;
          result.destination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpSuggestedAccountsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpSuggestedAccountsDtoBuilder();
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
