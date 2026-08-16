//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/client_parsed_data_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_nlp_dto.g.dart';

/// ProcessNlpDto
///
/// Properties:
/// * [message] - Natural language text describing a transaction. Optional when `confirm` is true (structured confirm); otherwise required.
/// * [confirm] - Structured confirm signal — bypasses NL confirm-word matching when true. Send parsedData field edits alongside. The NL word-list path is the fallback.
/// * [sessionId] - Session ID for multi-turn conversation (auto-generated if not provided)
/// * [parsedData] 
/// * [selectedRuleId] - confirm_rule echo-back: rule id selected from the prior confirm_rule response (matchedRule.id or alternatives[i].ruleId). Applied directly when the session is confirming_rule — no NL re-parse.
/// * [selectedAccount] - confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i], or a typed path). Applied directly when the session is confirming_account — no NL re-parse.
@BuiltValue()
abstract class ProcessNlpDto implements Built<ProcessNlpDto, ProcessNlpDtoBuilder> {
  /// Natural language text describing a transaction. Optional when `confirm` is true (structured confirm); otherwise required.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Structured confirm signal — bypasses NL confirm-word matching when true. Send parsedData field edits alongside. The NL word-list path is the fallback.
  @BuiltValueField(wireName: r'confirm')
  bool? get confirm;

  /// Session ID for multi-turn conversation (auto-generated if not provided)
  @BuiltValueField(wireName: r'sessionId')
  String? get sessionId;

  @BuiltValueField(wireName: r'parsedData')
  ClientParsedDataDto? get parsedData;

  /// confirm_rule echo-back: rule id selected from the prior confirm_rule response (matchedRule.id or alternatives[i].ruleId). Applied directly when the session is confirming_rule — no NL re-parse.
  @BuiltValueField(wireName: r'selectedRuleId')
  String? get selectedRuleId;

  /// confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i], or a typed path). Applied directly when the session is confirming_account — no NL re-parse.
  @BuiltValueField(wireName: r'selectedAccount')
  String? get selectedAccount;

  ProcessNlpDto._();

  factory ProcessNlpDto([void updates(ProcessNlpDtoBuilder b)]) = _$ProcessNlpDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessNlpDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessNlpDto> get serializer => _$ProcessNlpDtoSerializer();
}

class _$ProcessNlpDtoSerializer implements PrimitiveSerializer<ProcessNlpDto> {
  @override
  final Iterable<Type> types = const [ProcessNlpDto, _$ProcessNlpDto];

  @override
  final String wireName = r'ProcessNlpDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessNlpDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirm != null) {
      yield r'confirm';
      yield serializers.serialize(
        object.confirm,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sessionId != null) {
      yield r'sessionId';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.parsedData != null) {
      yield r'parsedData';
      yield serializers.serialize(
        object.parsedData,
        specifiedType: const FullType(ClientParsedDataDto),
      );
    }
    if (object.selectedRuleId != null) {
      yield r'selectedRuleId';
      yield serializers.serialize(
        object.selectedRuleId,
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
    ProcessNlpDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessNlpDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'confirm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirm = valueDes;
          break;
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'parsedData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ClientParsedDataDto),
          ) as ClientParsedDataDto;
          result.parsedData.replace(valueDes);
          break;
        case r'selectedRuleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedRuleId = valueDes;
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
  ProcessNlpDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessNlpDtoBuilder();
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

