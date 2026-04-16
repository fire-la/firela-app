// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnum_DUPLICATE =
    const ReviewSummaryDtoTypeEnum._('DUPLICATE');
const ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnum_RULE_MATCH =
    const ReviewSummaryDtoTypeEnum._('RULE_MATCH');
const ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnum_PAYEE_MATCH =
    const ReviewSummaryDtoTypeEnum._('PAYEE_MATCH');
const ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnum_ACCOUNT_VALIDATION =
    const ReviewSummaryDtoTypeEnum._('ACCOUNT_VALIDATION');
const ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnum_PIPELINE_ERROR =
    const ReviewSummaryDtoTypeEnum._('PIPELINE_ERROR');

ReviewSummaryDtoTypeEnum _$reviewSummaryDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'DUPLICATE':
      return _$reviewSummaryDtoTypeEnum_DUPLICATE;
    case 'RULE_MATCH':
      return _$reviewSummaryDtoTypeEnum_RULE_MATCH;
    case 'PAYEE_MATCH':
      return _$reviewSummaryDtoTypeEnum_PAYEE_MATCH;
    case 'ACCOUNT_VALIDATION':
      return _$reviewSummaryDtoTypeEnum_ACCOUNT_VALIDATION;
    case 'PIPELINE_ERROR':
      return _$reviewSummaryDtoTypeEnum_PIPELINE_ERROR;
    default:
      return _$reviewSummaryDtoTypeEnum_PIPELINE_ERROR;
  }
}

final BuiltSet<ReviewSummaryDtoTypeEnum> _$reviewSummaryDtoTypeEnumValues =
    new BuiltSet<ReviewSummaryDtoTypeEnum>(const <ReviewSummaryDtoTypeEnum>[
  _$reviewSummaryDtoTypeEnum_DUPLICATE,
  _$reviewSummaryDtoTypeEnum_RULE_MATCH,
  _$reviewSummaryDtoTypeEnum_PAYEE_MATCH,
  _$reviewSummaryDtoTypeEnum_ACCOUNT_VALIDATION,
  _$reviewSummaryDtoTypeEnum_PIPELINE_ERROR,
]);

const ReviewSummaryDtoStatusEnum _$reviewSummaryDtoStatusEnum_PENDING =
    const ReviewSummaryDtoStatusEnum._('PENDING');
const ReviewSummaryDtoStatusEnum _$reviewSummaryDtoStatusEnum_RESOLVED =
    const ReviewSummaryDtoStatusEnum._('RESOLVED');
const ReviewSummaryDtoStatusEnum _$reviewSummaryDtoStatusEnum_EXPIRED =
    const ReviewSummaryDtoStatusEnum._('EXPIRED');
const ReviewSummaryDtoStatusEnum _$reviewSummaryDtoStatusEnum_CANCELLED =
    const ReviewSummaryDtoStatusEnum._('CANCELLED');

ReviewSummaryDtoStatusEnum _$reviewSummaryDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$reviewSummaryDtoStatusEnum_PENDING;
    case 'RESOLVED':
      return _$reviewSummaryDtoStatusEnum_RESOLVED;
    case 'EXPIRED':
      return _$reviewSummaryDtoStatusEnum_EXPIRED;
    case 'CANCELLED':
      return _$reviewSummaryDtoStatusEnum_CANCELLED;
    default:
      return _$reviewSummaryDtoStatusEnum_CANCELLED;
  }
}

final BuiltSet<ReviewSummaryDtoStatusEnum> _$reviewSummaryDtoStatusEnumValues =
    new BuiltSet<ReviewSummaryDtoStatusEnum>(const <ReviewSummaryDtoStatusEnum>[
  _$reviewSummaryDtoStatusEnum_PENDING,
  _$reviewSummaryDtoStatusEnum_RESOLVED,
  _$reviewSummaryDtoStatusEnum_EXPIRED,
  _$reviewSummaryDtoStatusEnum_CANCELLED,
]);

const ReviewSummaryDtoConfidenceLevelEnum
    _$reviewSummaryDtoConfidenceLevelEnum_HIGH =
    const ReviewSummaryDtoConfidenceLevelEnum._('HIGH');
const ReviewSummaryDtoConfidenceLevelEnum
    _$reviewSummaryDtoConfidenceLevelEnum_MEDIUM =
    const ReviewSummaryDtoConfidenceLevelEnum._('MEDIUM');
