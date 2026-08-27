//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/account_standard_response_dto.dart';
import 'package:firela_api/src/model/platform_standards_platform_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_standards_response_dto.g.dart';

/// PlatformStandardsResponseDto
///
/// Properties:
/// * [platform] 
/// * [region] - Resolved template region (ISO 3166-1 alpha-2, UPPERCASE): the platform's own countryCode when set, else the region query param. For regions without a regional template file the template list falls back to the universal-only catalog while region still echoes the code.
/// * [templates] - Candidate account-standard templates of the resolved region (groupable by productCategory client-side)
@BuiltValue()
abstract class PlatformStandardsResponseDto implements Built<PlatformStandardsResponseDto, PlatformStandardsResponseDtoBuilder> {
  @BuiltValueField(wireName: r'platform')
  PlatformStandardsPlatformDto get platform;

  /// Resolved template region (ISO 3166-1 alpha-2, UPPERCASE): the platform's own countryCode when set, else the region query param. For regions without a regional template file the template list falls back to the universal-only catalog while region still echoes the code.
  @BuiltValueField(wireName: r'region')
  String get region;

  /// Candidate account-standard templates of the resolved region (groupable by productCategory client-side)
  @BuiltValueField(wireName: r'templates')
  BuiltList<AccountStandardResponseDto> get templates;

  PlatformStandardsResponseDto._();

  factory PlatformStandardsResponseDto([void updates(PlatformStandardsResponseDtoBuilder b)]) = _$PlatformStandardsResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformStandardsResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformStandardsResponseDto> get serializer => _$PlatformStandardsResponseDtoSerializer();
}

class _$PlatformStandardsResponseDtoSerializer implements PrimitiveSerializer<PlatformStandardsResponseDto> {
  @override
  final Iterable<Type> types = const [PlatformStandardsResponseDto, _$PlatformStandardsResponseDto];

  @override
  final String wireName = r'PlatformStandardsResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformStandardsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(PlatformStandardsPlatformDto),
    );
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'templates';
    yield serializers.serialize(
      object.templates,
      specifiedType: const FullType(BuiltList, [FullType(AccountStandardResponseDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformStandardsResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformStandardsResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformStandardsPlatformDto),
          ) as PlatformStandardsPlatformDto;
          result.platform.replace(valueDes);
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        case r'templates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountStandardResponseDto)]),
          ) as BuiltList<AccountStandardResponseDto>;
          result.templates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformStandardsResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformStandardsResponseDtoBuilder();
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

