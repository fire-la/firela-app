//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_item_dto.g.dart';

/// ForecastItemDto
///
/// Properties:
/// * [rule] - Rule name
/// * [ruleId] - Rule ID
/// * [amount] - Expected amount
/// * [date] - Expected date (YYYY-MM-DD)
/// * [icon] - Rule icon emoji
/// * [currency] - Currency code
@BuiltValue()
abstract class ForecastItemDto
    implements Built<ForecastItemDto, ForecastItemDtoBuilder> {
  /// Rule name
  @BuiltValueField(wireName: r'rule')
  String get rule;

  /// Rule ID
  @BuiltValueField(wireName: r'ruleId')
  String get ruleId;

  /// Expected amount
  @BuiltValueField(wireName: r'amount')
  num get amount;

  /// Expected date (YYYY-MM-DD)
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Rule icon emoji
  @BuiltValueField(wireName: r'icon')
  JsonObject? get icon;

  /// Currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  ForecastItemDto._();

  factory ForecastItemDto([void updates(ForecastItemDtoBuilder b)]) =
      _$ForecastItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastItemDto> get serializer =>
      _$ForecastItemDtoSerializer();
}

class _$ForecastItemDtoSerializer
    implements PrimitiveSerializer<ForecastItemDto> {
  @override
  final Iterable<Type> types = const [ForecastItemDto, _$ForecastItemDto];

  @override
  final String wireName = r'ForecastItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rule';
    yield serializers.serialize(
      object.rule,
      specifiedType: const FullType(String),
    );
    yield r'ruleId';
    yield serializers.serialize(
      object.ruleId,
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
      specifiedType: const FullType(String),
    );
    yield r'icon';
    yield object.icon == null
        ? null
        : serializers.serialize(
            object.icon,
            specifiedType: const FullType.nullable(JsonObject),
          );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastItemDto object, {
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
    required ForecastItemDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rule = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ruleId = valueDes;
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
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastItemDtoBuilder();
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
