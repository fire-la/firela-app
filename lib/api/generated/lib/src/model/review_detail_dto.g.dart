// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_detail_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnum_DUPLICATE =
    const ReviewDetailDtoTypeEnum._('DUPLICATE');
const ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnum_RULE_MATCH =
    const ReviewDetailDtoTypeEnum._('RULE_MATCH');
const ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnum_PAYEE_MATCH =
    const ReviewDetailDtoTypeEnum._('PAYEE_MATCH');
const ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnum_ACCOUNT_VALIDATION =
    const ReviewDetailDtoTypeEnum._('ACCOUNT_VALIDATION');
const ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnum_PIPELINE_ERROR =
    const ReviewDetailDtoTypeEnum._('PIPELINE_ERROR');

ReviewDetailDtoTypeEnum _$reviewDetailDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'DUPLICATE':
      return _$reviewDetailDtoTypeEnum_DUPLICATE;
    case 'RULE_MATCH':
      return _$reviewDetailDtoTypeEnum_RULE_MATCH;
    case 'PAYEE_MATCH':
      return _$reviewDetailDtoTypeEnum_PAYEE_MATCH;
    case 'ACCOUNT_VALIDATION':
      return _$reviewDetailDtoTypeEnum_ACCOUNT_VALIDATION;
    case 'PIPELINE_ERROR':
      return _$reviewDetailDtoTypeEnum_PIPELINE_ERROR;
    default:
      return _$reviewDetailDtoTypeEnum_PIPELINE_ERROR;
  }
}

final BuiltSet<ReviewDetailDtoTypeEnum> _$reviewDetailDtoTypeEnumValues =
    new BuiltSet<ReviewDetailDtoTypeEnum>(const <ReviewDetailDtoTypeEnum>[
  _$reviewDetailDtoTypeEnum_DUPLICATE,
  _$reviewDetailDtoTypeEnum_RULE_MATCH,
  _$reviewDetailDtoTypeEnum_PAYEE_MATCH,
  _$reviewDetailDtoTypeEnum_ACCOUNT_VALIDATION,
  _$reviewDetailDtoTypeEnum_PIPELINE_ERROR,
]);

const ReviewDetailDtoStatusEnum _$reviewDetailDtoStatusEnum_PENDING =
    const ReviewDetailDtoStatusEnum._('PENDING');
const ReviewDetailDtoStatusEnum _$reviewDetailDtoStatusEnum_RESOLVED =
    const ReviewDetailDtoStatusEnum._('RESOLVED');
const ReviewDetailDtoStatusEnum _$reviewDetailDtoStatusEnum_EXPIRED =
    const ReviewDetailDtoStatusEnum._('EXPIRED');
const ReviewDetailDtoStatusEnum _$reviewDetailDtoStatusEnum_CANCELLED =
    const ReviewDetailDtoStatusEnum._('CANCELLED');

ReviewDetailDtoStatusEnum _$reviewDetailDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$reviewDetailDtoStatusEnum_PENDING;
    case 'RESOLVED':
      return _$reviewDetailDtoStatusEnum_RESOLVED;
    case 'EXPIRED':
      return _$reviewDetailDtoStatusEnum_EXPIRED;
    case 'CANCELLED':
      return _$reviewDetailDtoStatusEnum_CANCELLED;
    default:
      return _$reviewDetailDtoStatusEnum_CANCELLED;
  }
}

final BuiltSet<ReviewDetailDtoStatusEnum> _$reviewDetailDtoStatusEnumValues =
    new BuiltSet<ReviewDetailDtoStatusEnum>(const <ReviewDetailDtoStatusEnum>[
  _$reviewDetailDtoStatusEnum_PENDING,
  _$reviewDetailDtoStatusEnum_RESOLVED,
  _$reviewDetailDtoStatusEnum_EXPIRED,
  _$reviewDetailDtoStatusEnum_CANCELLED,
]);

const ReviewDetailDtoConfidenceLevelEnum
    _$reviewDetailDtoConfidenceLevelEnum_HIGH =
    const ReviewDetailDtoConfidenceLevelEnum._('HIGH');
const ReviewDetailDtoConfidenceLevelEnum
    _$reviewDetailDtoConfidenceLevelEnum_MEDIUM =
    const ReviewDetailDtoConfidenceLevelEnum._('MEDIUM');
