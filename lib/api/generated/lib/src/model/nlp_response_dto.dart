//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:firela_api/src/model/nlp_transaction_info_dto.dart';
import 'package:firela_api/src/model/nlp_account_confirmation_data_dto.dart';
import 'package:firela_api/src/model/nlp_parsed_data_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:firela_api/src/model/nlp_default_accounts_dto.dart';
import 'package:firela_api/src/model/nlp_payee_confirmation_data_dto.dart';
import 'package:firela_api/src/model/nlp_suggested_accounts_dto.dart';
import 'package:firela_api/src/model/nlp_duplicate_confirmation_data_dto.dart';
import 'package:firela_api/src/model/nlp_rule_confirmation_data_dto.dart';
import 'package:firela_api/src/model/recurring_match_info_dto.dart';
import 'package:firela_api/src/model/recurring_suggestion_dto.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nlp_response_dto.g.dart';

/// NlpResponseDto
///
/// Properties:
/// * [status] - Response status
/// * [action] - Action taken or requested
/// * [intent] - Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
/// * [assetSubType] - Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
/// * [liabilitySubType] - Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities).
/// * [equitySubType] - Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction.
/// * [paymentSource] - Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\".
/// * [liabilityHint] - Liability account type hint for credit card/BNPL spending (v6.1). Only present when paymentSource is \"liability\". Values: CreditCard, Huabei, Baitiao
/// * [message] - Human-readable message (for ask or error actions). Deprecated: Use messageKey for i18n support.
/// * [messageKey] - i18n message key for frontend translation. Use this instead of message for internationalization support.
/// * [messageParams] - Parameters for message interpolation. Used with messageKey for dynamic values in translated messages.
/// * [sessionId] - Session ID for multi-turn dialogue. Must be included in subsequent requests to continue the conversation.
/// * [waitingFor] - Which slot is waiting for user input
/// * [transaction]
/// * [parsedData]
/// * [duplicateData]
/// * [ruleData]
/// * [accountData]
/// * [payeeData]
/// * [confidence] - Overall confidence score (0-1)
/// * [confidenceThreshold] - Confidence threshold for automatic creation (default: 0.75). When confidence < threshold, action will be \"confirm\" requiring user verification.
/// * [recurringMatch]
/// * [recurringSuggestion]
/// * [suggestedAccounts]
/// * [defaultAccounts]
@BuiltValue()
abstract class NlpResponseDto
    implements Built<NlpResponseDto, NlpResponseDtoBuilder> {
  /// Response status
  @BuiltValueField(wireName: r'status')
  NlpResponseDtoStatusEnum get status;
  // enum statusEnum {  success,  pending,  error,  };

  /// Action taken or requested
  @BuiltValueField(wireName: r'action')
  NlpResponseDtoActionEnum get action;
  // enum actionEnum {  created,  ask,  confirm,  confirm_duplicate,  confirm_rule,  confirm_account,  confirm_payee,  cancel,  };

  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueField(wireName: r'intent')
  NlpResponseDtoIntentEnum? get intent;
  // enum intentEnum {  expense,  asset,  income,  liability,  equity,  };

  /// Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
  @BuiltValueField(wireName: r'assetSubType')
  NlpResponseDtoAssetSubTypeEnum? get assetSubType;
  // enum assetSubTypeEnum {  transfer,  banking,  investment,  };

  /// Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities).
  @BuiltValueField(wireName: r'liabilitySubType')
  NlpResponseDtoLiabilitySubTypeEnum? get liabilitySubType;
  // enum liabilitySubTypeEnum {  borrow,  repay,  };

  /// Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction.
  @BuiltValueField(wireName: r'equitySubType')
  NlpResponseDtoEquitySubTypeEnum? get equitySubType;
  // enum equitySubTypeEnum {  opening,  adjustment,  };

  /// Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\".
  @BuiltValueField(wireName: r'paymentSource')
  NlpResponseDtoPaymentSourceEnum? get paymentSource;
  // enum paymentSourceEnum {  asset,  liability,  };

  /// Liability account type hint for credit card/BNPL spending (v6.1). Only present when paymentSource is \"liability\". Values: CreditCard, Huabei, Baitiao
  @BuiltValueField(wireName: r'liabilityHint')
  String? get liabilityHint;

  /// Human-readable message (for ask or error actions). Deprecated: Use messageKey for i18n support.
  @Deprecated('message has been deprecated')
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// i18n message key for frontend translation. Use this instead of message for internationalization support.
  @BuiltValueField(wireName: r'messageKey')
  String? get messageKey;

  /// Parameters for message interpolation. Used with messageKey for dynamic values in translated messages.
  @BuiltValueField(wireName: r'messageParams')
  JsonObject? get messageParams;

  /// Session ID for multi-turn dialogue. Must be included in subsequent requests to continue the conversation.
  @BuiltValueField(wireName: r'sessionId')
  String? get sessionId;

  /// Which slot is waiting for user input
  @BuiltValueField(wireName: r'waitingFor')
  String? get waitingFor;

  @BuiltValueField(wireName: r'transaction')
  NlpTransactionInfoDto? get transaction;

  @BuiltValueField(wireName: r'parsedData')
  NlpParsedDataDto? get parsedData;

  @BuiltValueField(wireName: r'duplicateData')
  NlpDuplicateConfirmationDataDto? get duplicateData;

  @BuiltValueField(wireName: r'ruleData')
  NlpRuleConfirmationDataDto? get ruleData;

  @BuiltValueField(wireName: r'accountData')
  NlpAccountConfirmationDataDto? get accountData;

  @BuiltValueField(wireName: r'payeeData')
  NlpPayeeConfirmationDataDto? get payeeData;

  /// Overall confidence score (0-1)
  @BuiltValueField(wireName: r'confidence')
  num? get confidence;

  /// Confidence threshold for automatic creation (default: 0.75). When confidence < threshold, action will be \"confirm\" requiring user verification.
  @BuiltValueField(wireName: r'confidenceThreshold')
  num? get confidenceThreshold;

  @BuiltValueField(wireName: r'recurringMatch')
  RecurringMatchInfoDto? get recurringMatch;

  @BuiltValueField(wireName: r'recurringSuggestion')
  RecurringSuggestionDto? get recurringSuggestion;

  @BuiltValueField(wireName: r'suggestedAccounts')
  NlpSuggestedAccountsDto? get suggestedAccounts;

  @BuiltValueField(wireName: r'defaultAccounts')
  NlpDefaultAccountsDto? get defaultAccounts;

  NlpResponseDto._();

  factory NlpResponseDto([void updates(NlpResponseDtoBuilder b)]) =
      _$NlpResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NlpResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NlpResponseDto> get serializer =>
      _$NlpResponseDtoSerializer();
}

