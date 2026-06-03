// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NlpResponseDtoStatusEnum _$nlpResponseDtoStatusEnum_success =
    const NlpResponseDtoStatusEnum._('success');
const NlpResponseDtoStatusEnum _$nlpResponseDtoStatusEnum_pending =
    const NlpResponseDtoStatusEnum._('pending');
const NlpResponseDtoStatusEnum _$nlpResponseDtoStatusEnum_error =
    const NlpResponseDtoStatusEnum._('error');

NlpResponseDtoStatusEnum _$nlpResponseDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'success':
      return _$nlpResponseDtoStatusEnum_success;
    case 'pending':
      return _$nlpResponseDtoStatusEnum_pending;
    case 'error':
      return _$nlpResponseDtoStatusEnum_error;
    default:
      return _$nlpResponseDtoStatusEnum_error;
  }
}

final BuiltSet<NlpResponseDtoStatusEnum> _$nlpResponseDtoStatusEnumValues =
    new BuiltSet<NlpResponseDtoStatusEnum>(const <NlpResponseDtoStatusEnum>[
  _$nlpResponseDtoStatusEnum_success,
  _$nlpResponseDtoStatusEnum_pending,
  _$nlpResponseDtoStatusEnum_error,
]);

const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_created =
    const NlpResponseDtoActionEnum._('created');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_ask =
    const NlpResponseDtoActionEnum._('ask');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_confirm =
    const NlpResponseDtoActionEnum._('confirm');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_confirmDuplicate =
    const NlpResponseDtoActionEnum._('confirmDuplicate');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_confirmRule =
    const NlpResponseDtoActionEnum._('confirmRule');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_confirmAccount =
    const NlpResponseDtoActionEnum._('confirmAccount');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_confirmPayee =
    const NlpResponseDtoActionEnum._('confirmPayee');
const NlpResponseDtoActionEnum _$nlpResponseDtoActionEnum_cancel =
    const NlpResponseDtoActionEnum._('cancel');

NlpResponseDtoActionEnum _$nlpResponseDtoActionEnumValueOf(String name) {
  switch (name) {
    case 'created':
      return _$nlpResponseDtoActionEnum_created;
    case 'ask':
      return _$nlpResponseDtoActionEnum_ask;
    case 'confirm':
      return _$nlpResponseDtoActionEnum_confirm;
    case 'confirmDuplicate':
      return _$nlpResponseDtoActionEnum_confirmDuplicate;
    case 'confirmRule':
      return _$nlpResponseDtoActionEnum_confirmRule;
    case 'confirmAccount':
      return _$nlpResponseDtoActionEnum_confirmAccount;
    case 'confirmPayee':
      return _$nlpResponseDtoActionEnum_confirmPayee;
    case 'cancel':
      return _$nlpResponseDtoActionEnum_cancel;
    default:
      return _$nlpResponseDtoActionEnum_cancel;
  }
}

final BuiltSet<NlpResponseDtoActionEnum> _$nlpResponseDtoActionEnumValues =
    new BuiltSet<NlpResponseDtoActionEnum>(const <NlpResponseDtoActionEnum>[
  _$nlpResponseDtoActionEnum_created,
  _$nlpResponseDtoActionEnum_ask,
  _$nlpResponseDtoActionEnum_confirm,
  _$nlpResponseDtoActionEnum_confirmDuplicate,
  _$nlpResponseDtoActionEnum_confirmRule,
  _$nlpResponseDtoActionEnum_confirmAccount,
  _$nlpResponseDtoActionEnum_confirmPayee,
  _$nlpResponseDtoActionEnum_cancel,
]);

const NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnum_expense =
    const NlpResponseDtoIntentEnum._('expense');
const NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnum_asset =
    const NlpResponseDtoIntentEnum._('asset');
const NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnum_income =
    const NlpResponseDtoIntentEnum._('income');
const NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnum_liability =
    const NlpResponseDtoIntentEnum._('liability');
const NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnum_equity =
    const NlpResponseDtoIntentEnum._('equity');

NlpResponseDtoIntentEnum _$nlpResponseDtoIntentEnumValueOf(String name) {
  switch (name) {
    case 'expense':
      return _$nlpResponseDtoIntentEnum_expense;
    case 'asset':
      return _$nlpResponseDtoIntentEnum_asset;
    case 'income':
      return _$nlpResponseDtoIntentEnum_income;
    case 'liability':
      return _$nlpResponseDtoIntentEnum_liability;
    case 'equity':
      return _$nlpResponseDtoIntentEnum_equity;
    default:
      return _$nlpResponseDtoIntentEnum_equity;
  }
}

final BuiltSet<NlpResponseDtoIntentEnum> _$nlpResponseDtoIntentEnumValues =
    new BuiltSet<NlpResponseDtoIntentEnum>(const <NlpResponseDtoIntentEnum>[
  _$nlpResponseDtoIntentEnum_expense,
  _$nlpResponseDtoIntentEnum_asset,
  _$nlpResponseDtoIntentEnum_income,
  _$nlpResponseDtoIntentEnum_liability,
  _$nlpResponseDtoIntentEnum_equity,
]);

const NlpResponseDtoAssetSubTypeEnum _$nlpResponseDtoAssetSubTypeEnum_transfer =
    const NlpResponseDtoAssetSubTypeEnum._('transfer');
const NlpResponseDtoAssetSubTypeEnum _$nlpResponseDtoAssetSubTypeEnum_banking =
    const NlpResponseDtoAssetSubTypeEnum._('banking');
const NlpResponseDtoAssetSubTypeEnum
    _$nlpResponseDtoAssetSubTypeEnum_investment =
    const NlpResponseDtoAssetSubTypeEnum._('investment');

NlpResponseDtoAssetSubTypeEnum _$nlpResponseDtoAssetSubTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'transfer':
      return _$nlpResponseDtoAssetSubTypeEnum_transfer;
    case 'banking':
      return _$nlpResponseDtoAssetSubTypeEnum_banking;
    case 'investment':
      return _$nlpResponseDtoAssetSubTypeEnum_investment;
    default:
      return _$nlpResponseDtoAssetSubTypeEnum_investment;
  }
}

final BuiltSet<NlpResponseDtoAssetSubTypeEnum>
    _$nlpResponseDtoAssetSubTypeEnumValues = new BuiltSet<
        NlpResponseDtoAssetSubTypeEnum>(const <NlpResponseDtoAssetSubTypeEnum>[
  _$nlpResponseDtoAssetSubTypeEnum_transfer,
  _$nlpResponseDtoAssetSubTypeEnum_banking,
  _$nlpResponseDtoAssetSubTypeEnum_investment,
]);

const NlpResponseDtoLiabilitySubTypeEnum
    _$nlpResponseDtoLiabilitySubTypeEnum_borrow =
    const NlpResponseDtoLiabilitySubTypeEnum._('borrow');
const NlpResponseDtoLiabilitySubTypeEnum
    _$nlpResponseDtoLiabilitySubTypeEnum_repay =
    const NlpResponseDtoLiabilitySubTypeEnum._('repay');

NlpResponseDtoLiabilitySubTypeEnum _$nlpResponseDtoLiabilitySubTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'borrow':
      return _$nlpResponseDtoLiabilitySubTypeEnum_borrow;
    case 'repay':
      return _$nlpResponseDtoLiabilitySubTypeEnum_repay;
    default:
      return _$nlpResponseDtoLiabilitySubTypeEnum_repay;
  }
}

final BuiltSet<NlpResponseDtoLiabilitySubTypeEnum>
    _$nlpResponseDtoLiabilitySubTypeEnumValues = new BuiltSet<
        NlpResponseDtoLiabilitySubTypeEnum>(const <NlpResponseDtoLiabilitySubTypeEnum>[
  _$nlpResponseDtoLiabilitySubTypeEnum_borrow,
  _$nlpResponseDtoLiabilitySubTypeEnum_repay,
]);