const ReviewSummaryDtoConfidenceLevelEnum
    _$reviewSummaryDtoConfidenceLevelEnum_LOW =
    const ReviewSummaryDtoConfidenceLevelEnum._('LOW');

ReviewSummaryDtoConfidenceLevelEnum
    _$reviewSummaryDtoConfidenceLevelEnumValueOf(String name) {
  switch (name) {
    case 'HIGH':
      return _$reviewSummaryDtoConfidenceLevelEnum_HIGH;
    case 'MEDIUM':
      return _$reviewSummaryDtoConfidenceLevelEnum_MEDIUM;
    case 'LOW':
      return _$reviewSummaryDtoConfidenceLevelEnum_LOW;
    default:
      return _$reviewSummaryDtoConfidenceLevelEnum_LOW;
  }
}

final BuiltSet<ReviewSummaryDtoConfidenceLevelEnum>
    _$reviewSummaryDtoConfidenceLevelEnumValues = new BuiltSet<
        ReviewSummaryDtoConfidenceLevelEnum>(const <ReviewSummaryDtoConfidenceLevelEnum>[
  _$reviewSummaryDtoConfidenceLevelEnum_HIGH,
  _$reviewSummaryDtoConfidenceLevelEnum_MEDIUM,
  _$reviewSummaryDtoConfidenceLevelEnum_LOW,
]);

Serializer<ReviewSummaryDtoTypeEnum> _$reviewSummaryDtoTypeEnumSerializer =
    new _$ReviewSummaryDtoTypeEnumSerializer();
Serializer<ReviewSummaryDtoStatusEnum> _$reviewSummaryDtoStatusEnumSerializer =
    new _$ReviewSummaryDtoStatusEnumSerializer();
Serializer<ReviewSummaryDtoConfidenceLevelEnum>
    _$reviewSummaryDtoConfidenceLevelEnumSerializer =
    new _$ReviewSummaryDtoConfidenceLevelEnumSerializer();