class _$NlpResponseDtoSerializer
    implements PrimitiveSerializer<NlpResponseDto> {
  @override
  final Iterable<Type> types = const [NlpResponseDto, _$NlpResponseDto];

  @override
  final String wireName = r'NlpResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NlpResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(NlpResponseDtoStatusEnum),
    );
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(NlpResponseDtoActionEnum),
    );
    if (object.intent != null) {
      yield r'intent';
      yield serializers.serialize(
        object.intent,
        specifiedType: const FullType(NlpResponseDtoIntentEnum),
      );
    }
    if (object.assetSubType != null) {
      yield r'assetSubType';
      yield serializers.serialize(
        object.assetSubType,
        specifiedType: const FullType(NlpResponseDtoAssetSubTypeEnum),
      );
    }
    if (object.liabilitySubType != null) {
      yield r'liabilitySubType';
      yield serializers.serialize(
        object.liabilitySubType,
        specifiedType: const FullType(NlpResponseDtoLiabilitySubTypeEnum),
      );
    }
    if (object.equitySubType != null) {
      yield r'equitySubType';
      yield serializers.serialize(
        object.equitySubType,
        specifiedType: const FullType(NlpResponseDtoEquitySubTypeEnum),
      );
    }
    if (object.paymentSource != null) {
      yield r'paymentSource';
      yield serializers.serialize(
        object.paymentSource,
        specifiedType: const FullType(NlpResponseDtoPaymentSourceEnum),
      );
    }
    if (object.liabilityHint != null) {
      yield r'liabilityHint';
      yield serializers.serialize(
        object.liabilityHint,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageKey != null) {
      yield r'messageKey';
      yield serializers.serialize(
        object.messageKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.messageParams != null) {
      yield r'messageParams';
      yield serializers.serialize(
        object.messageParams,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.sessionId != null) {
      yield r'sessionId';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.waitingFor != null) {
      yield r'waitingFor';
      yield serializers.serialize(
        object.waitingFor,
        specifiedType: const FullType(String),
      );
    }
    if (object.transaction != null) {
      yield r'transaction';
      yield serializers.serialize(
        object.transaction,
        specifiedType: const FullType(NlpTransactionInfoDto),
      );
    }
    if (object.parsedData != null) {
      yield r'parsedData';
      yield serializers.serialize(
        object.parsedData,
        specifiedType: const FullType(NlpParsedDataDto),
      );
    }
    if (object.duplicateData != null) {
      yield r'duplicateData';
      yield serializers.serialize(
        object.duplicateData,
        specifiedType: const FullType(NlpDuplicateConfirmationDataDto),
      );
    }
    if (object.ruleData != null) {
      yield r'ruleData';
      yield serializers.serialize(
        object.ruleData,
        specifiedType: const FullType(NlpRuleConfirmationDataDto),
      );
    }
    if (object.accountData != null) {
      yield r'accountData';
      yield serializers.serialize(
        object.accountData,
        specifiedType: const FullType(NlpAccountConfirmationDataDto),
      );
    }
    if (object.payeeData != null) {
      yield r'payeeData';
      yield serializers.serialize(
        object.payeeData,
        specifiedType: const FullType(NlpPayeeConfirmationDataDto),
      );
    }
    if (object.confidence != null) {
      yield r'confidence';
      yield serializers.serialize(
        object.confidence,
        specifiedType: const FullType(num),
      );
    }
    if (object.confidenceThreshold != null) {
      yield r'confidenceThreshold';
      yield serializers.serialize(
        object.confidenceThreshold,
        specifiedType: const FullType(num),
      );
    }
    if (object.recurringMatch != null) {
      yield r'recurringMatch';
      yield serializers.serialize(
        object.recurringMatch,
        specifiedType: const FullType(RecurringMatchInfoDto),
      );
    }
    if (object.recurringSuggestion != null) {
      yield r'recurringSuggestion';
      yield serializers.serialize(
        object.recurringSuggestion,
        specifiedType: const FullType(RecurringSuggestionDto),
      );
    }
    if (object.suggestedAccounts != null) {
      yield r'suggestedAccounts';
      yield serializers.serialize(
        object.suggestedAccounts,
        specifiedType: const FullType(NlpSuggestedAccountsDto),
      );
    }
    if (object.defaultAccounts != null) {
      yield r'defaultAccounts';
      yield serializers.serialize(
        object.defaultAccounts,
        specifiedType: const FullType(NlpDefaultAccountsDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NlpResponseDto object, {
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
    required NlpResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoStatusEnum),
          ) as NlpResponseDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoActionEnum),
          ) as NlpResponseDtoActionEnum;
          result.action = valueDes;
          break;
        case r'intent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoIntentEnum),
          ) as NlpResponseDtoIntentEnum;
          result.intent = valueDes;
          break;
        case r'assetSubType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoAssetSubTypeEnum),
          ) as NlpResponseDtoAssetSubTypeEnum;
          result.assetSubType = valueDes;
          break;
        case r'liabilitySubType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoLiabilitySubTypeEnum),
          ) as NlpResponseDtoLiabilitySubTypeEnum;
          result.liabilitySubType = valueDes;
          break;
        case r'equitySubType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoEquitySubTypeEnum),
          ) as NlpResponseDtoEquitySubTypeEnum;
          result.equitySubType = valueDes;
          break;
        case r'paymentSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpResponseDtoPaymentSourceEnum),
          ) as NlpResponseDtoPaymentSourceEnum;
          result.paymentSource = valueDes;
          break;
        case r'liabilityHint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.liabilityHint = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'messageKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.messageKey = valueDes;
          break;
        case r'messageParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.messageParams = valueDes;
          break;
        case r'sessionId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'waitingFor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.waitingFor = valueDes;
          break;
        case r'transaction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpTransactionInfoDto),
          ) as NlpTransactionInfoDto;
          result.transaction.replace(valueDes);
          break;
        case r'parsedData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpParsedDataDto),
          ) as NlpParsedDataDto;
          result.parsedData.replace(valueDes);
          break;
        case r'duplicateData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpDuplicateConfirmationDataDto),
          ) as NlpDuplicateConfirmationDataDto;
          result.duplicateData.replace(valueDes);
          break;
        case r'ruleData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpRuleConfirmationDataDto),
          ) as NlpRuleConfirmationDataDto;
          result.ruleData.replace(valueDes);
          break;
        case r'accountData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpAccountConfirmationDataDto),
          ) as NlpAccountConfirmationDataDto;
          result.accountData.replace(valueDes);
          break;
        case r'payeeData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpPayeeConfirmationDataDto),
          ) as NlpPayeeConfirmationDataDto;
          result.payeeData.replace(valueDes);
          break;
        case r'confidence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidence = valueDes;
          break;
        case r'confidenceThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.confidenceThreshold = valueDes;
          break;
        case r'recurringMatch':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecurringMatchInfoDto),
          ) as RecurringMatchInfoDto;
          result.recurringMatch.replace(valueDes);
          break;
        case r'recurringSuggestion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RecurringSuggestionDto),
          ) as RecurringSuggestionDto;
          result.recurringSuggestion.replace(valueDes);
          break;
        case r'suggestedAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpSuggestedAccountsDto),
          ) as NlpSuggestedAccountsDto;
          result.suggestedAccounts.replace(valueDes);
          break;
        case r'defaultAccounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NlpDefaultAccountsDto),
          ) as NlpDefaultAccountsDto;
          result.defaultAccounts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NlpResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NlpResponseDtoBuilder();
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

