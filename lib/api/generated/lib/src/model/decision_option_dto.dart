//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'decision_option_dto.g.dart';

/// DecisionOptionDto
///
/// Properties:
/// * [value] - The action value to submit (e.g., UPGRADE_REPLACE, ACCEPT)
/// * [labelKey] - i18n message key for display label (e.g., review.payee.accept.label)
/// * [descriptionKey] - i18n message key for description
/// * [recommended] - Whether this is the recommended option
@BuiltValue()
abstract class DecisionOptionDto
    implements Built<DecisionOptionDto, DecisionOptionDtoBuilder> {
  /// The action value to submit (e.g., UPGRADE_REPLACE, ACCEPT)
  @BuiltValueField(wireName: r'value')
  String get value;

  /// i18n message key for display label (e.g., review.payee.accept.label)
  @BuiltValueField(wireName: r'labelKey')
  String get labelKey;

  /// i18n message key for description
  @BuiltValueField(wireName: r'descriptionKey')
  String? get descriptionKey;

  /// Whether this is the recommended option
  @BuiltValueField(wireName: r'recommended')
  bool? get recommended;

  DecisionOptionDto._();

  factory DecisionOptionDto([void updates(DecisionOptionDtoBuilder b)]) =
      _$DecisionOptionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DecisionOptionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DecisionOptionDto> get serializer =>
      _$DecisionOptionDtoSerializer();
}

class _$DecisionOptionDtoSerializer
    implements PrimitiveSerializer<DecisionOptionDto> {
  @override
  final Iterable<Type> types = const [DecisionOptionDto, _$DecisionOptionDto];

  @override
  final String wireName = r'DecisionOptionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DecisionOptionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'labelKey';
    yield serializers.serialize(
      object.labelKey,
      specifiedType: const FullType(String),
    );
    if (object.descriptionKey != null) {
      yield r'descriptionKey';
      yield serializers.serialize(
        object.descriptionKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.recommended != null) {
      yield r'recommended';
      yield serializers.serialize(
        object.recommended,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DecisionOptionDto object, {
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
    required DecisionOptionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'labelKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.labelKey = valueDes;
          break;
        case r'descriptionKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.descriptionKey = valueDes;
          break;
        case r'recommended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.recommended = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DecisionOptionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DecisionOptionDtoBuilder();
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
