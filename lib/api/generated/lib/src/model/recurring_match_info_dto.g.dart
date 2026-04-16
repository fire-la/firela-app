// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_match_info_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecurringMatchInfoDto extends RecurringMatchInfoDto {
  @override
  final String expectedId;
  @override
  final String ruleId;
  @override
  final String ruleName;
  @override
  final String expectedDate;
  @override
  final num expectedAmount;
  @override
  final num confidence;
  @override
  final bool isAutoMatched;
  @override
  final String? ruleIcon;

  factory _$RecurringMatchInfoDto(
          [void Function(RecurringMatchInfoDtoBuilder)? updates]) =>
      (new RecurringMatchInfoDtoBuilder()..update(updates))._build();

  _$RecurringMatchInfoDto._(
      {required this.expectedId,
      required this.ruleId,
      required this.ruleName,
      required this.expectedDate,
      required this.expectedAmount,
      required this.confidence,
      required this.isAutoMatched,
      this.ruleIcon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expectedId, r'RecurringMatchInfoDto', 'expectedId');
    BuiltValueNullFieldError.checkNotNull(
        ruleId, r'RecurringMatchInfoDto', 'ruleId');
    BuiltValueNullFieldError.checkNotNull(
        ruleName, r'RecurringMatchInfoDto', 'ruleName');
    BuiltValueNullFieldError.checkNotNull(
        expectedDate, r'RecurringMatchInfoDto', 'expectedDate');
    BuiltValueNullFieldError.checkNotNull(
        expectedAmount, r'RecurringMatchInfoDto', 'expectedAmount');
    BuiltValueNullFieldError.checkNotNull(
        confidence, r'RecurringMatchInfoDto', 'confidence');
    BuiltValueNullFieldError.checkNotNull(
        isAutoMatched, r'RecurringMatchInfoDto', 'isAutoMatched');
  }

  @override
  RecurringMatchInfoDto rebuild(
          void Function(RecurringMatchInfoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringMatchInfoDtoBuilder toBuilder() =>
      new RecurringMatchInfoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringMatchInfoDto &&
        expectedId == other.expectedId &&
        ruleId == other.ruleId &&
        ruleName == other.ruleName &&
        expectedDate == other.expectedDate &&
        expectedAmount == other.expectedAmount &&
        confidence == other.confidence &&
        isAutoMatched == other.isAutoMatched &&
        ruleIcon == other.ruleIcon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expectedId.hashCode);
    _$hash = $jc(_$hash, ruleId.hashCode);
    _$hash = $jc(_$hash, ruleName.hashCode);
    _$hash = $jc(_$hash, expectedDate.hashCode);
    _$hash = $jc(_$hash, expectedAmount.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, isAutoMatched.hashCode);
    _$hash = $jc(_$hash, ruleIcon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecurringMatchInfoDto')
          ..add('expectedId', expectedId)
          ..add('ruleId', ruleId)
          ..add('ruleName', ruleName)
          ..add('expectedDate', expectedDate)
          ..add('expectedAmount', expectedAmount)
          ..add('confidence', confidence)
          ..add('isAutoMatched', isAutoMatched)
          ..add('ruleIcon', ruleIcon))
        .toString();
  }
}

class RecurringMatchInfoDtoBuilder
    implements Builder<RecurringMatchInfoDto, RecurringMatchInfoDtoBuilder> {
  _$RecurringMatchInfoDto? _$v;

  String? _expectedId;
  String? get expectedId => _$this._expectedId;
  set expectedId(String? expectedId) => _$this._expectedId = expectedId;

  String? _ruleId;
  String? get ruleId => _$this._ruleId;
  set ruleId(String? ruleId) => _$this._ruleId = ruleId;

  String? _ruleName;
  String? get ruleName => _$this._ruleName;
  set ruleName(String? ruleName) => _$this._ruleName = ruleName;

  String? _expectedDate;
  String? get expectedDate => _$this._expectedDate;
  set expectedDate(String? expectedDate) => _$this._expectedDate = expectedDate;

  num? _expectedAmount;
  num? get expectedAmount => _$this._expectedAmount;
  set expectedAmount(num? expectedAmount) =>
      _$this._expectedAmount = expectedAmount;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  bool? _isAutoMatched;
  bool? get isAutoMatched => _$this._isAutoMatched;
  set isAutoMatched(bool? isAutoMatched) =>
      _$this._isAutoMatched = isAutoMatched;

  String? _ruleIcon;
  String? get ruleIcon => _$this._ruleIcon;
  set ruleIcon(String? ruleIcon) => _$this._ruleIcon = ruleIcon;

  RecurringMatchInfoDtoBuilder() {
    RecurringMatchInfoDto._defaults(this);
  }

  RecurringMatchInfoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expectedId = $v.expectedId;
      _ruleId = $v.ruleId;
      _ruleName = $v.ruleName;
      _expectedDate = $v.expectedDate;
      _expectedAmount = $v.expectedAmount;
      _confidence = $v.confidence;
      _isAutoMatched = $v.isAutoMatched;
      _ruleIcon = $v.ruleIcon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringMatchInfoDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecurringMatchInfoDto;
  }

  @override
  void update(void Function(RecurringMatchInfoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringMatchInfoDto build() => _build();

  _$RecurringMatchInfoDto _build() {
    final _$result = _$v ??
        new _$RecurringMatchInfoDto._(
            expectedId: BuiltValueNullFieldError.checkNotNull(
                expectedId, r'RecurringMatchInfoDto', 'expectedId'),
            ruleId: BuiltValueNullFieldError.checkNotNull(
                ruleId, r'RecurringMatchInfoDto', 'ruleId'),
            ruleName: BuiltValueNullFieldError.checkNotNull(
                ruleName, r'RecurringMatchInfoDto', 'ruleName'),
            expectedDate: BuiltValueNullFieldError.checkNotNull(
                expectedDate, r'RecurringMatchInfoDto', 'expectedDate'),
            expectedAmount: BuiltValueNullFieldError.checkNotNull(
                expectedAmount, r'RecurringMatchInfoDto', 'expectedAmount'),
            confidence: BuiltValueNullFieldError.checkNotNull(
                confidence, r'RecurringMatchInfoDto', 'confidence'),
            isAutoMatched: BuiltValueNullFieldError.checkNotNull(
                isAutoMatched, r'RecurringMatchInfoDto', 'isAutoMatched'),
            ruleIcon: ruleIcon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