class NlpResponseDtoStatusEnum extends EnumClass {
  /// Response status
  @BuiltValueEnumConst(wireName: r'success')
  static const NlpResponseDtoStatusEnum success =
      _$nlpResponseDtoStatusEnum_success;

  /// Response status
  @BuiltValueEnumConst(wireName: r'pending')
  static const NlpResponseDtoStatusEnum pending =
      _$nlpResponseDtoStatusEnum_pending;

  /// Response status
  @BuiltValueEnumConst(wireName: r'error', fallback: true)
  static const NlpResponseDtoStatusEnum error =
      _$nlpResponseDtoStatusEnum_error;

  static Serializer<NlpResponseDtoStatusEnum> get serializer =>
      _$nlpResponseDtoStatusEnumSerializer;

  const NlpResponseDtoStatusEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoStatusEnum> get values =>
      _$nlpResponseDtoStatusEnumValues;
  static NlpResponseDtoStatusEnum valueOf(String name) =>
      _$nlpResponseDtoStatusEnumValueOf(name);
}

class NlpResponseDtoActionEnum extends EnumClass {
  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'created')
  static const NlpResponseDtoActionEnum created =
      _$nlpResponseDtoActionEnum_created;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'ask')
  static const NlpResponseDtoActionEnum ask = _$nlpResponseDtoActionEnum_ask;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'confirm')
  static const NlpResponseDtoActionEnum confirm =
      _$nlpResponseDtoActionEnum_confirm;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'confirm_duplicate')
  static const NlpResponseDtoActionEnum confirmDuplicate =
      _$nlpResponseDtoActionEnum_confirmDuplicate;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'confirm_rule')
  static const NlpResponseDtoActionEnum confirmRule =
      _$nlpResponseDtoActionEnum_confirmRule;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'confirm_account')
  static const NlpResponseDtoActionEnum confirmAccount =
      _$nlpResponseDtoActionEnum_confirmAccount;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'confirm_payee')
  static const NlpResponseDtoActionEnum confirmPayee =
      _$nlpResponseDtoActionEnum_confirmPayee;

  /// Action taken or requested
  @BuiltValueEnumConst(wireName: r'cancel', fallback: true)
  static const NlpResponseDtoActionEnum cancel =
      _$nlpResponseDtoActionEnum_cancel;

  static Serializer<NlpResponseDtoActionEnum> get serializer =>
      _$nlpResponseDtoActionEnumSerializer;

  const NlpResponseDtoActionEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoActionEnum> get values =>
      _$nlpResponseDtoActionEnumValues;
  static NlpResponseDtoActionEnum valueOf(String name) =>
      _$nlpResponseDtoActionEnumValueOf(name);
}

