//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_resolve_item_dto.g.dart';

/// BatchResolveItemDto
///
/// Properties:
/// * [reviewId] - Review item ID
/// * [success] - Whether this item was resolved successfully
/// * [resolutionId] - Resolution ID for undo. Present only on successful items (failed items stay PENDING).
/// * [messageKey] - i18n message key for the per-item failure reason (e.g., review.payee.error.no_suggestion), mirroring the single-item resolve response. Present only on resolver rejections, not on unexpected errors.
/// * [messageParams] - Parameters for message interpolation (e.g., { name: \"PayeeName\" })
/// * [error] - Diagnostic string: the messageKey on the resolver-rejection path; an i18n key mapped from the exception type on the unexpected-error path (#903, raw exception detail stays in server logs).
@BuiltValue()
abstract class BatchResolveItemDto implements Built<BatchResolveItemDto, BatchResolveItemDtoBuilder> {
  /// Review item ID
  @BuiltValueField(wireName: r'reviewId')
  String get reviewId;

  /// Whether this item was resolved successfully
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Resolution ID for undo. Present only on successful items (failed items stay PENDING).
  @BuiltValueField(wireName: r'resolutionId')
  String? get resolutionId;

  /// i18n message key for the per-item failure reason (e.g., review.payee.error.no_suggestion), mirroring the single-item resolve response. Present only on resolver rejections, not on unexpected errors.
  @BuiltValueField(wireName: r'messageKey')
  String? get messageKey;

  /// Parameters for message interpolation (e.g., { name: \"PayeeName\" })
  @BuiltValueField(wireName: r'messageParams')
  BuiltMap<String, String>? get messageParams;

  /// Diagnostic string: the messageKey on the resolver-rejection path; an i18n key mapped from the exception type on the unexpected-error path (#903, raw exception detail stays in server logs).
  @BuiltValueField(wireName: r'error')
  String? get error;

  BatchResolveItemDto._();

  factory BatchResolveItemDto([void updates(BatchResolveItemDtoBuilder b)]) = _$BatchResolveItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResolveItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResolveItemDto> get serializer => _$BatchResolveItemDtoSerializer();
}

class _$BatchResolveItemDtoSerializer implements PrimitiveSerializer<BatchResolveItemDto> {
  @override
  final Iterable<Type> types = const [BatchResolveItemDto, _$BatchResolveItemDto];

  @override
  final String wireName = r'BatchResolveItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResolveItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reviewId';
    yield serializers.serialize(
      object.reviewId,
      specifiedType: const FullType(String),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.resolutionId != null) {
      yield r'resolutionId';
      yield serializers.serialize(
        object.resolutionId,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResolveItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResolveItemDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reviewId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reviewId = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'resolutionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resolutionId = valueDes;
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
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchResolveItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResolveItemDtoBuilder();
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

