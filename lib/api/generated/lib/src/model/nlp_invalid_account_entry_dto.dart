//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/nlp_account_candidate_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_invalid_account_entry_dto.g.dart';

/// NlpInvalidAccountEntryDto
///
/// Properties:
/// * [invalidAccount] - The invalid account name for this leg
/// * [suggestedAccount] - Suggested replacement account for this leg (omitted when no clear candidate)
/// * [similarAccounts] - Similar accounts for this leg (path + localized name, #680)
/// * [errorMessage] - Error message explaining this leg issue
@BuiltValue()
abstract class NlpInvalidAccountEntryDto implements Built<NlpInvalidAccountEntryDto, NlpInvalidAccountEntryDtoBuilder> {
  /// The invalid account name for this leg
  @BuiltValueField(wireName: r'invalidAccount')
  String get invalidAccount;

  /// Suggested replacement account for this leg (omitted when no clear candidate)
  @BuiltValueField(wireName: r'suggestedAccount')
  String? get suggestedAccount;

  /// Similar accounts for this leg (path + localized name, #680)
  @BuiltValueField(wireName: r'similarAccounts')
  BuiltList<NlpAccountCandidateDto> get similarAccounts;

  /// Error message explaining this leg issue
  @BuiltValueField(wireName: r'errorMessage')
  String get errorMessage;

  NlpInvalidAccountEntryDto._();

  factory NlpInvalidAccountEntryDto([void updates(NlpInvalidAccountEntryDtoBuilder b)]) = _$NlpInvalidAccountEntryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpInvalidAccountEntryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpInvalidAccountEntryDto> get serializer => _$NlpInvalidAccountEntryDtoSerializer();
}

class _$NlpInvalidAccountEntryDtoSerializer implements PrimitiveSerializer<NlpInvalidAccountEntryDto> {
  @override
  final Iterable<Type> types = const [NlpInvalidAccountEntryDto, _$NlpInvalidAccountEntryDto];

  @override
  final String wireName = r'NlpInvalidAccountEntryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpInvalidAccountEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'invalidAccount';
    yield serializers.serialize(
      object.invalidAccount,
      specifiedType: const FullType(String),
    );
    if (object.suggestedAccount != null) {
      yield r'suggestedAccount';
      yield serializers.serialize(
        object.suggestedAccount,
        specifiedType: const FullType(String),
      );
    }
    yield r'similarAccounts';
    yield serializers.serialize(
      object.similarAccounts,
      specifiedType: const FullType(BuiltList, [FullType(NlpAccountCandidateDto)]),
    );
    yield r'errorMessage';
    yield serializers.serialize(
      object.errorMessage,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpInvalidAccountEntryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NlpInvalidAccountEntryDtoBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(NlpAccountCandidateDto)]),
          ) as BuiltList<NlpAccountCandidateDto>;
          result.similarAccounts.replace(valueDes);
          break;
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpInvalidAccountEntryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpInvalidAccountEntryDtoBuilder();
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

