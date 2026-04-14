//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_rules_response_dto.g.dart';

/// ExportRulesResponseDto
///
/// Properties:
/// * [exportedAt] - Export timestamp
/// * [userId] - User ID
/// * [ruleCount] - Number of exported rules
/// * [rules] - Exported rules
@BuiltValue()
abstract class ExportRulesResponseDto
    implements Built<ExportRulesResponseDto, ExportRulesResponseDtoBuilder> {
  /// Export timestamp
  @BuiltValueField(wireName: r'exportedAt')
  String get exportedAt;

  /// User ID
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Number of exported rules
  @BuiltValueField(wireName: r'ruleCount')
  num get ruleCount;

  /// Exported rules
  @BuiltValueField(wireName: r'rules')
  BuiltList get rules;

  ExportRulesResponseDto._();

  factory ExportRulesResponseDto(
          [void updates(ExportRulesResponseDtoBuilder b)]) =
      _$ExportRulesResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportRulesResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportRulesResponseDto> get serializer =>
      _$ExportRulesResponseDtoSerializer();
}

class _$ExportRulesResponseDtoSerializer
    implements PrimitiveSerializer<ExportRulesResponseDto> {
  @override
  final Iterable<Type> types = const [
    ExportRulesResponseDto,
    _$ExportRulesResponseDto
  ];

  @override
  final String wireName = r'ExportRulesResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportRulesResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'exportedAt';
    yield serializers.serialize(
      object.exportedAt,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'ruleCount';
    yield serializers.serialize(
      object.ruleCount,
      specifiedType: const FullType(num),
    );
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportRulesResponseDto object, {
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
    required ExportRulesResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'exportedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exportedAt = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'ruleCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.ruleCount = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList),
          ) as BuiltList;
          result.rules = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportRulesResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportRulesResponseDtoBuilder();
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
