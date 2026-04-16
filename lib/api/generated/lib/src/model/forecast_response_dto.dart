//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/monthly_forecast_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'forecast_response_dto.g.dart';

/// ForecastResponseDto
///
/// Properties:
/// * [forecast] - Monthly forecast data
/// * [totalOutflow] - Total expected outflow across all months
/// * [totalByCurrency] - Total by currency across all months
/// * [rulesCount] - Number of active recurring rules included
/// * [periodStart] - Forecast period start date
/// * [periodEnd] - Forecast period end date
@BuiltValue()
abstract class ForecastResponseDto
    implements Built<ForecastResponseDto, ForecastResponseDtoBuilder> {
  /// Monthly forecast data
  @BuiltValueField(wireName: r'forecast')
  BuiltList<MonthlyForecastDto> get forecast;

  /// Total expected outflow across all months
  @BuiltValueField(wireName: r'totalOutflow')
  num get totalOutflow;

  /// Total by currency across all months
  @BuiltValueField(wireName: r'totalByCurrency')
  JsonObject get totalByCurrency;

  /// Number of active recurring rules included
  @BuiltValueField(wireName: r'rulesCount')
  num get rulesCount;

  /// Forecast period start date
  @BuiltValueField(wireName: r'periodStart')
  String get periodStart;

  /// Forecast period end date
  @BuiltValueField(wireName: r'periodEnd')
  String get periodEnd;

  ForecastResponseDto._();

  factory ForecastResponseDto([void updates(ForecastResponseDtoBuilder b)]) =
      _$ForecastResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ForecastResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ForecastResponseDto> get serializer =>
      _$ForecastResponseDtoSerializer();
}

class _$ForecastResponseDtoSerializer
    implements PrimitiveSerializer<ForecastResponseDto> {
  @override
  final Iterable<Type> types = const [
    ForecastResponseDto,
    _$ForecastResponseDto
  ];

  @override
  final String wireName = r'ForecastResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ForecastResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecast';
    yield serializers.serialize(
      object.forecast,
      specifiedType: const FullType(BuiltList, [FullType(MonthlyForecastDto)]),
    );
    yield r'totalOutflow';
    yield serializers.serialize(
      object.totalOutflow,
      specifiedType: const FullType(num),
    );
    yield r'totalByCurrency';
    yield serializers.serialize(
      object.totalByCurrency,
      specifiedType: const FullType(JsonObject),
    );
    yield r'rulesCount';
    yield serializers.serialize(
      object.rulesCount,
      specifiedType: const FullType(num),
    );
    yield r'periodStart';
    yield serializers.serialize(
      object.periodStart,
      specifiedType: const FullType(String),
    );
    yield r'periodEnd';
    yield serializers.serialize(
      object.periodEnd,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ForecastResponseDto object, {
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
    required ForecastResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecast':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(MonthlyForecastDto)]),
          ) as BuiltList<MonthlyForecastDto>;
          result.forecast.replace(valueDes);
          break;
        case r'totalOutflow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalOutflow = valueDes;
          break;
        case r'totalByCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.totalByCurrency = valueDes;
          break;
        case r'rulesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rulesCount = valueDes;
          break;
        case r'periodStart':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodStart = valueDes;
          break;
        case r'periodEnd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.periodEnd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ForecastResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForecastResponseDtoBuilder();
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
