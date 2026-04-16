//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/balance_by_currency_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'net_worth_by_currency_dto.g.dart';

/// NetWorthByCurrencyDto
///
/// Properties:
/// * [netWorth] - Net worth by currency
/// * [assets] - Assets by currency
/// * [liabilities] - Liabilities by currency
@BuiltValue()
abstract class NetWorthByCurrencyDto
    implements Built<NetWorthByCurrencyDto, NetWorthByCurrencyDtoBuilder> {
  /// Net worth by currency
  @BuiltValueField(wireName: r'netWorth')
  BuiltList<BalanceByCurrencyDto> get netWorth;

  /// Assets by currency
  @BuiltValueField(wireName: r'assets')
  BuiltList<BalanceByCurrencyDto> get assets;

  /// Liabilities by currency
  @BuiltValueField(wireName: r'liabilities')
  BuiltList<BalanceByCurrencyDto> get liabilities;

  NetWorthByCurrencyDto._();

  factory NetWorthByCurrencyDto(
      [void updates(NetWorthByCurrencyDtoBuilder b)]) = _$NetWorthByCurrencyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NetWorthByCurrencyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NetWorthByCurrencyDto> get serializer =>
      _$NetWorthByCurrencyDtoSerializer();
}

class _$NetWorthByCurrencyDtoSerializer
    implements PrimitiveSerializer<NetWorthByCurrencyDto> {
  @override
  final Iterable<Type> types = const [
    NetWorthByCurrencyDto,
    _$NetWorthByCurrencyDto
  ];

  @override
  final String wireName = r'NetWorthByCurrencyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NetWorthByCurrencyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'netWorth';
    yield serializers.serialize(
      object.netWorth,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    yield r'assets';
    yield serializers.serialize(
      object.assets,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
    yield r'liabilities';
    yield serializers.serialize(
      object.liabilities,
      specifiedType:
          const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NetWorthByCurrencyDto object, {
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
    required NetWorthByCurrencyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'netWorth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.netWorth.replace(valueDes);
          break;
        case r'assets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.assets.replace(valueDes);
          break;
        case r'liabilities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(BalanceByCurrencyDto)]),
          ) as BuiltList<BalanceByCurrencyDto>;
          result.liabilities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NetWorthByCurrencyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetWorthByCurrencyDtoBuilder();
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
