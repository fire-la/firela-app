//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/region_config_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'region_info_dto.g.dart';

/// RegionInfoDto
///
/// Properties:
/// * [code]
/// * [displayName]
/// * [chain]
/// * [config]
/// * [parent]
@BuiltValue()
abstract class RegionInfoDto
    implements Built<RegionInfoDto, RegionInfoDtoBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'chain')
  BuiltList<String> get chain;

  @BuiltValueField(wireName: r'config')
  RegionConfigDto get config;

  @BuiltValueField(wireName: r'parent')
  String? get parent;

  RegionInfoDto._();

  factory RegionInfoDto([void updates(RegionInfoDtoBuilder b)]) =
      _$RegionInfoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionInfoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionInfoDto> get serializer =>
      _$RegionInfoDtoSerializer();
}

class _$RegionInfoDtoSerializer implements PrimitiveSerializer<RegionInfoDto> {
  @override
  final Iterable<Type> types = const [RegionInfoDto, _$RegionInfoDto];

  @override
  final String wireName = r'RegionInfoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionInfoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'chain';
    yield serializers.serialize(
      object.chain,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'config';
    yield serializers.serialize(
      object.config,
      specifiedType: const FullType(RegionConfigDto),
    );
    if (object.parent != null) {
      yield r'parent';
      yield serializers.serialize(
        object.parent,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionInfoDto object, {
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
    required RegionInfoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'chain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.chain.replace(valueDes);
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RegionConfigDto),
          ) as RegionConfigDto;
          result.config.replace(valueDes);
          break;
        case r'parent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.parent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionInfoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionInfoDtoBuilder();
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
