//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_resolve_dto.g.dart';

/// BatchResolveDto
///
/// Properties:
/// * [reviewIds] - Review item IDs to resolve
/// * [action] - Decision action to apply to all items
/// * [data] - Additional data for the decision
@BuiltValue()
abstract class BatchResolveDto implements Built<BatchResolveDto, BatchResolveDtoBuilder> {
  /// Review item IDs to resolve
  @BuiltValueField(wireName: r'reviewIds')
  BuiltList<String> get reviewIds;

  /// Decision action to apply to all items
  @BuiltValueField(wireName: r'action')
  BatchResolveDtoActionEnum get action;
  // enum actionEnum {  UPGRADE_REPLACE,  LINK_KEEP_BOTH,  IGNORE_NEW,  CONFIRM_DIFFERENT,  ACCEPT,  REJECT,  ACCEPT_AND_LEARN,  CHOOSE_OTHER,  CANCEL,  FIX,  IGNORE,  };

  /// Additional data for the decision
  @BuiltValueField(wireName: r'data')
  JsonObject? get data;

  BatchResolveDto._();

  factory BatchResolveDto([void updates(BatchResolveDtoBuilder b)]) = _$BatchResolveDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchResolveDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchResolveDto> get serializer => _$BatchResolveDtoSerializer();
}

class _$BatchResolveDtoSerializer implements PrimitiveSerializer<BatchResolveDto> {
  @override
  final Iterable<Type> types = const [BatchResolveDto, _$BatchResolveDto];

  @override
  final String wireName = r'BatchResolveDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchResolveDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reviewIds';
    yield serializers.serialize(
      object.reviewIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(BatchResolveDtoActionEnum),
    );
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchResolveDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchResolveDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reviewIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.reviewIds.replace(valueDes);
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BatchResolveDtoActionEnum),
          ) as BatchResolveDtoActionEnum;
          result.action = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchResolveDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchResolveDtoBuilder();
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

class BatchResolveDtoActionEnum extends EnumClass {

  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'UPGRADE_REPLACE')
  static const BatchResolveDtoActionEnum UPGRADE_REPLACE = _$batchResolveDtoActionEnum_UPGRADE_REPLACE;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'LINK_KEEP_BOTH')
  static const BatchResolveDtoActionEnum LINK_KEEP_BOTH = _$batchResolveDtoActionEnum_LINK_KEEP_BOTH;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'IGNORE_NEW')
  static const BatchResolveDtoActionEnum IGNORE_NEW = _$batchResolveDtoActionEnum_IGNORE_NEW;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'CONFIRM_DIFFERENT')
  static const BatchResolveDtoActionEnum CONFIRM_DIFFERENT = _$batchResolveDtoActionEnum_CONFIRM_DIFFERENT;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'ACCEPT')
  static const BatchResolveDtoActionEnum ACCEPT = _$batchResolveDtoActionEnum_ACCEPT;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'REJECT')
  static const BatchResolveDtoActionEnum REJECT = _$batchResolveDtoActionEnum_REJECT;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'ACCEPT_AND_LEARN')
  static const BatchResolveDtoActionEnum ACCEPT_AND_LEARN = _$batchResolveDtoActionEnum_ACCEPT_AND_LEARN;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'CHOOSE_OTHER')
  static const BatchResolveDtoActionEnum CHOOSE_OTHER = _$batchResolveDtoActionEnum_CHOOSE_OTHER;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'CANCEL')
  static const BatchResolveDtoActionEnum CANCEL = _$batchResolveDtoActionEnum_CANCEL;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'FIX')
  static const BatchResolveDtoActionEnum FIX = _$batchResolveDtoActionEnum_FIX;
  /// Decision action to apply to all items
  @BuiltValueEnumConst(wireName: r'IGNORE')
  static const BatchResolveDtoActionEnum IGNORE = _$batchResolveDtoActionEnum_IGNORE;

  static Serializer<BatchResolveDtoActionEnum> get serializer => _$batchResolveDtoActionEnumSerializer;

  const BatchResolveDtoActionEnum._(String name): super(name);

  static BuiltSet<BatchResolveDtoActionEnum> get values => _$batchResolveDtoActionEnumValues;
  static BatchResolveDtoActionEnum valueOf(String name) => _$batchResolveDtoActionEnumValueOf(name);
}

