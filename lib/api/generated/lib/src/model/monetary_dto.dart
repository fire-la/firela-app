//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'monetary_dto.g.dart';

/// MonetaryDto
///
/// Properties:
/// * [amount] - Amount (Decimal string)
/// * [currency] - ISO 4217 currency
/// * [baseCcyEquivalent] - Converted to user base currency (Decimal string)
@BuiltValue(instantiable: false)
abstract class MonetaryDto  {
  /// Amount (Decimal string)
  @BuiltValueField(wireName: r'amount')
  String get amount;

  /// ISO 4217 currency
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Converted to user base currency (Decimal string)
  @BuiltValueField(wireName: r'baseCcyEquivalent')
  JsonObject? get baseCcyEquivalent;

  @BuiltValueSerializer(custom: true)
  static Serializer<MonetaryDto> get serializer => _$MonetaryDtoSerializer();
}

class _$MonetaryDtoSerializer implements PrimitiveSerializer<MonetaryDto> {
  @override
  final Iterable<Type> types = const [MonetaryDto];

  @override
  final String wireName = r'MonetaryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MonetaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.baseCcyEquivalent != null) {
      yield r'baseCcyEquivalent';
      yield serializers.serialize(
        object.baseCcyEquivalent,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MonetaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  MonetaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($MonetaryDto)) as $MonetaryDto;
  }
}

/// a concrete implementation of [MonetaryDto], since [MonetaryDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $MonetaryDto implements MonetaryDto, Built<$MonetaryDto, $MonetaryDtoBuilder> {
  $MonetaryDto._();

  factory $MonetaryDto([void Function($MonetaryDtoBuilder)? updates]) = _$$MonetaryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($MonetaryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$MonetaryDto> get serializer => _$$MonetaryDtoSerializer();
}

class _$$MonetaryDtoSerializer implements PrimitiveSerializer<$MonetaryDto> {
  @override
  final Iterable<Type> types = const [$MonetaryDto, _$$MonetaryDto];

  @override
  final String wireName = r'$MonetaryDto';

  @override
  Object serialize(
    Serializers serializers,
    $MonetaryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(MonetaryDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MonetaryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'baseCcyEquivalent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.baseCcyEquivalent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $MonetaryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $MonetaryDtoBuilder();
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

