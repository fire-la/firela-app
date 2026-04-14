//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_rule_response_dto.g.dart';

/// ValidateRuleResponseDto
///
/// Properties:
/// * [valid] - Whether the rule configuration is valid
/// * [errors] - List of validation errors (empty if valid)
/// * [warnings] - List of validation warnings (non-blocking issues)
@BuiltValue()
abstract class ValidateRuleResponseDto
    implements Built<ValidateRuleResponseDto, ValidateRuleResponseDtoBuilder> {
  /// Whether the rule configuration is valid
  @BuiltValueField(wireName: r'valid')
  bool get valid;

  /// List of validation errors (empty if valid)
  @BuiltValueField(wireName: r'errors')
  BuiltList<BuiltList> get errors;

  /// List of validation warnings (non-blocking issues)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<BuiltList> get warnings;

  ValidateRuleResponseDto._();

  factory ValidateRuleResponseDto(
          [void updates(ValidateRuleResponseDtoBuilder b)]) =
      _$ValidateRuleResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateRuleResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateRuleResponseDto> get serializer =>
      _$ValidateRuleResponseDtoSerializer();
}

class _$ValidateRuleResponseDtoSerializer
    implements PrimitiveSerializer<ValidateRuleResponseDto> {
  @override
  final Iterable<Type> types = const [
    ValidateRuleResponseDto,
    _$ValidateRuleResponseDto
  ];

  @override
  final String wireName = r'ValidateRuleResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateRuleResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'valid';
    yield serializers.serialize(
      object.valid,
      specifiedType: const FullType(bool),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
    );
    yield r'warnings';
    yield serializers.serialize(
      object.warnings,
      specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateRuleResponseDto object, {
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
    required ValidateRuleResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'valid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.valid = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.errors.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BuiltList)]),
          ) as BuiltList<BuiltList>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateRuleResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateRuleResponseDtoBuilder();
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
