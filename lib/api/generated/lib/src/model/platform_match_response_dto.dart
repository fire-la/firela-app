//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/platform_match_result_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_match_response_dto.g.dart';

/// PlatformMatchResponseDto
///
/// Properties:
/// * [platforms] - Ranked matches, best tier first (at most 10 rows)
/// * [matchType] - Overall match quality — top row's tier, or 'none' when no hits
/// * [total] - Total matches before LIMIT (truncation transparency)
/// * [hasMore] - true when total > platforms.length (more matches exist)
@BuiltValue()
abstract class PlatformMatchResponseDto implements Built<PlatformMatchResponseDto, PlatformMatchResponseDtoBuilder> {
  /// Ranked matches, best tier first (at most 10 rows)
  @BuiltValueField(wireName: r'platforms')
  BuiltList<PlatformMatchResultDto> get platforms;

  /// Overall match quality — top row's tier, or 'none' when no hits
  @BuiltValueField(wireName: r'matchType')
  PlatformMatchResponseDtoMatchTypeEnum get matchType;
  // enum matchTypeEnum {  none,  exact,  prefix,  substring,  };

  /// Total matches before LIMIT (truncation transparency)
  @BuiltValueField(wireName: r'total')
  num get total;

  /// true when total > platforms.length (more matches exist)
  @BuiltValueField(wireName: r'hasMore')
  bool get hasMore;

  PlatformMatchResponseDto._();

  factory PlatformMatchResponseDto([void updates(PlatformMatchResponseDtoBuilder b)]) = _$PlatformMatchResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformMatchResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformMatchResponseDto> get serializer => _$PlatformMatchResponseDtoSerializer();
}

class _$PlatformMatchResponseDtoSerializer implements PrimitiveSerializer<PlatformMatchResponseDto> {
  @override
  final Iterable<Type> types = const [PlatformMatchResponseDto, _$PlatformMatchResponseDto];

  @override
  final String wireName = r'PlatformMatchResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformMatchResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'platforms';
    yield serializers.serialize(
      object.platforms,
      specifiedType: const FullType(BuiltList, [FullType(PlatformMatchResultDto)]),
    );
    yield r'matchType';
    yield serializers.serialize(
      object.matchType,
      specifiedType: const FullType(PlatformMatchResponseDtoMatchTypeEnum),
    );
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'hasMore';
    yield serializers.serialize(
      object.hasMore,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformMatchResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PlatformMatchResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platforms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PlatformMatchResultDto)]),
          ) as BuiltList<PlatformMatchResultDto>;
          result.platforms.replace(valueDes);
          break;
        case r'matchType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformMatchResponseDtoMatchTypeEnum),
          ) as PlatformMatchResponseDtoMatchTypeEnum;
          result.matchType = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'hasMore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasMore = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformMatchResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformMatchResponseDtoBuilder();
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

class PlatformMatchResponseDtoMatchTypeEnum extends EnumClass {

  /// Overall match quality — top row's tier, or 'none' when no hits
  @BuiltValueEnumConst(wireName: r'none')
  static const PlatformMatchResponseDtoMatchTypeEnum none = _$platformMatchResponseDtoMatchTypeEnum_none;
  /// Overall match quality — top row's tier, or 'none' when no hits
  @BuiltValueEnumConst(wireName: r'exact')
  static const PlatformMatchResponseDtoMatchTypeEnum exact = _$platformMatchResponseDtoMatchTypeEnum_exact;
  /// Overall match quality — top row's tier, or 'none' when no hits
  @BuiltValueEnumConst(wireName: r'prefix')
  static const PlatformMatchResponseDtoMatchTypeEnum prefix = _$platformMatchResponseDtoMatchTypeEnum_prefix;
  /// Overall match quality — top row's tier, or 'none' when no hits
  @BuiltValueEnumConst(wireName: r'substring')
  static const PlatformMatchResponseDtoMatchTypeEnum substring = _$platformMatchResponseDtoMatchTypeEnum_substring;

  static Serializer<PlatformMatchResponseDtoMatchTypeEnum> get serializer => _$platformMatchResponseDtoMatchTypeEnumSerializer;

  const PlatformMatchResponseDtoMatchTypeEnum._(String name): super(name);

  static BuiltSet<PlatformMatchResponseDtoMatchTypeEnum> get values => _$platformMatchResponseDtoMatchTypeEnumValues;
  static PlatformMatchResponseDtoMatchTypeEnum valueOf(String name) => _$platformMatchResponseDtoMatchTypeEnumValueOf(name);
}

