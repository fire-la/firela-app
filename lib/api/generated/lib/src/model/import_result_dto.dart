//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/import_error_dto.dart';
import 'package:firela_api/src/model/review_item_preview_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_result_dto.g.dart';

/// ImportResultDto
///
/// Properties:
/// * [imported] - Number of successfully imported transactions
/// * [failed] - Number of failed transactions
/// * [skipped] - Number of skipped transactions (high confidence duplicates, auto-skipped)
/// * [pendingReview] - Number of transactions pending review (medium confidence duplicates)
/// * [errors] - Array of error details for failed transactions
/// * [reviewItems] - Array of transactions pending review with preview data. Contains essential information for displaying in the import preview UI.
/// * [transactions] - Array of imported transactions (optional, for debugging)
@BuiltValue()
abstract class ImportResultDto
    implements Built<ImportResultDto, ImportResultDtoBuilder> {
  /// Number of successfully imported transactions
  @BuiltValueField(wireName: r'imported')
  num get imported;

  /// Number of failed transactions
  @BuiltValueField(wireName: r'failed')
  num get failed;

  /// Number of skipped transactions (high confidence duplicates, auto-skipped)
  @BuiltValueField(wireName: r'skipped')
  num get skipped;

  /// Number of transactions pending review (medium confidence duplicates)
  @BuiltValueField(wireName: r'pendingReview')
  num get pendingReview;

  /// Array of error details for failed transactions
  @BuiltValueField(wireName: r'errors')
  BuiltList<ImportErrorDto> get errors;

  /// Array of transactions pending review with preview data. Contains essential information for displaying in the import preview UI.
  @BuiltValueField(wireName: r'reviewItems')
  BuiltList<ReviewItemPreviewDto>? get reviewItems;

  /// Array of imported transactions (optional, for debugging)
  @BuiltValueField(wireName: r'transactions')
  JsonObject? get transactions;

  ImportResultDto._();

  factory ImportResultDto([void updates(ImportResultDtoBuilder b)]) =
      _$ImportResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportResultDto> get serializer =>
      _$ImportResultDtoSerializer();
}

class _$ImportResultDtoSerializer
    implements PrimitiveSerializer<ImportResultDto> {
  @override
  final Iterable<Type> types = const [ImportResultDto, _$ImportResultDto];

  @override
  final String wireName = r'ImportResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'imported';
    yield serializers.serialize(
      object.imported,
      specifiedType: const FullType(num),
    );
    yield r'failed';
    yield serializers.serialize(
      object.failed,
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
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(ImportErrorDto)]),
    );
    if (object.reviewItems != null) {
      yield r'reviewItems';
      yield serializers.serialize(
        object.reviewItems,
        specifiedType:
            const FullType(BuiltList, [FullType(ReviewItemPreviewDto)]),
      );
    }
    if (object.transactions != null) {
      yield r'transactions';
      yield serializers.serialize(
        object.transactions,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportResultDto object, {
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
    required ImportResultDtoBuilder result,
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
        case r'failed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.failed = valueDes;
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
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ImportErrorDto)]),
          ) as BuiltList<ImportErrorDto>;
          result.errors.replace(valueDes);
          break;
        case r'reviewItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ReviewItemPreviewDto)]),
          ) as BuiltList<ReviewItemPreviewDto>;
          result.reviewItems.replace(valueDes);
          break;
        case r'transactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.transactions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportResultDtoBuilder();
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
