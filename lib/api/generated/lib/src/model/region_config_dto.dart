//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region_config_dto.g.dart';

/// RegionConfigDto
///
/// Properties:
/// * [currency]
/// * [dateFormat]
/// * [locale]
@BuiltValue()
abstract class RegionConfigDto
    implements Built<RegionConfigDto, RegionConfigDtoBuilder> {
  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'dateFormat')
  String get dateFormat;

  @BuiltValueField(wireName: r'locale')
  String get locale;

  RegionConfigDto._();

  factory RegionConfigDto([void updates(RegionConfigDtoBuilder b)]) =
      _$RegionConfigDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionConfigDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionConfigDto> get serializer =>
      _$RegionConfigDtoSerializer();
}

class _$RegionConfigDtoSerializer
    implements PrimitiveSerializer<RegionConfigDto> {
  @override
  final Iterable<Type> types = const [RegionConfigDto, _$RegionConfigDto];

  @override
  final String wireName = r'RegionConfigDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionConfigDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'dateFormat';
    yield serializers.serialize(
      object.dateFormat,
      specifiedType: const FullType(String),
    );
    yield r'locale';
    yield serializers.serialize(
      object.locale,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionConfigDto object, {
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
    required RegionConfigDtoBuilder result,
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
        case r'dateFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dateFormat = valueDes;
          break;
        case r'locale':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.locale = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionConfigDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionConfigDtoBuilder();
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