const ReviewDetailDtoConfidenceLevelEnum
    _$reviewDetailDtoConfidenceLevelEnum_LOW =
    const ReviewDetailDtoConfidenceLevelEnum._('LOW');

ReviewDetailDtoConfidenceLevelEnum _$reviewDetailDtoConfidenceLevelEnumValueOf(
    String name) {
  switch (name) {
    case 'HIGH':
      return _$reviewDetailDtoConfidenceLevelEnum_HIGH;
    case 'MEDIUM':
      return _$reviewDetailDtoConfidenceLevelEnum_MEDIUM;
    case 'LOW':
      return _$reviewDetailDtoConfidenceLevelEnum_LOW;
    default:
      return _$reviewDetailDtoConfidenceLevelEnum_LOW;
  }
}

final BuiltSet<ReviewDetailDtoConfidenceLevelEnum>
    _$reviewDetailDtoConfidenceLevelEnumValues = new BuiltSet<
        ReviewDetailDtoConfidenceLevelEnum>(const <ReviewDetailDtoConfidenceLevelEnum>[
  _$reviewDetailDtoConfidenceLevelEnum_HIGH,
  _$reviewDetailDtoConfidenceLevelEnum_MEDIUM,
  _$reviewDetailDtoConfidenceLevelEnum_LOW,
]);

Serializer<ReviewDetailDtoTypeEnum> _$reviewDetailDtoTypeEnumSerializer =
    new _$ReviewDetailDtoTypeEnumSerializer();
Serializer<ReviewDetailDtoStatusEnum> _$reviewDetailDtoStatusEnumSerializer =
    new _$ReviewDetailDtoStatusEnumSerializer();
Serializer<ReviewDetailDtoConfidenceLevelEnum>
    _$reviewDetailDtoConfidenceLevelEnumSerializer =
    new _$ReviewDetailDtoConfidenceLevelEnumSerializer();