const NlpResponseDtoEquitySubTypeEnum
    _$nlpResponseDtoEquitySubTypeEnum_opening =
    const NlpResponseDtoEquitySubTypeEnum._('opening');
const NlpResponseDtoEquitySubTypeEnum
    _$nlpResponseDtoEquitySubTypeEnum_adjustment =
    const NlpResponseDtoEquitySubTypeEnum._('adjustment');

NlpResponseDtoEquitySubTypeEnum _$nlpResponseDtoEquitySubTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'opening':
      return _$nlpResponseDtoEquitySubTypeEnum_opening;
    case 'adjustment':
      return _$nlpResponseDtoEquitySubTypeEnum_adjustment;
    default:
      return _$nlpResponseDtoEquitySubTypeEnum_adjustment;
  }
}

final BuiltSet<NlpResponseDtoEquitySubTypeEnum>
    _$nlpResponseDtoEquitySubTypeEnumValues = new BuiltSet<
        NlpResponseDtoEquitySubTypeEnum>(const <NlpResponseDtoEquitySubTypeEnum>[
  _$nlpResponseDtoEquitySubTypeEnum_opening,
  _$nlpResponseDtoEquitySubTypeEnum_adjustment,
]);

const NlpResponseDtoPaymentSourceEnum _$nlpResponseDtoPaymentSourceEnum_asset =
    const NlpResponseDtoPaymentSourceEnum._('asset');
const NlpResponseDtoPaymentSourceEnum
    _$nlpResponseDtoPaymentSourceEnum_liability =
    const NlpResponseDtoPaymentSourceEnum._('liability');

NlpResponseDtoPaymentSourceEnum _$nlpResponseDtoPaymentSourceEnumValueOf(
    String name) {
  switch (name) {
    case 'asset':
      return _$nlpResponseDtoPaymentSourceEnum_asset;
    case 'liability':
      return _$nlpResponseDtoPaymentSourceEnum_liability;
    default:
      return _$nlpResponseDtoPaymentSourceEnum_liability;
  }
}

final BuiltSet<NlpResponseDtoPaymentSourceEnum>
    _$nlpResponseDtoPaymentSourceEnumValues = new BuiltSet<
        NlpResponseDtoPaymentSourceEnum>(const <NlpResponseDtoPaymentSourceEnum>[
  _$nlpResponseDtoPaymentSourceEnum_asset,
  _$nlpResponseDtoPaymentSourceEnum_liability,
]);

Serializer<NlpResponseDtoStatusEnum> _$nlpResponseDtoStatusEnumSerializer =
    new _$NlpResponseDtoStatusEnumSerializer();
Serializer<NlpResponseDtoActionEnum> _$nlpResponseDtoActionEnumSerializer =
    new _$NlpResponseDtoActionEnumSerializer();
Serializer<NlpResponseDtoIntentEnum> _$nlpResponseDtoIntentEnumSerializer =
    new _$NlpResponseDtoIntentEnumSerializer();
Serializer<NlpResponseDtoAssetSubTypeEnum>
    _$nlpResponseDtoAssetSubTypeEnumSerializer =
    new _$NlpResponseDtoAssetSubTypeEnumSerializer();
Serializer<NlpResponseDtoLiabilitySubTypeEnum>
    _$nlpResponseDtoLiabilitySubTypeEnumSerializer =
    new _$NlpResponseDtoLiabilitySubTypeEnumSerializer();
Serializer<NlpResponseDtoEquitySubTypeEnum>
    _$nlpResponseDtoEquitySubTypeEnumSerializer =
    new _$NlpResponseDtoEquitySubTypeEnumSerializer();
Serializer<NlpResponseDtoPaymentSourceEnum>
    _$nlpResponseDtoPaymentSourceEnumSerializer =
    new _$NlpResponseDtoPaymentSourceEnumSerializer();

class _$NlpResponseDtoStatusEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'success': 'success',
    'pending': 'pending',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'success': 'success',
    'pending': 'pending',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoStatusEnum];
  @override
  final String wireName = 'NlpResponseDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, NlpResponseDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoActionEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoActionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'created': 'created',
    'ask': 'ask',
    'confirm': 'confirm',
    'confirmDuplicate': 'confirm_duplicate',
    'confirmRule': 'confirm_rule',
    'confirmAccount': 'confirm_account',
    'confirmPayee': 'confirm_payee',
    'cancel': 'cancel',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'created': 'created',
    'ask': 'ask',
    'confirm': 'confirm',
    'confirm_duplicate': 'confirmDuplicate',
    'confirm_rule': 'confirmRule',
    'confirm_account': 'confirmAccount',
    'confirm_payee': 'confirmPayee',
    'cancel': 'cancel',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoActionEnum];
  @override
  final String wireName = 'NlpResponseDtoActionEnum';

  @override
  Object serialize(Serializers serializers, NlpResponseDtoActionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoActionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoActionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoIntentEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoIntentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'expense': 'expense',
    'asset': 'asset',
    'income': 'income',
    'liability': 'liability',
    'equity': 'equity',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'expense': 'expense',
    'asset': 'asset',
    'income': 'income',
    'liability': 'liability',
    'equity': 'equity',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoIntentEnum];
  @override
  final String wireName = 'NlpResponseDtoIntentEnum';

  @override
  Object serialize(Serializers serializers, NlpResponseDtoIntentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoIntentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoIntentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoAssetSubTypeEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoAssetSubTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'transfer': 'transfer',
    'banking': 'banking',
    'investment': 'investment',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'transfer': 'transfer',
    'banking': 'banking',
    'investment': 'investment',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoAssetSubTypeEnum];
  @override
  final String wireName = 'NlpResponseDtoAssetSubTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NlpResponseDtoAssetSubTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoAssetSubTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoAssetSubTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoLiabilitySubTypeEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoLiabilitySubTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'borrow': 'borrow',
    'repay': 'repay',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'borrow': 'borrow',
    'repay': 'repay',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoLiabilitySubTypeEnum];
  @override
  final String wireName = 'NlpResponseDtoLiabilitySubTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NlpResponseDtoLiabilitySubTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoLiabilitySubTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoLiabilitySubTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoEquitySubTypeEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoEquitySubTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'opening': 'opening',
    'adjustment': 'adjustment',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'opening': 'opening',
    'adjustment': 'adjustment',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoEquitySubTypeEnum];
  @override
  final String wireName = 'NlpResponseDtoEquitySubTypeEnum';

  @override
  Object serialize(
          Serializers serializers, NlpResponseDtoEquitySubTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoEquitySubTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoEquitySubTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDtoPaymentSourceEnumSerializer
    implements PrimitiveSerializer<NlpResponseDtoPaymentSourceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'asset': 'asset',
    'liability': 'liability',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'asset': 'asset',
    'liability': 'liability',
  };

  @override
  final Iterable<Type> types = const <Type>[NlpResponseDtoPaymentSourceEnum];
  @override
  final String wireName = 'NlpResponseDtoPaymentSourceEnum';

  @override
  Object serialize(
          Serializers serializers, NlpResponseDtoPaymentSourceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NlpResponseDtoPaymentSourceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NlpResponseDtoPaymentSourceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NlpResponseDto extends NlpResponseDto {
  @override
  final NlpResponseDtoStatusEnum status;
  @override
  final NlpResponseDtoActionEnum action;
  @override
  final NlpResponseDtoIntentEnum? intent;
  @override
  final NlpResponseDtoAssetSubTypeEnum? assetSubType;
  @override
  final NlpResponseDtoLiabilitySubTypeEnum? liabilitySubType;
  @override
  final NlpResponseDtoEquitySubTypeEnum? equitySubType;
  @override
  final NlpResponseDtoPaymentSourceEnum? paymentSource;
  @override
  final String? liabilityHint;
  @override
  final String? message;
  @override
  final String? messageKey;
  @override
  final JsonObject? messageParams;
  @override
  final String? sessionId;
  @override
  final String? waitingFor;
  @override
  final NlpTransactionInfoDto? transaction;
  @override
  final NlpParsedDataDto? parsedData;
  @override
  final NlpDuplicateConfirmationDataDto? duplicateData;
  @override
  final NlpRuleConfirmationDataDto? ruleData;
  @override
  final NlpAccountConfirmationDataDto? accountData;
  @override
  final NlpPayeeConfirmationDataDto? payeeData;
  @override
  final num? confidence;
  @override
  final num? confidenceThreshold;
  @override
  final RecurringMatchInfoDto? recurringMatch;
  @override
  final RecurringSuggestionDto? recurringSuggestion;
  @override
  final NlpSuggestedAccountsDto? suggestedAccounts;
  @override
  final NlpDefaultAccountsDto? defaultAccounts;

  factory _$NlpResponseDto([void Function(NlpResponseDtoBuilder)? updates]) =>
      (new NlpResponseDtoBuilder()..update(updates))._build();

  _$NlpResponseDto._(
      {required this.status,
      required this.action,
      this.intent,
      this.assetSubType,
      this.liabilitySubType,
      this.equitySubType,
      this.paymentSource,
      this.liabilityHint,
      this.message,
      this.messageKey,
      this.messageParams,
      this.sessionId,
      this.waitingFor,
      this.transaction,
      this.parsedData,
      this.duplicateData,
      this.ruleData,
      this.accountData,
      this.payeeData,
      this.confidence,
      this.confidenceThreshold,
      this.recurringMatch,
      this.recurringSuggestion,
      this.suggestedAccounts,
      this.defaultAccounts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(status, r'NlpResponseDto', 'status');
    BuiltValueNullFieldError.checkNotNull(action, r'NlpResponseDto', 'action');
  }

  @override
  NlpResponseDto rebuild(void Function(NlpResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpResponseDtoBuilder toBuilder() =>
      new NlpResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpResponseDto &&
        status == other.status &&
        action == other.action &&
        intent == other.intent &&
        assetSubType == other.assetSubType &&
        liabilitySubType == other.liabilitySubType &&
        equitySubType == other.equitySubType &&
        paymentSource == other.paymentSource &&
        liabilityHint == other.liabilityHint &&
        message == other.message &&
        messageKey == other.messageKey &&
        messageParams == other.messageParams &&
        sessionId == other.sessionId &&
        waitingFor == other.waitingFor &&
        transaction == other.transaction &&
        parsedData == other.parsedData &&
        duplicateData == other.duplicateData &&
        ruleData == other.ruleData &&
        accountData == other.accountData &&
        payeeData == other.payeeData &&
        confidence == other.confidence &&
        confidenceThreshold == other.confidenceThreshold &&
        recurringMatch == other.recurringMatch &&
        recurringSuggestion == other.recurringSuggestion &&
        suggestedAccounts == other.suggestedAccounts &&
        defaultAccounts == other.defaultAccounts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, intent.hashCode);
    _$hash = $jc(_$hash, assetSubType.hashCode);
    _$hash = $jc(_$hash, liabilitySubType.hashCode);
    _$hash = $jc(_$hash, equitySubType.hashCode);
    _$hash = $jc(_$hash, paymentSource.hashCode);
    _$hash = $jc(_$hash, liabilityHint.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, messageKey.hashCode);
    _$hash = $jc(_$hash, messageParams.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, waitingFor.hashCode);
    _$hash = $jc(_$hash, transaction.hashCode);
    _$hash = $jc(_$hash, parsedData.hashCode);
    _$hash = $jc(_$hash, duplicateData.hashCode);
    _$hash = $jc(_$hash, ruleData.hashCode);
    _$hash = $jc(_$hash, accountData.hashCode);
    _$hash = $jc(_$hash, payeeData.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, confidenceThreshold.hashCode);
    _$hash = $jc(_$hash, recurringMatch.hashCode);
    _$hash = $jc(_$hash, recurringSuggestion.hashCode);
    _$hash = $jc(_$hash, suggestedAccounts.hashCode);
    _$hash = $jc(_$hash, defaultAccounts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpResponseDto')
          ..add('status', status)
          ..add('action', action)
          ..add('intent', intent)
          ..add('assetSubType', assetSubType)
          ..add('liabilitySubType', liabilitySubType)
          ..add('equitySubType', equitySubType)
          ..add('paymentSource', paymentSource)
          ..add('liabilityHint', liabilityHint)
          ..add('message', message)
          ..add('messageKey', messageKey)
          ..add('messageParams', messageParams)
          ..add('sessionId', sessionId)
          ..add('waitingFor', waitingFor)
          ..add('transaction', transaction)
          ..add('parsedData', parsedData)
          ..add('duplicateData', duplicateData)
          ..add('ruleData', ruleData)
          ..add('accountData', accountData)
          ..add('payeeData', payeeData)
          ..add('confidence', confidence)
          ..add('confidenceThreshold', confidenceThreshold)
          ..add('recurringMatch', recurringMatch)
          ..add('recurringSuggestion', recurringSuggestion)
          ..add('suggestedAccounts', suggestedAccounts)
          ..add('defaultAccounts', defaultAccounts))
        .toString();
  }
}

class NlpResponseDtoBuilder
    implements Builder<NlpResponseDto, NlpResponseDtoBuilder> {
  _$NlpResponseDto? _$v;

  NlpResponseDtoStatusEnum? _status;
  NlpResponseDtoStatusEnum? get status => _$this._status;
  set status(NlpResponseDtoStatusEnum? status) => _$this._status = status;

  NlpResponseDtoActionEnum? _action;
  NlpResponseDtoActionEnum? get action => _$this._action;
  set action(NlpResponseDtoActionEnum? action) => _$this._action = action;

  NlpResponseDtoIntentEnum? _intent;
  NlpResponseDtoIntentEnum? get intent => _$this._intent;
  set intent(NlpResponseDtoIntentEnum? intent) => _$this._intent = intent;

  NlpResponseDtoAssetSubTypeEnum? _assetSubType;
  NlpResponseDtoAssetSubTypeEnum? get assetSubType => _$this._assetSubType;
  set assetSubType(NlpResponseDtoAssetSubTypeEnum? assetSubType) =>
      _$this._assetSubType = assetSubType;

  NlpResponseDtoLiabilitySubTypeEnum? _liabilitySubType;
  NlpResponseDtoLiabilitySubTypeEnum? get liabilitySubType =>
      _$this._liabilitySubType;
  set liabilitySubType(NlpResponseDtoLiabilitySubTypeEnum? liabilitySubType) =>
      _$this._liabilitySubType = liabilitySubType;

  NlpResponseDtoEquitySubTypeEnum? _equitySubType;
  NlpResponseDtoEquitySubTypeEnum? get equitySubType => _$this._equitySubType;
  set equitySubType(NlpResponseDtoEquitySubTypeEnum? equitySubType) =>
      _$this._equitySubType = equitySubType;

  NlpResponseDtoPaymentSourceEnum? _paymentSource;
  NlpResponseDtoPaymentSourceEnum? get paymentSource => _$this._paymentSource;
  set paymentSource(NlpResponseDtoPaymentSourceEnum? paymentSource) =>
      _$this._paymentSource = paymentSource;

  String? _liabilityHint;
  String? get liabilityHint => _$this._liabilityHint;
  set liabilityHint(String? liabilityHint) =>
      _$this._liabilityHint = liabilityHint;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _messageKey;
  String? get messageKey => _$this._messageKey;
  set messageKey(String? messageKey) => _$this._messageKey = messageKey;

  JsonObject? _messageParams;
  JsonObject? get messageParams => _$this._messageParams;
  set messageParams(JsonObject? messageParams) =>
      _$this._messageParams = messageParams;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _waitingFor;
  String? get waitingFor => _$this._waitingFor;
  set waitingFor(String? waitingFor) => _$this._waitingFor = waitingFor;

  NlpTransactionInfoDtoBuilder? _transaction;
  NlpTransactionInfoDtoBuilder get transaction =>
      _$this._transaction ??= new NlpTransactionInfoDtoBuilder();
  set transaction(NlpTransactionInfoDtoBuilder? transaction) =>
      _$this._transaction = transaction;

  NlpParsedDataDtoBuilder? _parsedData;
  NlpParsedDataDtoBuilder get parsedData =>
      _$this._parsedData ??= new NlpParsedDataDtoBuilder();
  set parsedData(NlpParsedDataDtoBuilder? parsedData) =>
      _$this._parsedData = parsedData;

  NlpDuplicateConfirmationDataDtoBuilder? _duplicateData;
  NlpDuplicateConfirmationDataDtoBuilder get duplicateData =>
      _$this._duplicateData ??= new NlpDuplicateConfirmationDataDtoBuilder();
  set duplicateData(NlpDuplicateConfirmationDataDtoBuilder? duplicateData) =>
      _$this._duplicateData = duplicateData;

  NlpRuleConfirmationDataDtoBuilder? _ruleData;
  NlpRuleConfirmationDataDtoBuilder get ruleData =>
      _$this._ruleData ??= new NlpRuleConfirmationDataDtoBuilder();
  set ruleData(NlpRuleConfirmationDataDtoBuilder? ruleData) =>
      _$this._ruleData = ruleData;

  NlpAccountConfirmationDataDtoBuilder? _accountData;
  NlpAccountConfirmationDataDtoBuilder get accountData =>
      _$this._accountData ??= new NlpAccountConfirmationDataDtoBuilder();
  set accountData(NlpAccountConfirmationDataDtoBuilder? accountData) =>
      _$this._accountData = accountData;

  NlpPayeeConfirmationDataDtoBuilder? _payeeData;
  NlpPayeeConfirmationDataDtoBuilder get payeeData =>
      _$this._payeeData ??= new NlpPayeeConfirmationDataDtoBuilder();
  set payeeData(NlpPayeeConfirmationDataDtoBuilder? payeeData) =>
      _$this._payeeData = payeeData;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  num? _confidenceThreshold;
  num? get confidenceThreshold => _$this._confidenceThreshold;
  set confidenceThreshold(num? confidenceThreshold) =>
      _$this._confidenceThreshold = confidenceThreshold;

  RecurringMatchInfoDtoBuilder? _recurringMatch;
  RecurringMatchInfoDtoBuilder get recurringMatch =>
      _$this._recurringMatch ??= new RecurringMatchInfoDtoBuilder();
  set recurringMatch(RecurringMatchInfoDtoBuilder? recurringMatch) =>
      _$this._recurringMatch = recurringMatch;

  RecurringSuggestionDtoBuilder? _recurringSuggestion;
  RecurringSuggestionDtoBuilder get recurringSuggestion =>
      _$this._recurringSuggestion ??= new RecurringSuggestionDtoBuilder();
  set recurringSuggestion(RecurringSuggestionDtoBuilder? recurringSuggestion) =>
      _$this._recurringSuggestion = recurringSuggestion;

  NlpSuggestedAccountsDtoBuilder? _suggestedAccounts;
  NlpSuggestedAccountsDtoBuilder get suggestedAccounts =>
      _$this._suggestedAccounts ??= new NlpSuggestedAccountsDtoBuilder();
  set suggestedAccounts(NlpSuggestedAccountsDtoBuilder? suggestedAccounts) =>
      _$this._suggestedAccounts = suggestedAccounts;

  NlpDefaultAccountsDtoBuilder? _defaultAccounts;
  NlpDefaultAccountsDtoBuilder get defaultAccounts =>
      _$this._defaultAccounts ??= new NlpDefaultAccountsDtoBuilder();
  set defaultAccounts(NlpDefaultAccountsDtoBuilder? defaultAccounts) =>
      _$this._defaultAccounts = defaultAccounts;

  NlpResponseDtoBuilder() {
    NlpResponseDto._defaults(this);
  }

  NlpResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _action = $v.action;
      _intent = $v.intent;
      _assetSubType = $v.assetSubType;
      _liabilitySubType = $v.liabilitySubType;
      _equitySubType = $v.equitySubType;
      _paymentSource = $v.paymentSource;
      _liabilityHint = $v.liabilityHint;
      _message = $v.message;
      _messageKey = $v.messageKey;
      _messageParams = $v.messageParams;
      _sessionId = $v.sessionId;
      _waitingFor = $v.waitingFor;
      _transaction = $v.transaction?.toBuilder();
      _parsedData = $v.parsedData?.toBuilder();
      _duplicateData = $v.duplicateData?.toBuilder();
      _ruleData = $v.ruleData?.toBuilder();
      _accountData = $v.accountData?.toBuilder();
      _payeeData = $v.payeeData?.toBuilder();
      _confidence = $v.confidence;
      _confidenceThreshold = $v.confidenceThreshold;
      _recurringMatch = $v.recurringMatch?.toBuilder();
      _recurringSuggestion = $v.recurringSuggestion?.toBuilder();
      _suggestedAccounts = $v.suggestedAccounts?.toBuilder();
      _defaultAccounts = $v.defaultAccounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpResponseDto;
  }

  @override
  void update(void Function(NlpResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpResponseDto build() => _build();

  _$NlpResponseDto _build() {
    _$NlpResponseDto _$result;
    try {
      _$result = _$v ??
          new _$NlpResponseDto._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'NlpResponseDto', 'status'),
              action: BuiltValueNullFieldError.checkNotNull(
                  action, r'NlpResponseDto', 'action'),
              intent: intent,
              assetSubType: assetSubType,
              liabilitySubType: liabilitySubType,
              equitySubType: equitySubType,
              paymentSource: paymentSource,
              liabilityHint: liabilityHint,
              message: message,
              messageKey: messageKey,
              messageParams: messageParams,
              sessionId: sessionId,
              waitingFor: waitingFor,
              transaction: _transaction?.build(),
              parsedData: _parsedData?.build(),
              duplicateData: _duplicateData?.build(),
              ruleData: _ruleData?.build(),
              accountData: _accountData?.build(),
              payeeData: _payeeData?.build(),
              confidence: confidence,
              confidenceThreshold: confidenceThreshold,
              recurringMatch: _recurringMatch?.build(),
              recurringSuggestion: _recurringSuggestion?.build(),
              suggestedAccounts: _suggestedAccounts?.build(),
              defaultAccounts: _defaultAccounts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transaction';
        _transaction?.build();
        _$failedField = 'parsedData';
        _parsedData?.build();
        _$failedField = 'duplicateData';
        _duplicateData?.build();
        _$failedField = 'ruleData';
        _ruleData?.build();
        _$failedField = 'accountData';
        _accountData?.build();
        _$failedField = 'payeeData';
        _payeeData?.build();

        _$failedField = 'recurringMatch';
        _recurringMatch?.build();
        _$failedField = 'recurringSuggestion';
        _recurringSuggestion?.build();
        _$failedField = 'suggestedAccounts';
        _suggestedAccounts?.build();
        _$failedField = 'defaultAccounts';
        _defaultAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NlpResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
