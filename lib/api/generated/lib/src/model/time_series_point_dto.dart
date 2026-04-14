//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/currency_balance_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_series_point_dto.g.dart';

/// TimeSeriesPointDto
///
/// Properties:
/// * [date] - Date in YYYY-MM-DD format
/// * [value] - Value at this date (in base currency)
/// * [change] - Change from previous point
/// * [byCurrency] - Multi-currency breakdown for this point
@BuiltValue()
abstract class TimeSeriesPointDto
    implements Built<TimeSeriesPointDto, TimeSeriesPointDtoBuilder> {
  /// Date in YYYY-MM-DD format
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Value at this date (in base currency)
  @BuiltValueField(wireName: r'value')
  String get value;

  /// Change from previous point
  @BuiltValueField(wireName: r'change')
  JsonObject? get change;

  /// Multi-currency breakdown for this point
  @BuiltValueField(wireName: r'byCurrency')
  BuiltList<CurrencyBalanceDto>? get byCurrency;

  TimeSeriesPointDto._();

  factory TimeSeriesPointDto([void updates(TimeSeriesPointDtoBuilder b)]) =
      _$TimeSeriesPointDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimeSeriesPointDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimeSeriesPointDto> get serializer =>
      _$TimeSeriesPointDtoSerializer();
}

class _$TimeSeriesPointDtoSerializer
    implements PrimitiveSerializer<TimeSeriesPointDto> {
  @override
  final Iterable<Type> types = const [TimeSeriesPointDto, _$TimeSeriesPointDto];

  @override
  final String wireName = r'TimeSeriesPointDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimeSeriesPointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    if (object.change != null) {
      yield r'change';
      yield serializers.serialize(
        object.change,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.byCurrency != null) {
      yield r'byCurrency';
      yield serializers.serialize(
        object.byCurrency,
        specifiedType:
            const FullType(BuiltList, [FullType(CurrencyBalanceDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesPointDto object, {
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
    required TimeSeriesPointDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'change':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.change = valueDes;
          break;
        case r'byCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(CurrencyBalanceDto)]),
          ) as BuiltList<CurrencyBalanceDto>;
          result.byCurrency.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimeSeriesPointDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimeSeriesPointDtoBuilder();
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