class NlpResponseDtoIntentEnum extends EnumClass {
  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueEnumConst(wireName: r'expense')
  static const NlpResponseDtoIntentEnum expense =
      _$nlpResponseDtoIntentEnum_expense;

  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueEnumConst(wireName: r'asset')
  static const NlpResponseDtoIntentEnum asset =
      _$nlpResponseDtoIntentEnum_asset;

  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueEnumConst(wireName: r'income')
  static const NlpResponseDtoIntentEnum income =
      _$nlpResponseDtoIntentEnum_income;

  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueEnumConst(wireName: r'liability')
  static const NlpResponseDtoIntentEnum liability =
      _$nlpResponseDtoIntentEnum_liability;

  /// Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
  @BuiltValueEnumConst(wireName: r'equity', fallback: true)
  static const NlpResponseDtoIntentEnum equity =
      _$nlpResponseDtoIntentEnum_equity;

  static Serializer<NlpResponseDtoIntentEnum> get serializer =>
      _$nlpResponseDtoIntentEnumSerializer;

  const NlpResponseDtoIntentEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoIntentEnum> get values =>
      _$nlpResponseDtoIntentEnumValues;
  static NlpResponseDtoIntentEnum valueOf(String name) =>
      _$nlpResponseDtoIntentEnumValueOf(name);
}

