//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/exchange_rate_warning_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trailing12m_dto.g.dart';

/// Trailing12mDto
///
/// Properties:
/// * [currency] - Conversion target currency (P8 contract: CNY)
/// * [expense] - Trailing-12m expense total, CNY-converted (absolute magnitude; convertible currencies only)
/// * [income] - Trailing-12m income total, CNY-converted (absolute magnitude; convertible currencies only)
/// * [saving] - Trailing-12m saving = income − expense (positive = saving), CNY-converted
/// * [warnings] - Exchange rate warnings (e.g. missing rate for a currency)
@BuiltValue()
abstract class Trailing12mDto implements Built<Trailing12mDto, Trailing12mDtoBuilder> {
  /// Conversion target currency (P8 contract: CNY)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Trailing-12m expense total, CNY-converted (absolute magnitude; convertible currencies only)
  @BuiltValueField(wireName: r'expense')
  String get expense;

  /// Trailing-12m income total, CNY-converted (absolute magnitude; convertible currencies only)
  @BuiltValueField(wireName: r'income')
  String get income;

  /// Trailing-12m saving = income − expense (positive = saving), CNY-converted
  @BuiltValueField(wireName: r'saving')
  String get saving;

  /// Exchange rate warnings (e.g. missing rate for a currency)
  @BuiltValueField(wireName: r'warnings')
  BuiltList<ExchangeRateWarningDto>? get warnings;

  Trailing12mDto._();

  factory Trailing12mDto([void updates(Trailing12mDtoBuilder b)]) = _$Trailing12mDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Trailing12mDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Trailing12mDto> get serializer => _$Trailing12mDtoSerializer();
}

class _$Trailing12mDtoSerializer implements PrimitiveSerializer<Trailing12mDto> {
  @override
  final Iterable<Type> types = const [Trailing12mDto, _$Trailing12mDto];

  @override
  final String wireName = r'Trailing12mDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Trailing12mDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'expense';
    yield serializers.serialize(
      object.expense,
      specifiedType: const FullType(String),
    );
    yield r'income';
    yield serializers.serialize(
      object.income,
      specifiedType: const FullType(String),
    );
    yield r'saving';
    yield serializers.serialize(
      object.saving,
      specifiedType: const FullType(String),
    );
    if (object.warnings != null) {
      yield r'warnings';
      yield serializers.serialize(
        object.warnings,
        specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Trailing12mDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Trailing12mDtoBuilder result,
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
        case r'expense':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expense = valueDes;
          break;
        case r'income':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.income = valueDes;
          break;
        case r'saving':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.saving = valueDes;
          break;
        case r'warnings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExchangeRateWarningDto)]),
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
  Trailing12mDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Trailing12mDtoBuilder();
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