class _$ReviewDetailDtoTypeEnumSerializer
    implements PrimitiveSerializer<ReviewDetailDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DUPLICATE': 'DUPLICATE',
    'RULE_MATCH': 'RULE_MATCH',
    'PAYEE_MATCH': 'PAYEE_MATCH',
    'ACCOUNT_VALIDATION': 'ACCOUNT_VALIDATION',
    'PIPELINE_ERROR': 'PIPELINE_ERROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DUPLICATE': 'DUPLICATE',
    'RULE_MATCH': 'RULE_MATCH',
    'PAYEE_MATCH': 'PAYEE_MATCH',
    'ACCOUNT_VALIDATION': 'ACCOUNT_VALIDATION',
    'PIPELINE_ERROR': 'PIPELINE_ERROR',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewDetailDtoTypeEnum];
  @override
  final String wireName = 'ReviewDetailDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, ReviewDetailDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewDetailDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewDetailDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewDetailDtoStatusEnumSerializer
    implements PrimitiveSerializer<ReviewDetailDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'RESOLVED': 'RESOLVED',
    'EXPIRED': 'EXPIRED',
    'CANCELLED': 'CANCELLED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'RESOLVED': 'RESOLVED',
    'EXPIRED': 'EXPIRED',
    'CANCELLED': 'CANCELLED',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewDetailDtoStatusEnum];
  @override
  final String wireName = 'ReviewDetailDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, ReviewDetailDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewDetailDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewDetailDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewDetailDtoConfidenceLevelEnumSerializer
    implements PrimitiveSerializer<ReviewDetailDtoConfidenceLevelEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HIGH': 'HIGH',
    'MEDIUM': 'MEDIUM',
    'LOW': 'LOW',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HIGH': 'HIGH',
    'MEDIUM': 'MEDIUM',
    'LOW': 'LOW',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewDetailDtoConfidenceLevelEnum];
  @override
  final String wireName = 'ReviewDetailDtoConfidenceLevelEnum';

  @override
  Object serialize(
          Serializers serializers, ReviewDetailDtoConfidenceLevelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewDetailDtoConfidenceLevelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewDetailDtoConfidenceLevelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewDetailDto extends ReviewDetailDto {
  @override
  final String id;
  @override
  final ReviewDetailDtoTypeEnum type;
  @override
  final ReviewDetailDtoStatusEnum status;
  @override
  final num confidence;
  @override
  final ReviewDetailDtoConfidenceLevelEnum confidenceLevel;
  @override
  final String summary;
  @override
  final BuiltList<String> matchReasons;
  @override
  final String sourceType;
  @override
  final DateTime createdAt;
  @override
  final JsonObject reviewData;
  @override
  final BuiltList<DecisionOptionDto> decisionOptions;
  @override
  final String? sourcePlatform;
  @override
  final ReviewSummaryDtoTransaction? transaction;
  @override
  final String? amount;
  @override
  final String? currency;
  @override
  final String? merchantName;
  @override
  final String? accountName;
  @override
  final String? transactionTime;
  @override
  final String? transactionId;

  factory _$ReviewDetailDto([void Function(ReviewDetailDtoBuilder)? updates]) =>
      (new ReviewDetailDtoBuilder()..update(updates))._build();

  _$ReviewDetailDto._(
      {required this.id,
      required this.type,
      required this.status,
      required this.confidence,
      required this.confidenceLevel,
      required this.summary,
      required this.matchReasons,
      required this.sourceType,
      required this.createdAt,
      required this.reviewData,
      required this.decisionOptions,
      this.sourcePlatform,
      this.transaction,
      this.amount,
      this.currency,
      this.merchantName,
      this.accountName,
      this.transactionTime,
      this.transactionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ReviewDetailDto', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ReviewDetailDto', 'type');
    BuiltValueNullFieldError.checkNotNull(status, r'ReviewDetailDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'ReviewDetailDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        confidenceLevel, r'ReviewDetailDto', 'confidenceLevel');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'ReviewDetailDto', 'summary');
    BuiltValueNullFieldError.checkNotNull(
        matchReasons, r'ReviewDetailDto', 'matchReasons');
    BuiltValueNullFieldError.checkNotNull(
        sourceType, r'ReviewDetailDto', 'sourceType');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ReviewDetailDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        reviewData, r'ReviewDetailDto', 'reviewData');
    BuiltValueNullFieldError.checkNotNull(
        decisionOptions, r'ReviewDetailDto', 'decisionOptions');
  }

  @override
  ReviewDetailDto rebuild(void Function(ReviewDetailDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewDetailDtoBuilder toBuilder() =>
      new ReviewDetailDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewDetailDto &&
        id == other.id &&
        type == other.type &&
        status == other.status &&
        confidence == other.confidence &&
        confidenceLevel == other.confidenceLevel &&
        summary == other.summary &&
        matchReasons == other.matchReasons &&
        sourceType == other.sourceType &&
        createdAt == other.createdAt &&
        reviewData == other.reviewData &&
        decisionOptions == other.decisionOptions &&
        sourcePlatform == other.sourcePlatform &&
        transaction == other.transaction &&
        amount == other.amount &&
        currency == other.currency &&
        merchantName == other.merchantName &&
        accountName == other.accountName &&
        transactionTime == other.transactionTime &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, confidenceLevel.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, matchReasons.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, reviewData.hashCode);
    _$hash = $jc(_$hash, decisionOptions.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jc(_$hash, transaction.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, merchantName.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, transactionTime.hashCode);
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewDetailDto')
          ..add('id', id)
          ..add('type', type)
          ..add('status', status)
          ..add('confidence', confidence)
          ..add('confidenceLevel', confidenceLevel)
          ..add('summary', summary)
          ..add('matchReasons', matchReasons)
          ..add('sourceType', sourceType)
          ..add('createdAt', createdAt)
          ..add('reviewData', reviewData)
          ..add('decisionOptions', decisionOptions)
          ..add('sourcePlatform', sourcePlatform)
          ..add('transaction', transaction)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('merchantName', merchantName)
          ..add('accountName', accountName)
          ..add('transactionTime', transactionTime)
          ..add('transactionId', transactionId))
        .toString();
  }
}