class NlpResponseDtoAssetSubTypeEnum extends EnumClass {
  /// Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
  @BuiltValueEnumConst(wireName: r'transfer')
  static const NlpResponseDtoAssetSubTypeEnum transfer =
      _$nlpResponseDtoAssetSubTypeEnum_transfer;

  /// Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
  @BuiltValueEnumConst(wireName: r'banking')
  static const NlpResponseDtoAssetSubTypeEnum banking =
      _$nlpResponseDtoAssetSubTypeEnum_banking;

  /// Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
  @BuiltValueEnumConst(wireName: r'investment', fallback: true)
  static const NlpResponseDtoAssetSubTypeEnum investment =
      _$nlpResponseDtoAssetSubTypeEnum_investment;

  static Serializer<NlpResponseDtoAssetSubTypeEnum> get serializer =>
      _$nlpResponseDtoAssetSubTypeEnumSerializer;

  const NlpResponseDtoAssetSubTypeEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoAssetSubTypeEnum> get values =>
      _$nlpResponseDtoAssetSubTypeEnumValues;
  static NlpResponseDtoAssetSubTypeEnum valueOf(String name) =>
      _$nlpResponseDtoAssetSubTypeEnumValueOf(name);
}

class NlpResponseDtoLiabilitySubTypeEnum extends EnumClass {
  /// Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities).
  @BuiltValueEnumConst(wireName: r'borrow')
  static const NlpResponseDtoLiabilitySubTypeEnum borrow =
      _$nlpResponseDtoLiabilitySubTypeEnum_borrow;

  /// Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities).
  @BuiltValueEnumConst(wireName: r'repay', fallback: true)
  static const NlpResponseDtoLiabilitySubTypeEnum repay =
      _$nlpResponseDtoLiabilitySubTypeEnum_repay;

  static Serializer<NlpResponseDtoLiabilitySubTypeEnum> get serializer =>
      _$nlpResponseDtoLiabilitySubTypeEnumSerializer;

  const NlpResponseDtoLiabilitySubTypeEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoLiabilitySubTypeEnum> get values =>
      _$nlpResponseDtoLiabilitySubTypeEnumValues;
  static NlpResponseDtoLiabilitySubTypeEnum valueOf(String name) =>
      _$nlpResponseDtoLiabilitySubTypeEnumValueOf(name);
}

class NlpResponseDtoEquitySubTypeEnum extends EnumClass {
  /// Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction.
  @BuiltValueEnumConst(wireName: r'opening')
  static const NlpResponseDtoEquitySubTypeEnum opening =
      _$nlpResponseDtoEquitySubTypeEnum_opening;

  /// Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction.
  @BuiltValueEnumConst(wireName: r'adjustment', fallback: true)
  static const NlpResponseDtoEquitySubTypeEnum adjustment =
      _$nlpResponseDtoEquitySubTypeEnum_adjustment;

  static Serializer<NlpResponseDtoEquitySubTypeEnum> get serializer =>
      _$nlpResponseDtoEquitySubTypeEnumSerializer;

  const NlpResponseDtoEquitySubTypeEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoEquitySubTypeEnum> get values =>
      _$nlpResponseDtoEquitySubTypeEnumValues;
  static NlpResponseDtoEquitySubTypeEnum valueOf(String name) =>
      _$nlpResponseDtoEquitySubTypeEnumValueOf(name);
}

class NlpResponseDtoPaymentSourceEnum extends EnumClass {
  /// Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\".
  @BuiltValueEnumConst(wireName: r'asset')
  static const NlpResponseDtoPaymentSourceEnum asset =
      _$nlpResponseDtoPaymentSourceEnum_asset;

  /// Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\".
  @BuiltValueEnumConst(wireName: r'liability', fallback: true)
  static const NlpResponseDtoPaymentSourceEnum liability =
      _$nlpResponseDtoPaymentSourceEnum_liability;

  static Serializer<NlpResponseDtoPaymentSourceEnum> get serializer =>
      _$nlpResponseDtoPaymentSourceEnumSerializer;

  const NlpResponseDtoPaymentSourceEnum._(String name) : super(name);

  static BuiltSet<NlpResponseDtoPaymentSourceEnum> get values =>
      _$nlpResponseDtoPaymentSourceEnumValues;
  static NlpResponseDtoPaymentSourceEnum valueOf(String name) =>
      _$nlpResponseDtoPaymentSourceEnumValueOf(name);
}
