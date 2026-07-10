//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'price_response_dto.g.dart';

/// PriceResponseDto
///
/// Properties:
/// * [id] - Unique identifier
/// * [userId] - User ID (owner of the price)
/// * [currency] - Currency being priced (e.g., USD, AAPL, BTC)
/// * [quoteCurrency] - Quote currency (pricing currency, e.g., USD, CNY)
/// * [amount] - Price amount (corresponds to Beancount Amount.number). Supports up to 15 decimal places.
/// * [date] - Price date (ISO 8601 format). Represents the date this price was valid.
/// * [meta] - Metadata (corresponds to Beancount meta field). Contains source, confidence, note, etc.
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class PriceResponseDto implements Built<PriceResponseDto, PriceResponseDtoBuilder> {
  /// Unique identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// User ID (owner of the price)
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Currency being priced (e.g., USD, AAPL, BTC)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Quote currency (pricing currency, e.g., USD, CNY)
  @BuiltValueField(wireName: r'quoteCurrency')
  String get quoteCurrency;

  /// Price amount (corresponds to Beancount Amount.number). Supports up to 15 decimal places.
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Price date (ISO 8601 format). Represents the date this price was valid.
  @BuiltValueField(wireName: r'date')
  Date get date;

  /// Metadata (corresponds to Beancount meta field). Contains source, confidence, note, etc.
  @BuiltValueField(wireName: r'meta')
  JsonObject get meta;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  PriceResponseDto._();

  factory PriceResponseDto([void updates(PriceResponseDtoBuilder b)]) = _$PriceResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PriceResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PriceResponseDto> get serializer => _$PriceResponseDtoSerializer();
}

class _$PriceResponseDtoSerializer implements PrimitiveSerializer<PriceResponseDto> {
  @override
  final Iterable<Type> types = const [PriceResponseDto, _$PriceResponseDto];

  @override
  final String wireName = r'PriceResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PriceResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'quoteCurrency';
    yield serializers.serialize(
      object.quoteCurrency,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(num),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(Date),
    );
    yield r'meta';
    yield serializers.serialize(
      object.meta,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PriceResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PriceResponseDtoBuilder result,
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
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'quoteCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.quoteCurrency = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.amount = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.meta = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PriceResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceResponseDtoBuilder();
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

