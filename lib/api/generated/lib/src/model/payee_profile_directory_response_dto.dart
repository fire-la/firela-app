//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/payee_profile_directory_entry_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payee_profile_directory_response_dto.g.dart';

/// PayeeProfileDirectoryResponseDto
///
/// Properties:
/// * [total] - Total number of active profiles
/// * [profiles] - Active payee profiles
@BuiltValue()
abstract class PayeeProfileDirectoryResponseDto implements Built<PayeeProfileDirectoryResponseDto, PayeeProfileDirectoryResponseDtoBuilder> {
  /// Total number of active profiles
  @BuiltValueField(wireName: r'total')
  num get total;

  /// Active payee profiles
  @BuiltValueField(wireName: r'profiles')
  BuiltList<PayeeProfileDirectoryEntryDto> get profiles;

  PayeeProfileDirectoryResponseDto._();

  factory PayeeProfileDirectoryResponseDto([void updates(PayeeProfileDirectoryResponseDtoBuilder b)]) = _$PayeeProfileDirectoryResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayeeProfileDirectoryResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayeeProfileDirectoryResponseDto> get serializer => _$PayeeProfileDirectoryResponseDtoSerializer();
}

class _$PayeeProfileDirectoryResponseDtoSerializer implements PrimitiveSerializer<PayeeProfileDirectoryResponseDto> {
  @override
  final Iterable<Type> types = const [PayeeProfileDirectoryResponseDto, _$PayeeProfileDirectoryResponseDto];

  @override
  final String wireName = r'PayeeProfileDirectoryResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayeeProfileDirectoryResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(num),
    );
    yield r'profiles';
    yield serializers.serialize(
      object.profiles,
      specifiedType: const FullType(BuiltList, [FullType(PayeeProfileDirectoryEntryDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PayeeProfileDirectoryResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayeeProfileDirectoryResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'profiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PayeeProfileDirectoryEntryDto)]),
          ) as BuiltList<PayeeProfileDirectoryEntryDto>;
          result.profiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayeeProfileDirectoryResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayeeProfileDirectoryResponseDtoBuilder();
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

