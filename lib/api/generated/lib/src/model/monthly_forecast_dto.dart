//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/forecast_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monthly_forecast_dto.g.dart';

/// MonthlyForecastDto
///
/// Properties:
/// * [month] - Month (YYYY-MM)
/// * [expectedOutflow] - Total expected outflow for the month
/// * [itemCount] - Number of expected transactions
/// * [byCurrency] - Breakdown by currency
/// * [items] - Individual forecast items
@BuiltValue()
abstract class MonthlyForecastDto
    implements Built<MonthlyForecastDto, MonthlyForecastDtoBuilder> {
  /// Month (YYYY-MM)
  @BuiltValueField(wireName: r'month')
  String get month;

  /// Total expected outflow for the month
  @BuiltValueField(wireName: r'expectedOutflow')
  num get expectedOutflow;

  /// Number of expected transactions
  @BuiltValueField(wireName: r'itemCount')
  num get itemCount;

  /// Breakdown by currency
  @BuiltValueField(wireName: r'byCurrency')
  JsonObject get byCurrency;

  /// Individual forecast items
  @BuiltValueField(wireName: r'items')
  BuiltList<ForecastItemDto> get items;

  MonthlyForecastDto._();

  factory MonthlyForecastDto([void updates(MonthlyForecastDtoBuilder b)]) =
      _$MonthlyForecastDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MonthlyForecastDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonthlyForecastDto> get serializer =>
      _$MonthlyForecastDtoSerializer();
}

class _$MonthlyForecastDtoSerializer
    implements PrimitiveSerializer<MonthlyForecastDto> {
  @override
  final Iterable<Type> types = const [MonthlyForecastDto, _$MonthlyForecastDto];

  @override
  final String wireName = r'MonthlyForecastDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonthlyForecastDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'month';
    yield serializers.serialize(
      object.month,
      specifiedType: const FullType(String),
    );
    yield r'expectedOutflow';
    yield serializers.serialize(
      object.expectedOutflow,
      specifiedType: const FullType(num),
    );
    yield r'itemCount';
    yield serializers.serialize(
      object.itemCount,
      specifiedType: const FullType(num),
    );
    yield r'byCurrency';
    yield serializers.serialize(
      object.byCurrency,
      specifiedType: const FullType(JsonObject),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ForecastItemDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MonthlyForecastDto object, {
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
    required MonthlyForecastDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'month':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.month = valueDes;
          break;
        case r'expectedOutflow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.expectedOutflow = valueDes;
          break;
        case r'itemCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.itemCount = valueDes;
          break;
        case r'byCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.byCurrency = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ForecastItemDto)]),
          ) as BuiltList<ForecastItemDto>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MonthlyForecastDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonthlyForecastDtoBuilder();
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
