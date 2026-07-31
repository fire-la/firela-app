//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'onboarding_account_dto.g.dart';

/// OnboardingAccountDto
///
/// Properties:
/// * [path] - Account path (Assets/Liabilities only; format validated by the account service)
/// * [currency] - ISO 4217 currency code (3 letters)
/// * [openingBalance] - Opening balance as a non-negative Decimal string (e.g. \"1000.00\")
/// * [platformId] - Platform ID to bind the account to (references Platform.id); omit for unbound
@BuiltValue()
abstract class OnboardingAccountDto implements Built<OnboardingAccountDto, OnboardingAccountDtoBuilder> {
  /// Account path (Assets/Liabilities only; format validated by the account service)
  @BuiltValueField(wireName: r'path')
  String get path;

  /// ISO 4217 currency code (3 letters)
  @BuiltValueField(wireName: r'currency')
  String get currency;

  /// Opening balance as a non-negative Decimal string (e.g. \"1000.00\")
  @BuiltValueField(wireName: r'openingBalance')
  String? get openingBalance;

  /// Platform ID to bind the account to (references Platform.id); omit for unbound
  @BuiltValueField(wireName: r'platformId')
  String? get platformId;

  OnboardingAccountDto._();

  factory OnboardingAccountDto([void updates(OnboardingAccountDtoBuilder b)]) = _$OnboardingAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OnboardingAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OnboardingAccountDto> get serializer => _$OnboardingAccountDtoSerializer();
}

class _$OnboardingAccountDtoSerializer implements PrimitiveSerializer<OnboardingAccountDto> {
  @override
  final Iterable<Type> types = const [OnboardingAccountDto, _$OnboardingAccountDto];

  @override
  final String wireName = r'OnboardingAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OnboardingAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    if (object.openingBalance != null) {
      yield r'openingBalance';
      yield serializers.serialize(
        object.openingBalance,
        specifiedType: const FullType(String),
      );
    }
    if (object.platformId != null) {
      yield r'platformId';
      yield serializers.serialize(
        object.platformId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OnboardingAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OnboardingAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'openingBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.openingBalance = valueDes;
          break;
        case r'platformId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platformId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OnboardingAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OnboardingAccountDtoBuilder();
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

