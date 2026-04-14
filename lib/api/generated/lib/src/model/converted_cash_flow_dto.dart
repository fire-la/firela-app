//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'converted_cash_flow_dto.g.dart';

/// ConvertedCashFlowDto
///
/// Properties:
/// * [baseCurrency] - Base currency for conversion
/// * [income] - Converted income
/// * [expense] - Converted expense
/// * [netSavings] - Converted net savings
/// * [exchangeRates] - Exchange rates used for conversion
@BuiltValue()
abstract class ConvertedCashFlowDto
    implements Built<ConvertedCashFlowDto, ConvertedCashFlowDtoBuilder> {
  /// Base currency for conversion
  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Converted income
  @BuiltValueField(wireName: r'income')
  String get income;

  /// Converted expense
  @BuiltValueField(wireName: r'expense')
  String get expense;

  /// Converted net savings
  @BuiltValueField(wireName: r'netSavings')
  String get netSavings;

  /// Exchange rates used for conversion
  @BuiltValueField(wireName: r'exchangeRates')
  JsonObject get exchangeRates;

  ConvertedCashFlowDto._();

  factory ConvertedCashFlowDto([void updates(ConvertedCashFlowDtoBuilder b)]) =
      _$ConvertedCashFlowDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConvertedCashFlowDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConvertedCashFlowDto> get serializer =>
      _$ConvertedCashFlowDtoSerializer();
}

class _$ConvertedCashFlowDtoSerializer
    implements PrimitiveSerializer<ConvertedCashFlowDto> {
  @override
  final Iterable<Type> types = const [
    ConvertedCashFlowDto,
    _$ConvertedCashFlowDto
  ];

  @override
  final String wireName = r'ConvertedCashFlowDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConvertedCashFlowDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType: const FullType(String),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType: const FullType(String),
    );
    yield r'netSavings';
    yield serializers.serialize(
      object.netSavings,
      specifiedType: const FullType(String),
    );
    yield r'exchangeRates';
    yield serializers.serialize(
      object.exchangeRates,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConvertedCashFlowDto object, {
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
    required ConvertedCashFlowDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseCurrency = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.income = valueDes;
          break;
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expense = valueDes;
          break;
        case r'netSavings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.netSavings = valueDes;
          break;
        case r'exchangeRates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.exchangeRates = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConvertedCashFlowDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConvertedCashFlowDtoBuilder();
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
