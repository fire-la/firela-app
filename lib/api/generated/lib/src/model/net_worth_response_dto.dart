//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/net_worth_by_currency_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:firela_api/src/model/converted_net_worth_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'net_worth_response_dto.g.dart';

/// NetWorthResponseDto
///
/// Properties:
/// * [netWorth] - Total net worth (assets - liabilities, converted to base currency)
/// * [assets] - Total assets value (converted)
/// * [liabilities] - Total liabilities value (positive number, converted)
/// * [monthlyReturn] - Monthly return (change from last month)
/// * [monthlyReturnPercentage] - Monthly return percentage
/// * [currency] - Base currency code
/// * [asOf] - Data as of date (ISO 8601)
/// * [byCurrency]
/// * [converted]
/// * [warnings] - Exchange rate warnings
@BuiltValue()
abstract class NetWorthResponseDto
    implements Built<NetWorthResponseDto, NetWorthResponseDtoBuilder> {
  /// Total net worth (assets - liabilities, converted to base currency)
  @BuiltValueField(wireName: r'netWorth')
  String get netWorth;

  /// Total assets value (converted)
  @BuiltValueField(wireName: r'assets')
  String get assets;

  /// Total liabilities value (positive number, converted)
  @BuiltValueField(wireName: r'liabilities')
  String get liabilities;

  /// Monthly return (change from last month)
  @BuiltValueField(wireName: r'monthlyReturn')
  String get monthlyReturn;

  /// Monthly return percentage
  @BuiltValueField(wireName: r'monthlyReturnPercentage')
  String get monthlyReturnPercentage;

  /// Base currency code
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Data as of date (ISO 8601)
  @BuiltValueField(wireName: r'asOf')
  String get asOf;

  @BuiltValueField(wireName: r'byCurrency')
  NetWorthByCurrencyDto? get byCurrency;

  @BuiltValueField(wireName: r'converted')
  ConvertedNetWorthDto? get converted;

  /// Exchange rate warnings
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  NetWorthResponseDto._();

  factory NetWorthResponseDto([void updates(NetWorthResponseDtoBuilder b)]) =
      _$NetWorthResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NetWorthResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NetWorthResponseDto> get serializer =>
      _$NetWorthResponseDtoSerializer();
}

class _$NetWorthResponseDtoSerializer
    implements PrimitiveSerializer<NetWorthResponseDto> {
  @override
  final Iterable<Type> types = const [
    NetWorthResponseDto,
    _$NetWorthResponseDto
  ];

  @override
  final String wireName = r'NetWorthResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NetWorthResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'monthlyReturn';
    yield serializers.serialize(
      object.monthlyReturn,
      specifiedType: const FullType(String),
    );
    yield r'monthlyReturnPercentage';
    yield serializers.serialize(
      object.monthlyReturnPercentage,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'asOf';
    yield serializers.serialize(
      object.asOf,
      specifiedType: const FullType(String),
    );
    if (object.byCurrency != null) {
      yield r'byCurrency';
      yield serializers.serialize(
        object.byCurrency,
        specifiedType: const FullType(NetWorthByCurrencyDto),
      );
    }
    if (object.converted != null) {
      yield r'converted';
      yield serializers.serialize(
        object.converted,
        specifiedType: const FullType(ConvertedNetWorthDto),
      );
    }
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType:
            const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NetWorthResponseDto object, {
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
    required NetWorthResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'monthlyReturn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.monthlyReturn = valueDes;
          break;
        case r'monthlyReturnPercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.monthlyReturnPercentage = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'asOf':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.asOf = valueDes;
          break;
        case r'byCurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NetWorthByCurrencyDto),
          ) as NetWorthByCurrencyDto;
          result.byCurrency.replace(valueDes);
          break;
        case r'converted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConvertedNetWorthDto),
          ) as ConvertedNetWorthDto;
          result.converted.replace(valueDes);
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
          ) as BuiltList<ExchangeRateWarningDto>;
          result.warnings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NetWorthResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetWorthResponseDtoBuilder();
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
