//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'converted_net_worth_dto.g.dart';

/// ConvertedNetWorthDto
///
/// Properties:
/// * [baseCurrency] - Base currency for conversion
/// * [netWorth] - Converted net worth
/// * [assets] - Converted assets
/// * [liabilities] - Converted liabilities
/// * [exchangeRates] - Exchange rates used for conversion
@BuiltValue()
abstract class ConvertedNetWorthDto
    implements Built<ConvertedNetWorthDto, ConvertedNetWorthDtoBuilder> {
  /// Base currency for conversion
  @BuiltValueField(wireName: r'baseCurrency')
  String get baseCurrency;

  /// Converted net worth
  @BuiltValueField(wireName: r'netWorth')
  String get netWorth;

  /// Converted assets
  @BuiltValueField(wireName: r'assets')
  String get assets;

  /// Converted liabilities
  @BuiltValueField(wireName: r'liabilities')
  String get liabilities;

  /// Exchange rates used for conversion
  @BuiltValueField(wireName: r'exchangeRates')
  JsonObject get exchangeRates;

  ConvertedNetWorthDto._();

  factory ConvertedNetWorthDto([void updates(ConvertedNetWorthDtoBuilder b)]) =
      _$ConvertedNetWorthDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConvertedNetWorthDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConvertedNetWorthDto> get serializer =>
      _$ConvertedNetWorthDtoSerializer();
}

class _$ConvertedNetWorthDtoSerializer
    implements PrimitiveSerializer<ConvertedNetWorthDto> {
  @override
  final Iterable<Type> types = const [
    ConvertedNetWorthDto,
    _$ConvertedNetWorthDto
  ];

  @override
  final String wireName = r'ConvertedNetWorthDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConvertedNetWorthDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'baseCurrency';
    yield serializers.serialize(
      object.baseCurrency,
      specifiedType: const FullType(String),
    );
    yield r'netWorth';
    yield serializers.serialize(
      object.netWorth,
      specifiedType: const FullType(String),
    );
    yield r'assets';
    yield serializers.serialize(
      object.assets,
      specifiedType: const FullType(String),
    );
    yield r'liabilities';
    yield serializers.serialize(
      object.liabilities,
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
    ConvertedNetWorthDto object, {
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
    required ConvertedNetWorthDtoBuilder result,
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
        case r'netWorth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.netWorth = valueDes;
          break;
        case r'assets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.assets = valueDes;
          break;
        case r'liabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.liabilities = valueDes;
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
  ConvertedNetWorthDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConvertedNetWorthDtoBuilder();
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
