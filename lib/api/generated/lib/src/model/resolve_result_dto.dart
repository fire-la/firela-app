//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resolve_result_dto.g.dart';

/// ResolveResultDto
///
/// Properties:
/// * [success] - Whether resolution was successful
/// * [messageKey] - i18n message key for result message (e.g., review.payee.result.mapped)
/// * [messageParams] - Parameters for message interpolation (e.g., { name: \"PayeeName\" })
/// * [resolutionId] - Resolution ID for undo. Absent when the resolver rejected the decision (review stayed PENDING).
/// * [canUndo] - Whether this decision can be undone
/// * [undoDeadline] - Deadline for undo (24h from resolution)
/// * [learnedRuleId] - Rule ID if learning was triggered (ACCEPT_AND_LEARN actions). Use this to deep-link to the rule management page.
@BuiltValue()
abstract class ResolveResultDto implements Built<ResolveResultDto, ResolveResultDtoBuilder> {
  /// Whether resolution was successful
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// i18n message key for result message (e.g., review.payee.result.mapped)
  @BuiltValueField(wireName: r'messageKey')
  String? get messageKey;

  /// Parameters for message interpolation (e.g., { name: \"PayeeName\" })
  @BuiltValueField(wireName: r'messageParams')
  BuiltMap<String, String>? get messageParams;

  /// Resolution ID for undo. Absent when the resolver rejected the decision (review stayed PENDING).
  @BuiltValueField(wireName: r'resolutionId')
  String? get resolutionId;

  /// Whether this decision can be undone
  @BuiltValueField(wireName: r'canUndo')
  bool? get canUndo;

  /// Deadline for undo (24h from resolution)
  @BuiltValueField(wireName: r'undoDeadline')
  DateTime? get undoDeadline;

  /// Rule ID if learning was triggered (ACCEPT_AND_LEARN actions). Use this to deep-link to the rule management page.
  @BuiltValueField(wireName: r'learnedRuleId')
  String? get learnedRuleId;

  ResolveResultDto._();

  factory ResolveResultDto([void updates(ResolveResultDtoBuilder b)]) = _$ResolveResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResolveResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResolveResultDto> get serializer => _$ResolveResultDtoSerializer();
}

class _$ResolveResultDtoSerializer implements PrimitiveSerializer<ResolveResultDto> {
  @override
  final Iterable<Type> types = const [ResolveResultDto, _$ResolveResultDto];

  @override
  final String wireName = r'ResolveResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResolveResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.messageKey != null) {
      yield r'messageKey';
      yield serializers.serialize(
        object.messageKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageParams != null) {
      yield r'messageParams';
      yield serializers.serialize(
        object.messageParams,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.resolutionId != null) {
      yield r'resolutionId';
      yield serializers.serialize(
        object.resolutionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.canUndo != null) {
      yield r'canUndo';
      yield serializers.serialize(
        object.canUndo,
        specifiedType: const FullType(bool),
      );
    }
    if (object.undoDeadline != null) {
      yield r'undoDeadline';
      yield serializers.serialize(
        object.undoDeadline,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.learnedRuleId != null) {
      yield r'learnedRuleId';
      yield serializers.serialize(
        object.learnedRuleId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResolveResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResolveResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'messageKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageKey = valueDes;
          break;
        case r'messageParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.messageParams.replace(valueDes);
          break;
        case r'resolutionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resolutionId = valueDes;
          break;
        case r'canUndo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canUndo = valueDes;
          break;
        case r'undoDeadline':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.undoDeadline = valueDes;
          break;
        case r'learnedRuleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.learnedRuleId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResolveResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResolveResultDtoBuilder();
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

