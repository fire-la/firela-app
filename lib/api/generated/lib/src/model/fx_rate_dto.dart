//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fx_rate_dto.g.dart';

/// FxRateDto
///
/// Properties:
/// * [from] 
/// * [to] 
/// * [rate] - FX rate (Decimal string)
/// * [date] - Rate date (ISO 8601)
@BuiltValue(instantiable: false)
abstract class FxRateDto  {
  @BuiltValueField(wireName: r'from')
  String get from;

  @BuiltValueField(wireName: r'to')
  String get to;

  /// FX rate (Decimal string)
  @BuiltValueField(wireName: r'rate')
  String get rate;

  /// Rate date (ISO 8601)
  @BuiltValueField(wireName: r'date')
  String get date;

  @BuiltValueSerializer(custom: true)
  static Serializer<FxRateDto> get serializer => _$FxRateDtoSerializer();
}

class _$FxRateDtoSerializer implements PrimitiveSerializer<FxRateDto> {
  @override
  final Iterable<Type> types = const [FxRateDto];

  @override
  final String wireName = r'FxRateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FxRateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
    yield r'rate';
    yield serializers.serialize(
      object.rate,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FxRateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  FxRateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($FxRateDto)) as $FxRateDto;
  }
}

/// a concrete implementation of [FxRateDto], since [FxRateDto] is not instantiable
@BuiltValue(instantiable: true)
abstract class $FxRateDto implements FxRateDto, Built<$FxRateDto, $FxRateDtoBuilder> {
  $FxRateDto._();

  factory $FxRateDto([void Function($FxRateDtoBuilder)? updates]) = _$$FxRateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($FxRateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$FxRateDto> get serializer => _$$FxRateDtoSerializer();
}

class _$$FxRateDtoSerializer implements PrimitiveSerializer<$FxRateDto> {
  @override
  final Iterable<Type> types = const [$FxRateDto, _$$FxRateDto];

  @override
  final String wireName = r'$FxRateDto';

  @override
  Object serialize(
    Serializers serializers,
    $FxRateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(FxRateDto))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FxRateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        case r'rate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rate = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $FxRateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $FxRateDtoBuilder();
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

