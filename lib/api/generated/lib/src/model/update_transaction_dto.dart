//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_transaction_dto.g.dart';

/// UpdateTransactionDto
///
/// Properties:
/// * [flag] - Transaction flag (CLEARED, PENDING, etc.)
/// * [payee] - Payee name
/// * [narration] - Transaction narration/description
/// * [tags] - Transaction tags
/// * [links] - Transaction links
/// * [meta] - Transaction metadata (JSON object)
@BuiltValue()
abstract class UpdateTransactionDto
    implements Built<UpdateTransactionDto, UpdateTransactionDtoBuilder> {
  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueField(wireName: r'flag')
  UpdateTransactionDtoFlagEnum? get flag;
  // enum flagEnum {  CLEARED,  PENDING,  PADDING,  SUMMARIZE,  TRANSFER,  CONVERSIONS,  };

  /// Payee name
  @BuiltValueField(wireName: r'payee')
  String? get payee;

  /// Transaction narration/description
  @BuiltValueField(wireName: r'narration')
  String? get narration;

  /// Transaction tags
  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  /// Transaction links
  @BuiltValueField(wireName: r'links')
  BuiltList<String>? get links;

  /// Transaction metadata (JSON object)
  @BuiltValueField(wireName: r'meta')
  JsonObject? get meta;

  UpdateTransactionDto._();

  factory UpdateTransactionDto([void updates(UpdateTransactionDtoBuilder b)]) =
      _$UpdateTransactionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTransactionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTransactionDto> get serializer =>
      _$UpdateTransactionDtoSerializer();
}

class _$UpdateTransactionDtoSerializer
    implements PrimitiveSerializer<UpdateTransactionDto> {
  @override
  final Iterable<Type> types = const [
    UpdateTransactionDto,
    _$UpdateTransactionDto
  ];

  @override
  final String wireName = r'UpdateTransactionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTransactionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(UpdateTransactionDtoFlagEnum),
      );
    }
    if (object.payee != null) {
      yield r'payee';
      yield serializers.serialize(
        object.payee,
        specifiedType: const FullType(String),
      );
    }
    if (object.narration != null) {
      yield r'narration';
      yield serializers.serialize(
        object.narration,
        specifiedType: const FullType(String),
      );
    }
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.links != null) {
      yield r'links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.meta != null) {
      yield r'meta';
      yield serializers.serialize(
        object.meta,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTransactionDto object, {
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
    required UpdateTransactionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateTransactionDtoFlagEnum),
          ) as UpdateTransactionDtoFlagEnum;
          result.flag = valueDes;
          break;
        case r'payee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.payee = valueDes;
          break;
        case r'narration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.narration = valueDes;
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.links.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTransactionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTransactionDtoBuilder();
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

class UpdateTransactionDtoFlagEnum extends EnumClass {
  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'CLEARED')
  static const UpdateTransactionDtoFlagEnum CLEARED =
      _$updateTransactionDtoFlagEnum_CLEARED;

  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const UpdateTransactionDtoFlagEnum PENDING =
      _$updateTransactionDtoFlagEnum_PENDING;

  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'PADDING')
  static const UpdateTransactionDtoFlagEnum PADDING =
      _$updateTransactionDtoFlagEnum_PADDING;

  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'SUMMARIZE')
  static const UpdateTransactionDtoFlagEnum SUMMARIZE =
      _$updateTransactionDtoFlagEnum_SUMMARIZE;

  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const UpdateTransactionDtoFlagEnum TRANSFER =
      _$updateTransactionDtoFlagEnum_TRANSFER;

  /// Transaction flag (CLEARED, PENDING, etc.)
  @BuiltValueEnumConst(wireName: r'CONVERSIONS', fallback: true)
  static const UpdateTransactionDtoFlagEnum CONVERSIONS =
      _$updateTransactionDtoFlagEnum_CONVERSIONS;

  static Serializer<UpdateTransactionDtoFlagEnum> get serializer =>
      _$updateTransactionDtoFlagEnumSerializer;

  const UpdateTransactionDtoFlagEnum._(String name) : super(name);

  static BuiltSet<UpdateTransactionDtoFlagEnum> get values =>
      _$updateTransactionDtoFlagEnumValues;
  static UpdateTransactionDtoFlagEnum valueOf(String name) =>
      _$updateTransactionDtoFlagEnumValueOf(name);
}
