// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_transaction_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpectedTransactionResponseDto extends ExpectedTransactionResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final String ruleId;
  @override
  final String expectedDate;
  @override
  final num expectedAmount;
  @override
  final String status;
  @override
  final bool isOverdue;
  @override
  final ExpectedTransactionRuleDto rule;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final JsonObject? matchedTransactionId;
  @override
  final JsonObject? matchedAt;
  @override
  final JsonObject? matchConfidence;

  factory _$ExpectedTransactionResponseDto(
          [void Function(ExpectedTransactionResponseDtoBuilder)? updates]) =>
      (new ExpectedTransactionResponseDtoBuilder()..update(updates))._build();

  _$ExpectedTransactionResponseDto._(
      {required this.id,
      required this.userId,
      required this.ruleId,
      required this.expectedDate,
      required this.expectedAmount,
      required this.status,
      required this.isOverdue,
      required this.rule,
      required this.createdAt,
      required this.updatedAt,
      this.matchedTransactionId,
      this.matchedAt,
      this.matchConfidence})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'ExpectedTransactionResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'ExpectedTransactionResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        ruleId, r'ExpectedTransactionResponseDto', 'ruleId');
    BuiltValueNullFieldError.checkNotNull(
        expectedDate, r'ExpectedTransactionResponseDto', 'expectedDate');
    BuiltValueNullFieldError.checkNotNull(
        expectedAmount, r'ExpectedTransactionResponseDto', 'expectedAmount');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ExpectedTransactionResponseDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        isOverdue, r'ExpectedTransactionResponseDto', 'isOverdue');
    BuiltValueNullFieldError.checkNotNull(
        rule, r'ExpectedTransactionResponseDto', 'rule');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ExpectedTransactionResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'ExpectedTransactionResponseDto', 'updatedAt');
  }

  @override
  ExpectedTransactionResponseDto rebuild(
          void Function(ExpectedTransactionResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpectedTransactionResponseDtoBuilder toBuilder() =>
      new ExpectedTransactionResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpectedTransactionResponseDto &&
        id == other.id &&
        userId == other.userId &&
        ruleId == other.ruleId &&
        expectedDate == other.expectedDate &&
        expectedAmount == other.expectedAmount &&
        status == other.status &&
        isOverdue == other.isOverdue &&
        rule == other.rule &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        matchedTransactionId == other.matchedTransactionId &&
        matchedAt == other.matchedAt &&
        matchConfidence == other.matchConfidence;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, expectedDate.hashCode);
    _$hash = $jc(_$hash, expectedAmount.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isOverdue.hashCode);
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, matchedTransactionId.hashCode);
    _$hash = $jc(_$hash, matchedAt.hashCode);
    _$hash = $jc(_$hash, matchConfidence.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpectedTransactionResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('ruleId', ruleId)
          ..add('expectedDate', expectedDate)
          ..add('expectedAmount', expectedAmount)
          ..add('status', status)
          ..add('isOverdue', isOverdue)
          ..add('rule', rule)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('matchedTransactionId', matchedTransactionId)
          ..add('matchedAt', matchedAt)
          ..add('matchConfidence', matchConfidence))
        .toString();
  }
}

class ExpectedTransactionResponseDtoBuilder
    implements
        Builder<ExpectedTransactionResponseDto,
            ExpectedTransactionResponseDtoBuilder> {
  _$ExpectedTransactionResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _expectedDate;
  String? get expectedDate => _$this._expectedDate;
  set expectedDate(String? expectedDate) => _$this._expectedDate = expectedDate;

  num? _expectedAmount;
  num? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(num? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isOverdue;
  bool? get isOverdue => _$this._isOverdue;
  set isOverdue(bool? isOverdue) => _$this._isOverdue = isOverdue;

  ExpectedTransactionRuleDtoBuilder? _rule;
  ExpectedTransactionRuleDtoBuilder get rule =>
      _$this._rule ??= new ExpectedTransactionRuleDtoBuilder();
  set rule(ExpectedTransactionRuleDtoBuilder? rule) => _$this._rule = rule;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  JsonObject? _matchedTransactionId;
  JsonObject? get matchedTransactionId => _$this._matchedTransactionId;
  set matchedTransactionId(JsonObject? matchedTransactionId) =>
      _$this._matchedTransactionId = matchedTransactionId;

  JsonObject? _matchedAt;
  JsonObject? get matchedAt => _$this._matchedAt;
  set matchedAt(JsonObject? matchedAt) => _$this._matchedAt = matchedAt;

  JsonObject? _matchConfidence;
  JsonObject? get matchConfidence => _$this._matchConfidence;
  set matchConfidence(JsonObject? matchConfidence) =>
      _$this._matchConfidence = matchConfidence;

  ExpectedTransactionResponseDtoBuilder() {
    ExpectedTransactionResponseDto._defaults(this);
  }

  ExpectedTransactionResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _ruleId = $v.ruleId;
      _expectedDate = $v.expectedDate;
      _expectedAmount = $v.expectedAmount;
      _status = $v.status;
      _isOverdue = $v.isOverdue;
      _rule = $v.rule.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _matchedTransactionId = $v.matchedTransactionId;
      _matchedAt = $v.matchedAt;
      _matchConfidence = $v.matchConfidence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpectedTransactionResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpectedTransactionResponseDto;
  }

  @override
  void update(void Function(ExpectedTransactionResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpectedTransactionResponseDto build() => _build();

  _$ExpectedTransactionResponseDto _build() {
    _$ExpectedTransactionResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ExpectedTransactionResponseDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ExpectedTransactionResponseDto', 'id'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'ExpectedTransactionResponseDto', 'userId'),
              ruleId: BuiltValueNullFieldError.checkNotNull(
                  ruleId, r'ExpectedTransactionResponseDto', 'ruleId'),
              expectedDate: BuiltValueNullFieldError.checkNotNull(
                  expectedDate, r'ExpectedTransactionResponseDto', 'expectedDate'),
              expectedAmount: BuiltValueNullFieldError.checkNotNull(
                  expectedAmount, r'ExpectedTransactionResponseDto', 'expectedAmount'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'ExpectedTransactionResponseDto', 'status'),
              isOverdue: BuiltValueNullFieldError.checkNotNull(
                  isOverdue, r'ExpectedTransactionResponseDto', 'isOverdue'),
              rule: rule.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'ExpectedTransactionResponseDto', 'createdAt'),
              updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'ExpectedTransactionResponseDto', 'updatedAt'),
              matchedTransactionId: matchedTransactionId,
              matchedAt: matchedAt,
              matchConfidence: matchConfidence);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rule';
        rule.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExpectedTransactionResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