class _$ReviewSummaryDtoTypeEnumSerializer
    implements PrimitiveSerializer<ReviewSummaryDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ReviewSummaryDtoTypeEnum];
  @override
  final String wireName = 'ReviewSummaryDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, ReviewSummaryDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewSummaryDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewSummaryDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewSummaryDtoStatusEnumSerializer
    implements PrimitiveSerializer<ReviewSummaryDtoStatusEnum> {
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
  final Iterable<Type> types = const <Type>[ReviewSummaryDtoStatusEnum];
  @override
  final String wireName = 'ReviewSummaryDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, ReviewSummaryDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewSummaryDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewSummaryDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewSummaryDtoConfidenceLevelEnumSerializer
    implements PrimitiveSerializer<ReviewSummaryDtoConfidenceLevelEnum> {
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
  final Iterable<Type> types = const <Type>[
    ReviewSummaryDtoConfidenceLevelEnum
  ];
  @override
  final String wireName = 'ReviewSummaryDtoConfidenceLevelEnum';

  @override
  Object serialize(
          Serializers serializers, ReviewSummaryDtoConfidenceLevelEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewSummaryDtoConfidenceLevelEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewSummaryDtoConfidenceLevelEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewSummaryDto extends ReviewSummaryDto {
  @override
  final String id;
  @override
  final ReviewSummaryDtoTypeEnum type;
  @override
  final ReviewSummaryDtoStatusEnum status;
  @override
  final num confidence;
  @override
  final ReviewSummaryDtoConfidenceLevelEnum confidenceLevel;
  @override
  final String summary;
  @override
  final BuiltList<String> matchReasons;
  @override
  final String sourceType;
  @override
  final DateTime createdAt;
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

  factory _$ReviewSummaryDto(
          [void Function(ReviewSummaryDtoBuilder)? updates]) =>
      (new ReviewSummaryDtoBuilder()..update(updates))._build();

  _$ReviewSummaryDto._(
      {required this.id,
      required this.type,
      required this.status,
      required this.confidence,
      required this.confidenceLevel,
      required this.summary,
      required this.matchReasons,
      required this.sourceType,
      required this.createdAt,
      this.sourcePlatform,
      this.transaction,
      this.amount,
      this.currency,
      this.merchantName,
      this.accountName,
      this.transactionTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ReviewSummaryDto', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'ReviewSummaryDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ReviewSummaryDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'ReviewSummaryDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        confidenceLevel, r'ReviewSummaryDto', 'confidenceLevel');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'ReviewSummaryDto', 'summary');
    BuiltValueNullFieldError.checkNotNull(
        matchReasons, r'ReviewSummaryDto', 'matchReasons');
    BuiltValueNullFieldError.checkNotNull(
        sourceType, r'ReviewSummaryDto', 'sourceType');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ReviewSummaryDto', 'createdAt');
  }

  @override
  ReviewSummaryDto rebuild(void Function(ReviewSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewSummaryDtoBuilder toBuilder() =>
      new ReviewSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewSummaryDto &&
        id == other.id &&
        type == other.type &&
        status == other.status &&
        confidence == other.confidence &&
        confidenceLevel == other.confidenceLevel &&
        summary == other.summary &&
        matchReasons == other.matchReasons &&
        sourceType == other.sourceType &&
        createdAt == other.createdAt &&
        sourcePlatform == other.sourcePlatform &&
        transaction == other.transaction &&
        amount == other.amount &&
        currency == other.currency &&
        merchantName == other.merchantName &&
        accountName == other.accountName &&
        transactionTime == other.transactionTime;
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
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jc(_$hash, transaction.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, merchantName.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, transactionTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewSummaryDto')
          ..add('id', id)
          ..add('type', type)
          ..add('status', status)
          ..add('confidence', confidence)
          ..add('confidenceLevel', confidenceLevel)
          ..add('summary', summary)
          ..add('matchReasons', matchReasons)
          ..add('sourceType', sourceType)
          ..add('createdAt', createdAt)
          ..add('sourcePlatform', sourcePlatform)
          ..add('transaction', transaction)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('merchantName', merchantName)
          ..add('accountName', accountName)
          ..add('transactionTime', transactionTime))
        .toString();
  }
}

class ReviewSummaryDtoBuilder
    implements Builder<ReviewSummaryDto, ReviewSummaryDtoBuilder> {
  _$ReviewSummaryDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ReviewSummaryDtoTypeEnum? _type;
  ReviewSummaryDtoTypeEnum? get type => _$this._type;
  set type(ReviewSummaryDtoTypeEnum? type) => _$this._type = type;

  ReviewSummaryDtoStatusEnum? _status;
  ReviewSummaryDtoStatusEnum? get status => _$this._status;
  set status(ReviewSummaryDtoStatusEnum? status) => _$this._status = status;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  ReviewSummaryDtoConfidenceLevelEnum? _confidenceLevel;
  ReviewSummaryDtoConfidenceLevelEnum? get confidenceLevel =>
      _$this._confidenceLevel;
  set confidenceLevel(ReviewSummaryDtoConfidenceLevelEnum? confidenceLevel) =>
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

  ReviewSummaryDtoBuilder() {
    ReviewSummaryDto._defaults(this);
  }

  ReviewSummaryDtoBuilder get _$this {
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
      _sourcePlatform = $v.sourcePlatform;
      _transaction = $v.transaction?.toBuilder();
      _amount = $v.amount;
      _currency = $v.currency;
      _merchantName = $v.merchantName;
      _accountName = $v.accountName;
      _transactionTime = $v.transactionTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewSummaryDto;
  }

  @override
  void update(void Function(ReviewSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewSummaryDto build() => _build();

  _$ReviewSummaryDto _build() {
    _$ReviewSummaryDto _$result;
    try {
      _$result = _$v ??
          new _$ReviewSummaryDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ReviewSummaryDto', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'ReviewSummaryDto', 'type'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ReviewSummaryDto', 'status'),
              confidence: BuiltValueNullFieldError.checkNotNull(
                  confidence, r'ReviewSummaryDto', 'confidence'),
              confidenceLevel: BuiltValueNullFieldError.checkNotNull(
                  confidenceLevel, r'ReviewSummaryDto', 'confidenceLevel'),
              summary: BuiltValueNullFieldError.checkNotNull(
                  summary, r'ReviewSummaryDto', 'summary'),
              matchReasons: matchReasons.build(),
              sourceType: BuiltValueNullFieldError.checkNotNull(
                  sourceType, r'ReviewSummaryDto', 'sourceType'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'ReviewSummaryDto', 'createdAt'),
              sourcePlatform: sourcePlatform,
              transaction: _transaction?.build(),
              amount: amount,
              currency: currency,
              merchantName: merchantName,
              accountName: accountName,
              transactionTime: transactionTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'matchReasons';
        matchReasons.build();

        _$failedField = 'transaction';
        _transaction?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReviewSummaryDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
