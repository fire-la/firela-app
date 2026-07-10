//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_bean_price_dto.g.dart';

/// UpdateBeanPriceDto
///
/// Properties:
/// * [currency] - Currency being priced
/// * [quoteCurrency] - Quote currency (pricing currency)
/// * [amount] - Price amount (MUST be >= 0 per Beancount spec)
/// * [date] - Price date (ISO 8601 format)
/// * [metadata] - Metadata
@BuiltValue()
abstract class UpdateBeanPriceDto implements Built<UpdateBeanPriceDto, UpdateBeanPriceDtoBuilder> {
  /// Currency being priced
  @BuiltValueField(wireName: r'currency')
  String? get currency;

  /// Quote currency (pricing currency)
  @BuiltValueField(wireName: r'quoteCurrency')
  String? get quoteCurrency;

  /// Price amount (MUST be >= 0 per Beancount spec)
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  /// Price date (ISO 8601 format)
  @BuiltValueField(wireName: r'date')
  String? get date;

  /// Metadata
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  UpdateBeanPriceDto._();

  factory UpdateBeanPriceDto([void updates(UpdateBeanPriceDtoBuilder b)]) = _$UpdateBeanPriceDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateBeanPriceDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateBeanPriceDto> get serializer => _$UpdateBeanPriceDtoSerializer();
}

class _$UpdateBeanPriceDtoSerializer implements PrimitiveSerializer<UpdateBeanPriceDto> {
  @override
  final Iterable<Type> types = const [UpdateBeanPriceDto, _$UpdateBeanPriceDto];

  @override
  final String wireName = r'UpdateBeanPriceDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateBeanPriceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.quoteCurrency != null) {
      yield r'quoteCurrency';
      yield serializers.serialize(
        object.quoteCurrency,
        specifiedType: const FullType(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateBeanPriceDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateBeanPriceDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateBeanPriceDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateBeanPriceDtoBuilder();
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

