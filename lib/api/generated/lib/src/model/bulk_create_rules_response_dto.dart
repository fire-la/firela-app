//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/bulk_create_rules_response_dto_errors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_create_rules_response_dto.g.dart';

/// BulkCreateRulesResponseDto
///
/// Properties:
/// * [successCount] - Number of successfully created rules
/// * [failureCount] - Number of failed rules
/// * [errors] - Error details for failed rules
/// * [createdRuleIds] - IDs of successfully created rules
@BuiltValue()
abstract class BulkCreateRulesResponseDto implements Built<BulkCreateRulesResponseDto, BulkCreateRulesResponseDtoBuilder> {
  /// Number of successfully created rules
  @BuiltValueField(wireName: r'successCount')
  num get successCount;

  /// Number of failed rules
  @BuiltValueField(wireName: r'failureCount')
  num get failureCount;

  /// Error details for failed rules
  @BuiltValueField(wireName: r'errors')
  BuiltList<BulkCreateRulesResponseDtoErrorsInner> get errors;

  /// IDs of successfully created rules
  @BuiltValueField(wireName: r'createdRuleIds')
  BuiltList<String> get createdRuleIds;

  BulkCreateRulesResponseDto._();

  factory BulkCreateRulesResponseDto([void updates(BulkCreateRulesResponseDtoBuilder b)]) = _$BulkCreateRulesResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkCreateRulesResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkCreateRulesResponseDto> get serializer => _$BulkCreateRulesResponseDtoSerializer();
}

class _$BulkCreateRulesResponseDtoSerializer implements PrimitiveSerializer<BulkCreateRulesResponseDto> {
  @override
  final Iterable<Type> types = const [BulkCreateRulesResponseDto, _$BulkCreateRulesResponseDto];

  @override
  final String wireName = r'BulkCreateRulesResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkCreateRulesResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'successCount';
    yield serializers.serialize(
      object.successCount,
      specifiedType: const FullType(num),
    );
    yield r'failureCount';
    yield serializers.serialize(
      object.failureCount,
      specifiedType: const FullType(num),
    );
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(BulkCreateRulesResponseDtoErrorsInner)]),
    );
    yield r'createdRuleIds';
    yield serializers.serialize(
      object.createdRuleIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkCreateRulesResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkCreateRulesResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'successCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.successCount = valueDes;
          break;
        case r'failureCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.failureCount = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BulkCreateRulesResponseDtoErrorsInner)]),
          ) as BuiltList<BulkCreateRulesResponseDtoErrorsInner>;
          result.errors.replace(valueDes);
          break;
        case r'createdRuleIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.createdRuleIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkCreateRulesResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkCreateRulesResponseDtoBuilder();
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

