//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_selection_dto.g.dart';

/// AccountSelectionDto
///
/// Properties:
/// * [invalidAccount] - The invalid leg this pick answers — echo back accountData.invalidAccounts[i].invalidAccount from the prior confirm_account response.
/// * [selectedAccount] - The account picked for that leg (suggestedAccount, similarAccounts[i].path, or a typed path).
@BuiltValue()
abstract class AccountSelectionDto implements Built<AccountSelectionDto, AccountSelectionDtoBuilder> {
  /// The invalid leg this pick answers — echo back accountData.invalidAccounts[i].invalidAccount from the prior confirm_account response.
  @BuiltValueField(wireName: r'invalidAccount')
  String? get invalidAccount;

  /// The account picked for that leg (suggestedAccount, similarAccounts[i].path, or a typed path).
  @BuiltValueField(wireName: r'selectedAccount')
  String? get selectedAccount;

  AccountSelectionDto._();

  factory AccountSelectionDto([void updates(AccountSelectionDtoBuilder b)]) = _$AccountSelectionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountSelectionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountSelectionDto> get serializer => _$AccountSelectionDtoSerializer();
}

class _$AccountSelectionDtoSerializer implements PrimitiveSerializer<AccountSelectionDto> {
  @override
  final Iterable<Type> types = const [AccountSelectionDto, _$AccountSelectionDto];

  @override
  final String wireName = r'AccountSelectionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountSelectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.invalidAccount != null) {
      yield r'invalidAccount';
      yield serializers.serialize(
        object.invalidAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.selectedAccount != null) {
      yield r'selectedAccount';
      yield serializers.serialize(
        object.selectedAccount,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountSelectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountSelectionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'invalidAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.invalidAccount = valueDes;
          break;
        case r'selectedAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedAccount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountSelectionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountSelectionDtoBuilder();
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

