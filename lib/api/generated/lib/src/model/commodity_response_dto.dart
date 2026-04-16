//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commodity_response_dto.g.dart';

/// CommodityResponseDto
///
/// Properties:
/// * [id] - Unique identifier
/// * [symbol] - Commodity symbol (corresponds to Beancount currency field)
/// * [date] - Commodity definition date (required per Beancount spec). Represents when this commodity was first defined in the accounting system.
/// * [metadata] - Metadata (corresponds to Beancount meta field). Contains name, assetClass, precision, note, tags, etc.
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
/// * [userId] - User ID (owner of the commodity)
/// * [symbolProfileId] - Reference to SymbolProfile (market data integration, SaaS feature)
@BuiltValue()
abstract class CommodityResponseDto
    implements Built<CommodityResponseDto, CommodityResponseDtoBuilder> {
  /// Unique identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Commodity symbol (corresponds to Beancount currency field)
  @BuiltValueField(wireName: r'symbol')
  String get symbol;

  /// Commodity definition date (required per Beancount spec). Represents when this commodity was first defined in the accounting system.
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Metadata (corresponds to Beancount meta field). Contains name, assetClass, precision, note, tags, etc.
  @BuiltValueField(wireName: r'metadata')
  JsonObject get metadata;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  /// User ID (owner of the commodity)
  @BuiltValueField(wireName: r'userId')
  JsonObject? get userId;

  /// Reference to SymbolProfile (market data integration, SaaS feature)
  @BuiltValueField(wireName: r'symbolProfileId')
  JsonObject? get symbolProfileId;

  CommodityResponseDto._();

  factory CommodityResponseDto([void updates(CommodityResponseDtoBuilder b)]) =
      _$CommodityResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommodityResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommodityResponseDto> get serializer =>
      _$CommodityResponseDtoSerializer();
}

class _$CommodityResponseDtoSerializer
    implements PrimitiveSerializer<CommodityResponseDto> {
  @override
  final Iterable<Type> types = const [
    CommodityResponseDto,
    _$CommodityResponseDto
  ];

  @override
  final String wireName = r'CommodityResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommodityResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'symbol';
    yield serializers.serialize(
      object.symbol,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'metadata';
    yield serializers.serialize(
      object.metadata,
      specifiedType: const FullType(JsonObject),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.symbolProfileId != null) {
      yield r'symbolProfileId';
      yield serializers.serialize(
        object.symbolProfileId,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CommodityResponseDto object, {
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
    required CommodityResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'symbolProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.symbolProfileId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CommodityResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommodityResponseDtoBuilder();
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
