// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_rules_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportRulesResponseDto extends ExportRulesResponseDto {
  @override
  final String exportedAt;
  @override
  final String userId;
  @override
  final num ruleCount;
  @override
  final BuiltList<dynamic> rules;

  factory _$ExportRulesResponseDto(
          [void Function(ExportRulesResponseDtoBuilder)? updates]) =>
      (new ExportRulesResponseDtoBuilder()..update(updates))._build();

  _$ExportRulesResponseDto._(
      {required this.exportedAt,
      required this.userId,
      required this.ruleCount,
      required this.rules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exportedAt, r'ExportRulesResponseDto', 'exportedAt');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'ExportRulesResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        ruleCount, r'ExportRulesResponseDto', 'ruleCount');
    BuiltValueNullFieldError.checkNotNull(
        rules, r'ExportRulesResponseDto', 'rules');
  }

  @override
  ExportRulesResponseDto rebuild(
          void Function(ExportRulesResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportRulesResponseDtoBuilder toBuilder() =>
      new ExportRulesResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportRulesResponseDto &&
        exportedAt == other.exportedAt &&
        userId == other.userId &&
        ruleCount == other.ruleCount &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportedAt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, ruleCount.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportRulesResponseDto')
          ..add('exportedAt', exportedAt)
          ..add('userId', userId)
          ..add('ruleCount', ruleCount)
          ..add('rules', rules))
        .toString();
  }
}

class ExportRulesResponseDtoBuilder
    implements Builder<ExportRulesResponseDto, ExportRulesResponseDtoBuilder> {
  _$ExportRulesResponseDto? _$v;

  String? _exportedAt;
  String? get exportedAt => _$this._exportedAt;
  set exportedAt(String? exportedAt) => _$this._exportedAt = exportedAt;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  num? _ruleCount;
  num? get ruleCount => _$this._ruleCount;
  set ruleCount(num? ruleCount) => _$this._ruleCount = ruleCount;

  ListBuilder<dynamic>? _rules;
  ListBuilder<dynamic> get rules =>
      _$this._rules ??= new ListBuilder<dynamic>();
  set rules(ListBuilder<dynamic>? rules) => _$this._rules = rules;

  ExportRulesResponseDtoBuilder() {
    ExportRulesResponseDto._defaults(this);
  }

  ExportRulesResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportedAt = $v.exportedAt;
      _userId = $v.userId;
      _ruleCount = $v.ruleCount;
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportRulesResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportRulesResponseDto;
  }

  @override
  void update(void Function(ExportRulesResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportRulesResponseDto build() => _build();

  _$ExportRulesResponseDto _build() {
    _$ExportRulesResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ExportRulesResponseDto._(
              exportedAt: BuiltValueNullFieldError.checkNotNull(
                  exportedAt, r'ExportRulesResponseDto', 'exportedAt'),
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'ExportRulesResponseDto', 'userId'),
              ruleCount: BuiltValueNullFieldError.checkNotNull(
                  ruleCount, r'ExportRulesResponseDto', 'ruleCount'),
              rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportRulesResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
