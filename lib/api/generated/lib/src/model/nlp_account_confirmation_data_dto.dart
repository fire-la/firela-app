//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_account_confirmation_data_dto.g.dart';

/// NlpAccountConfirmationDataDto
///
/// Properties:
/// * [invalidAccount] - The invalid account name
/// * [suggestedAccount] - Suggested replacement account
/// * [similarAccounts] - Similar accounts for user selection
/// * [errorMessage] - Error message explaining the issue
/// * [transactionContext] - Transaction context for reference
@BuiltValue()
abstract class NlpAccountConfirmationDataDto
    implements
        Built<NlpAccountConfirmationDataDto,
            NlpAccountConfirmationDataDtoBuilder> {
  /// The invalid account name
  @BuiltValueField(wireName: r'invalidAccount')
  String get invalidAccount;

  /// Suggested replacement account
  @BuiltValueField(wireName: r'suggestedAccount')
  String get suggestedAccount;

  /// Similar accounts for user selection
  @BuiltValueField(wireName: r'similarAccounts')
  BuiltList<String> get similarAccounts;

  /// Error message explaining the issue
  @BuiltValueField(wireName: r'errorMessage')
  String get errorMessage;

  /// Transaction context for reference
  @BuiltValueField(wireName: r'transactionContext')
  JsonObject get transactionContext;

  NlpAccountConfirmationDataDto._();

  factory NlpAccountConfirmationDataDto(
          [void updates(NlpAccountConfirmationDataDtoBuilder b)]) =
      _$NlpAccountConfirmationDataDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpAccountConfirmationDataDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpAccountConfirmationDataDto> get serializer =>
      _$NlpAccountConfirmationDataDtoSerializer();
}

class _$NlpAccountConfirmationDataDtoSerializer
    implements PrimitiveSerializer<NlpAccountConfirmationDataDto> {
  @override
  final Iterable<Type> types = const [
    NlpAccountConfirmationDataDto,
    _$NlpAccountConfirmationDataDto
  ];

  @override
  final String wireName = r'NlpAccountConfirmationDataDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpAccountConfirmationDataDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'invalidAccount';
    yield serializers.serialize(
      object.invalidAccount,
      specifiedType: const FullType(String),
    );
    yield r'suggestedAccount';
    yield serializers.serialize(
      object.suggestedAccount,
      specifiedType: const FullType(String),
    );
    yield r'similarAccounts';
    yield serializers.serialize(
      object.similarAccounts,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'errorMessage';
    yield serializers.serialize(
      object.errorMessage,
      specifiedType: const FullType(String),
    );
    yield r'transactionContext';
    yield serializers.serialize(
      object.transactionContext,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpAccountConfirmationDataDto object, {
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
    required NlpAccountConfirmationDataDtoBuilder result,
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
        case r'suggestedAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.suggestedAccount = valueDes;
          break;
        case r'similarAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.similarAccounts.replace(valueDes);
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        case r'transactionContext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.transactionContext = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpAccountConfirmationDataDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpAccountConfirmationDataDtoBuilder();
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
