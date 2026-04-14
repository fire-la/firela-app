//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/currency_balance_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multi_currency_point_dto.g.dart';

/// MultiCurrencyPointDto
///
/// Properties:
/// * [date] - Date in YYYY-MM-DD format
/// * [byCurrency] - Balances by currency
@BuiltValue()
abstract class MultiCurrencyPointDto
    implements Built<MultiCurrencyPointDto, MultiCurrencyPointDtoBuilder> {
  /// Date in YYYY-MM-DD format
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Balances by currency
  @BuiltValueField(wireName: r'byCurrency')
  BuiltList<CurrencyBalanceDto> get byCurrency;

  MultiCurrencyPointDto._();

  factory MultiCurrencyPointDto(
      [void updates(MultiCurrencyPointDtoBuilder b)]) = _$MultiCurrencyPointDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiCurrencyPointDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiCurrencyPointDto> get serializer =>
      _$MultiCurrencyPointDtoSerializer();
}

class _$MultiCurrencyPointDtoSerializer
    implements PrimitiveSerializer<MultiCurrencyPointDto> {
  @override
  final Iterable<Type> types = const [
    MultiCurrencyPointDto,
    _$MultiCurrencyPointDto
  ];

  @override
  final String wireName = r'MultiCurrencyPointDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MultiCurrencyPointDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'byCurrency';
    yield serializers.serialize(
      object.byCurrency,
      specifiedType: const FullType(BuiltList, [FullType(CurrencyBalanceDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MultiCurrencyPointDto object, {
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
    required MultiCurrencyPointDtoBuilder result,
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
  MultiCurrencyPointDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MultiCurrencyPointDtoBuilder();
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
