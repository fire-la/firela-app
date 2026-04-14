//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_autocomplete_response_dto.g.dart';

/// PayeeAutocompleteResponseDto
///
/// Properties:
/// * [suggestions] - List of matching payee names
@BuiltValue()
abstract class PayeeAutocompleteResponseDto
    implements
        Built<PayeeAutocompleteResponseDto,
            PayeeAutocompleteResponseDtoBuilder> {
  /// List of matching payee names
  @BuiltValueField(wireName: r'suggestions')
  BuiltList<String> get suggestions;

  PayeeAutocompleteResponseDto._();

  factory PayeeAutocompleteResponseDto(
          [void updates(PayeeAutocompleteResponseDtoBuilder b)]) =
      _$PayeeAutocompleteResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeAutocompleteResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeAutocompleteResponseDto> get serializer =>
      _$PayeeAutocompleteResponseDtoSerializer();
}

class _$PayeeAutocompleteResponseDtoSerializer
    implements PrimitiveSerializer<PayeeAutocompleteResponseDto> {
  @override
  final Iterable<Type> types = const [
    PayeeAutocompleteResponseDto,
    _$PayeeAutocompleteResponseDto
  ];

  @override
  final String wireName = r'PayeeAutocompleteResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeAutocompleteResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'suggestions';
    yield serializers.serialize(
      object.suggestions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeAutocompleteResponseDto object, {
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
    required PayeeAutocompleteResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'suggestions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.suggestions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeAutocompleteResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeAutocompleteResponseDtoBuilder();
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
