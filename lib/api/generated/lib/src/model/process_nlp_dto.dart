//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
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
/// * [selectedAccount] - confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i].path, or a typed path). Applied directly when the session is confirming_account — no NL re-parse.
/// * [viewpointAccount] - Viewpoint account hint: the beancount path the user drilled into (e.g. from an account drill-down). Tie-break only — never overrides accounts resolved from the text. Must be an owned, OPEN Assets:/Liabilities: account; unresolvable hints are silently ignored.
/// * [viewpointCategory] - Viewpoint category hint: the ADR-0075 Group segment the user drilled into (e.g. 'Food'). Resolved to a concrete OPEN account in that group; tie-break only — never overrides a category resolved from the text.
/// * [viewpointFlow] - Companion flow root for viewpointCategory ('income' | 'expense'), mirroring the ADR-0126 list-endpoint invariant. Derived from the session's routed intent (multi-turn) when absent; a first-turn flow-less category hint is dropped — send the flow explicitly.
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

  /// confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i].path, or a typed path). Applied directly when the session is confirming_account — no NL re-parse.
  @BuiltValueField(wireName: r'selectedAccount')
  String? get selectedAccount;

  /// Viewpoint account hint: the beancount path the user drilled into (e.g. from an account drill-down). Tie-break only — never overrides accounts resolved from the text. Must be an owned, OPEN Assets:/Liabilities: account; unresolvable hints are silently ignored.
  @BuiltValueField(wireName: r'viewpointAccount')
  String? get viewpointAccount;

  /// Viewpoint category hint: the ADR-0075 Group segment the user drilled into (e.g. 'Food'). Resolved to a concrete OPEN account in that group; tie-break only — never overrides a category resolved from the text.
  @BuiltValueField(wireName: r'viewpointCategory')
  String? get viewpointCategory;

  /// Companion flow root for viewpointCategory ('income' | 'expense'), mirroring the ADR-0126 list-endpoint invariant. Derived from the session's routed intent (multi-turn) when absent; a first-turn flow-less category hint is dropped — send the flow explicitly.
  @BuiltValueField(wireName: r'viewpointFlow')
  ProcessNlpDtoViewpointFlowEnum? get viewpointFlow;
  // enum viewpointFlowEnum {  income,  expense,  };

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
    if (object.viewpointAccount != null) {
      yield r'viewpointAccount';
      yield serializers.serialize(
        object.viewpointAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewpointCategory != null) {
      yield r'viewpointCategory';
      yield serializers.serialize(
        object.viewpointCategory,
        specifiedType: const FullType(String),
      );
    }
    if (object.viewpointFlow != null) {
      yield r'viewpointFlow';
      yield serializers.serialize(
        object.viewpointFlow,
        specifiedType: const FullType(ProcessNlpDtoViewpointFlowEnum),
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
        case r'viewpointAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewpointAccount = valueDes;
          break;
        case r'viewpointCategory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewpointCategory = valueDes;
          break;
        case r'viewpointFlow':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProcessNlpDtoViewpointFlowEnum),
          ) as ProcessNlpDtoViewpointFlowEnum;
          result.viewpointFlow = valueDes;
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

class ProcessNlpDtoViewpointFlowEnum extends EnumClass {

  /// Companion flow root for viewpointCategory ('income' | 'expense'), mirroring the ADR-0126 list-endpoint invariant. Derived from the session's routed intent (multi-turn) when absent; a first-turn flow-less category hint is dropped — send the flow explicitly.
  @BuiltValueEnumConst(wireName: r'income')
  static const ProcessNlpDtoViewpointFlowEnum income = _$processNlpDtoViewpointFlowEnum_income;
  /// Companion flow root for viewpointCategory ('income' | 'expense'), mirroring the ADR-0126 list-endpoint invariant. Derived from the session's routed intent (multi-turn) when absent; a first-turn flow-less category hint is dropped — send the flow explicitly.
  @BuiltValueEnumConst(wireName: r'expense')
  static const ProcessNlpDtoViewpointFlowEnum expense = _$processNlpDtoViewpointFlowEnum_expense;

  static Serializer<ProcessNlpDtoViewpointFlowEnum> get serializer => _$processNlpDtoViewpointFlowEnumSerializer;

  const ProcessNlpDtoViewpointFlowEnum._(String name): super(name);

  static BuiltSet<ProcessNlpDtoViewpointFlowEnum> get values => _$processNlpDtoViewpointFlowEnumValues;
  static ProcessNlpDtoViewpointFlowEnum valueOf(String name) => _$processNlpDtoViewpointFlowEnumValueOf(name);
}

