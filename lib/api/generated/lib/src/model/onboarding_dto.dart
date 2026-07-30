//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/onboarding_account_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'onboarding_dto.g.dart';

/// OnboardingDto
///
/// Properties:
/// * [accounts] - Asset/Liability accounts to register with opening balances
/// * [skipAssetRegistration] - Skip asset registration; only bootstrap the core account set
@BuiltValue()
abstract class OnboardingDto implements Built<OnboardingDto, OnboardingDtoBuilder> {
  /// Asset/Liability accounts to register with opening balances
  @BuiltValueField(wireName: r'accounts')
  BuiltList<OnboardingAccountDto>? get accounts;

  /// Skip asset registration; only bootstrap the core account set
  @BuiltValueField(wireName: r'skipAssetRegistration')
  bool? get skipAssetRegistration;

  OnboardingDto._();

  factory OnboardingDto([void updates(OnboardingDtoBuilder b)]) = _$OnboardingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OnboardingDtoBuilder b) => b
      ..skipAssetRegistration = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<OnboardingDto> get serializer => _$OnboardingDtoSerializer();
}

class _$OnboardingDtoSerializer implements PrimitiveSerializer<OnboardingDto> {
  @override
  final Iterable<Type> types = const [OnboardingDto, _$OnboardingDto];

  @override
  final String wireName = r'OnboardingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OnboardingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accounts != null) {
      yield r'accounts';
      yield serializers.serialize(
        object.accounts,
        specifiedType: const FullType(BuiltList, [FullType(OnboardingAccountDto)]),
      );
    }
    if (object.skipAssetRegistration != null) {
      yield r'skipAssetRegistration';
      yield serializers.serialize(
        object.skipAssetRegistration,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OnboardingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OnboardingDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OnboardingAccountDto)]),
          ) as BuiltList<OnboardingAccountDto>;
          result.accounts.replace(valueDes);
          break;
        case r'skipAssetRegistration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.skipAssetRegistration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OnboardingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OnboardingDtoBuilder();
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