class ReviewDetailDtoBuilder
    implements Builder<ReviewDetailDto, ReviewDetailDtoBuilder> {
  _$ReviewDetailDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ReviewDetailDtoTypeEnum? _type;
  ReviewDetailDtoTypeEnum? get type => _$this._type;
  set type(ReviewDetailDtoTypeEnum? type) => _$this._type = type;

  ReviewDetailDtoStatusEnum? _status;
  ReviewDetailDtoStatusEnum? get status => _$this._status;
  set status(ReviewDetailDtoStatusEnum? status) => _$this._status = status;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  ReviewDetailDtoConfidenceLevelEnum? _confidenceLevel;
  ReviewDetailDtoConfidenceLevelEnum? get confidenceLevel =>
      _$this._confidenceLevel;
  set confidenceLevel(ReviewDetailDtoConfidenceLevelEnum? confidenceLevel) =>
      _$this._confidenceLevel = confidenceLevel;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  ListBuilder<String>? _matchReasons;
  ListBuilder<String> get matchReasons =>
      _$this._matchReasons ??= new ListBuilder<String>();
  set matchReasons(ListBuilder<String>? matchReasons) =>
      _$this._matchReasons = matchReasons;

  String? _sourceType;
  String? get sourceType => _$this._sourceType;
  set sourceType(String? sourceType) => _$this._sourceType = sourceType;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  JsonObject? _reviewData;
  JsonObject? get reviewData => _$this._reviewData;
  set reviewData(JsonObject? reviewData) => _$this._reviewData = reviewData;

  ListBuilder<DecisionOptionDto>? _decisionOptions;
  ListBuilder<DecisionOptionDto> get decisionOptions =>
      _$this._decisionOptions ??= new ListBuilder<DecisionOptionDto>();
  set decisionOptions(ListBuilder<DecisionOptionDto>? decisionOptions) =>
      _$this._decisionOptions = decisionOptions;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

  ReviewSummaryDtoTransactionBuilder? _transaction;
  ReviewSummaryDtoTransactionBuilder get transaction =>
      _$this._transaction ??= new ReviewSummaryDtoTransactionBuilder();
  set transaction(ReviewSummaryDtoTransactionBuilder? transaction) =>
      _$this._transaction = transaction;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _merchantName;
  String? get merchantName => _$this._merchantName;
  set merchantName(String? merchantName) => _$this._merchantName = merchantName;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _transactionTime;
  String? get transactionTime => _$this._transactionTime;
  set transactionTime(String? transactionTime) =>
      _$this._transactionTime = transactionTime;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  ReviewDetailDtoBuilder() {
    ReviewDetailDto._defaults(this);
  }

  ReviewDetailDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _status = $v.status;
      _confidence = $v.confidence;
      _confidenceLevel = $v.confidenceLevel;
      _summary = $v.summary;
      _matchReasons = $v.matchReasons.toBuilder();
      _sourceType = $v.sourceType;
      _createdAt = $v.createdAt;
      _reviewData = $v.reviewData;
      _decisionOptions = $v.decisionOptions.toBuilder();
      _sourcePlatform = $v.sourcePlatform;
      _transaction = $v.transaction?.toBuilder();
      _amount = $v.amount;
      _currency = $v.currency;
      _merchantName = $v.merchantName;
      _accountName = $v.accountName;
      _transactionTime = $v.transactionTime;
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewDetailDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewDetailDto;
  }

  @override
  void update(void Function(ReviewDetailDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewDetailDto build() => _build();

  _$ReviewDetailDto _build() {
    _$ReviewDetailDto _$result;
    try {
      _$result = _$v ??
          new _$ReviewDetailDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ReviewDetailDto', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ReviewDetailDto', 'type'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReviewDetailDto', 'status'),
              confidence: BuiltValueNullFieldError.checkNotNull(
                  confidence, r'ReviewDetailDto', 'confidence'),
              confidenceLevel: BuiltValueNullFieldError.checkNotNull(
                  confidenceLevel, r'ReviewDetailDto', 'confidenceLevel'),
              summary: BuiltValueNullFieldError.checkNotNull(
                  summary, r'ReviewDetailDto', 'summary'),
              matchReasons: matchReasons.build(),
              sourceType: BuiltValueNullFieldError.checkNotNull(
                  sourceType, r'ReviewDetailDto', 'sourceType'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'ReviewDetailDto', 'createdAt'),
              reviewData: BuiltValueNullFieldError.checkNotNull(
                  reviewData, r'ReviewDetailDto', 'reviewData'),
              decisionOptions: decisionOptions.build(),
              sourcePlatform: sourcePlatform,
              transaction: _transaction?.build(),
              amount: amount,
              currency: currency,
              merchantName: merchantName,
              accountName: accountName,
              transactionTime: transactionTime,
              transactionId: transactionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchReasons';
        matchReasons.build();

        _$failedField = 'decisionOptions';
        decisionOptions.build();

        _$failedField = 'transaction';
        _transaction?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReviewDetailDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
