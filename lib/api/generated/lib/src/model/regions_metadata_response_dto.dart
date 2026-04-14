//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/region_info_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'regions_metadata_response_dto.g.dart';

/// RegionsMetadataResponseDto
///
/// Properties:
/// * [regions]
@BuiltValue()
abstract class RegionsMetadataResponseDto
    implements
        Built<RegionsMetadataResponseDto, RegionsMetadataResponseDtoBuilder> {
  @BuiltValueField(wireName: r'regions')
  BuiltList<RegionInfoDto> get regions;

  RegionsMetadataResponseDto._();

  factory RegionsMetadataResponseDto(
          [void updates(RegionsMetadataResponseDtoBuilder b)]) =
      _$RegionsMetadataResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegionsMetadataResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegionsMetadataResponseDto> get serializer =>
      _$RegionsMetadataResponseDtoSerializer();
}

class _$RegionsMetadataResponseDtoSerializer
    implements PrimitiveSerializer<RegionsMetadataResponseDto> {
  @override
  final Iterable<Type> types = const [
    RegionsMetadataResponseDto,
    _$RegionsMetadataResponseDto
  ];

  @override
  final String wireName = r'RegionsMetadataResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegionsMetadataResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'regions';
    yield serializers.serialize(
      object.regions,
      specifiedType: const FullType(BuiltList, [FullType(RegionInfoDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RegionsMetadataResponseDto object, {
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
    required RegionsMetadataResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'regions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RegionInfoDto)]),
          ) as BuiltList<RegionInfoDto>;
          result.regions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegionsMetadataResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionsMetadataResponseDtoBuilder();
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
