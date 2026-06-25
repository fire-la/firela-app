// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_rules_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkCreateRulesResponseDto extends BulkCreateRulesResponseDto {
  @override
  final num successCount;
  @override
  final num failureCount;
  @override
  final BuiltList<BulkCreateRulesResponseDtoErrorsInner> errors;
  @override
  final BuiltList<String> createdRuleIds;

  factory _$BulkCreateRulesResponseDto(
          [void Function(BulkCreateRulesResponseDtoBuilder)? updates]) =>
      (new BulkCreateRulesResponseDtoBuilder()..update(updates))._build();

  _$BulkCreateRulesResponseDto._(
      {required this.successCount,
      required this.failureCount,
      required this.errors,
      required this.createdRuleIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        successCount, r'BulkCreateRulesResponseDto', 'successCount');
    BuiltValueNullFieldError.checkNotNull(
        failureCount, r'BulkCreateRulesResponseDto', 'failureCount');
    BuiltValueNullFieldError.checkNotNull(
        errors, r'BulkCreateRulesResponseDto', 'errors');
    BuiltValueNullFieldError.checkNotNull(
        createdRuleIds, r'BulkCreateRulesResponseDto', 'createdRuleIds');
  }

  @override
  BulkCreateRulesResponseDto rebuild(
          void Function(BulkCreateRulesResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreateRulesResponseDtoBuilder toBuilder() =>
      new BulkCreateRulesResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreateRulesResponseDto &&
        successCount == other.successCount &&
        failureCount == other.failureCount &&
        errors == other.errors &&
        createdRuleIds == other.createdRuleIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successCount.hashCode);
    _$hash = $jc(_$hash, failureCount.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, createdRuleIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkCreateRulesResponseDto')
          ..add('successCount', successCount)
          ..add('failureCount', failureCount)
          ..add('errors', errors)
          ..add('createdRuleIds', createdRuleIds))
        .toString();
  }
}

class BulkCreateRulesResponseDtoBuilder
    implements
        Builder<BulkCreateRulesResponseDto, BulkCreateRulesResponseDtoBuilder> {
  _$BulkCreateRulesResponseDto? _$v;

  num? _successCount;
  num? get successCount => _$this._successCount;
  set successCount(num? successCount) => _$this._successCount = successCount;

  num? _failureCount;
  num? get failureCount => _$this._failureCount;
  set failureCount(num? failureCount) => _$this._failureCount = failureCount;

  ListBuilder<BulkCreateRulesResponseDtoErrorsInner>? _errors;
  ListBuilder<BulkCreateRulesResponseDtoErrorsInner> get errors =>
      _$this._errors ??=
          new ListBuilder<BulkCreateRulesResponseDtoErrorsInner>();
  set errors(ListBuilder<BulkCreateRulesResponseDtoErrorsInner>? errors) =>
      _$this._errors = errors;

  ListBuilder<String>? _createdRuleIds;
  ListBuilder<String> get createdRuleIds =>
      _$this._createdRuleIds ??= new ListBuilder<String>();
  set createdRuleIds(ListBuilder<String>? createdRuleIds) =>
      _$this._createdRuleIds = createdRuleIds;

  BulkCreateRulesResponseDtoBuilder() {
    BulkCreateRulesResponseDto._defaults(this);
  }

  BulkCreateRulesResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successCount = $v.successCount;
      _failureCount = $v.failureCount;
      _errors = $v.errors.toBuilder();
      _createdRuleIds = $v.createdRuleIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreateRulesResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreateRulesResponseDto;
  }

  @override
  void update(void Function(BulkCreateRulesResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreateRulesResponseDto build() => _build();

  _$BulkCreateRulesResponseDto _build() {
    _$BulkCreateRulesResponseDto _$result;
    try {
      _$result = _$v ??
          new _$BulkCreateRulesResponseDto._(
              successCount: BuiltValueNullFieldError.checkNotNull(
                  successCount, r'BulkCreateRulesResponseDto', 'successCount'),
              failureCount: BuiltValueNullFieldError.checkNotNull(
                  failureCount, r'BulkCreateRulesResponseDto', 'failureCount'),
              errors: errors.build(),
              createdRuleIds: createdRuleIds.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
        _$failedField = 'createdRuleIds';
        createdRuleIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BulkCreateRulesResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
