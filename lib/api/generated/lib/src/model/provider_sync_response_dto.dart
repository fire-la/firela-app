//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider_sync_response_dto.g.dart';

/// ProviderSyncResponseDto
///
/// Properties:
/// * [imported] - Number of transactions successfully imported
/// * [skipped] - Number of transactions skipped (duplicates)
/// * [pendingReview] - Number of transactions pending review
/// * [failed] - Number of transactions that failed to import
/// * [importedTransactionIds] - IDs of successfully imported transactions
/// * [reviewItemIds] - IDs of review items created for branched transactions
@BuiltValue()
abstract class ProviderSyncResponseDto
    implements Built<ProviderSyncResponseDto, ProviderSyncResponseDtoBuilder> {
  /// Number of transactions successfully imported
  @BuiltValueField(wireName: r'imported')
  num get imported;

  /// Number of transactions skipped (duplicates)
  @BuiltValueField(wireName: r'skipped')
  num get skipped;

  /// Number of transactions pending review
  @BuiltValueField(wireName: r'pendingReview')
  num get pendingReview;

  /// Number of transactions that failed to import
  @BuiltValueField(wireName: r'failed')
  num get failed;

  /// IDs of successfully imported transactions
  @BuiltValueField(wireName: r'importedTransactionIds')
  BuiltList<String>? get importedTransactionIds;

  /// IDs of review items created for branched transactions
  @BuiltValueField(wireName: r'reviewItemIds')
  BuiltList<String>? get reviewItemIds;

  ProviderSyncResponseDto._();

  factory ProviderSyncResponseDto(
          [void updates(ProviderSyncResponseDtoBuilder b)]) =
      _$ProviderSyncResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProviderSyncResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProviderSyncResponseDto> get serializer =>
      _$ProviderSyncResponseDtoSerializer();
}

class _$ProviderSyncResponseDtoSerializer
    implements PrimitiveSerializer<ProviderSyncResponseDto> {
  @override
  final Iterable<Type> types = const [
    ProviderSyncResponseDto,
    _$ProviderSyncResponseDto
  ];

  @override
  final String wireName = r'ProviderSyncResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProviderSyncResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'imported';
    yield serializers.serialize(
      object.imported,
      specifiedType: const FullType(num),
    );
    yield r'skipped';
    yield serializers.serialize(
      object.skipped,
      specifiedType: const FullType(num),
    );
    yield r'pendingReview';
    yield serializers.serialize(
      object.pendingReview,
      specifiedType: const FullType(num),
    );
    yield r'failed';
    yield serializers.serialize(
      object.failed,
      specifiedType: const FullType(num),
    );
    if (object.importedTransactionIds != null) {
      yield r'importedTransactionIds';
      yield serializers.serialize(
        object.importedTransactionIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.reviewItemIds != null) {
      yield r'reviewItemIds';
      yield serializers.serialize(
        object.reviewItemIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProviderSyncResponseDto object, {
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
    required ProviderSyncResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imported':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.imported = valueDes;
          break;
        case r'skipped':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.skipped = valueDes;
          break;
        case r'pendingReview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.pendingReview = valueDes;
          break;
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.failed = valueDes;
          break;
        case r'importedTransactionIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.importedTransactionIds.replace(valueDes);
          break;
        case r'reviewItemIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reviewItemIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProviderSyncResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProviderSyncResponseDtoBuilder();
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
