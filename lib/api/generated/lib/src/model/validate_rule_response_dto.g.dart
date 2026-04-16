// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_rule_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateRuleResponseDto extends ValidateRuleResponseDto {
  @override
  final bool valid;
  @override
  final BuiltList<BuiltList<dynamic>> errors;
  @override
  final BuiltList<BuiltList<dynamic>> warnings;

  factory _$ValidateRuleResponseDto(
          [void Function(ValidateRuleResponseDtoBuilder)? updates]) =>
      (new ValidateRuleResponseDtoBuilder()..update(updates))._build();

  _$ValidateRuleResponseDto._(
      {required this.valid, required this.errors, required this.warnings})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        valid, r'ValidateRuleResponseDto', 'valid');
    BuiltValueNullFieldError.checkNotNull(
        errors, r'ValidateRuleResponseDto', 'errors');
    BuiltValueNullFieldError.checkNotNull(
        warnings, r'ValidateRuleResponseDto', 'warnings');
  }

  @override
  ValidateRuleResponseDto rebuild(
          void Function(ValidateRuleResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateRuleResponseDtoBuilder toBuilder() =>
      new ValidateRuleResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateRuleResponseDto &&
        valid == other.valid &&
        errors == other.errors &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, valid.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateRuleResponseDto')
          ..add('valid', valid)
          ..add('errors', errors)
          ..add('warnings', warnings))
        .toString();
  }
}

class ValidateRuleResponseDtoBuilder
    implements
        Builder<ValidateRuleResponseDto, ValidateRuleResponseDtoBuilder> {
  _$ValidateRuleResponseDto? _$v;

  bool? _valid;
  bool? get valid => _$this._valid;
  set valid(bool? valid) => _$this._valid = valid;

  ListBuilder<BuiltList<dynamic>>? _errors;
  ListBuilder<BuiltList<dynamic>> get errors =>
      _$this._errors ??= new ListBuilder<BuiltList<dynamic>>();
  set errors(ListBuilder<BuiltList<dynamic>>? errors) =>
      _$this._errors = errors;

  ListBuilder<BuiltList<dynamic>>? _warnings;
  ListBuilder<BuiltList<dynamic>> get warnings =>
      _$this._warnings ??= new ListBuilder<BuiltList<dynamic>>();
  set warnings(ListBuilder<BuiltList<dynamic>>? warnings) =>
      _$this._warnings = warnings;

  ValidateRuleResponseDtoBuilder() {
    ValidateRuleResponseDto._defaults(this);
  }

  ValidateRuleResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _valid = $v.valid;
      _errors = $v.errors.toBuilder();
      _warnings = $v.warnings.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateRuleResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateRuleResponseDto;
  }

  @override
  void update(void Function(ValidateRuleResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateRuleResponseDto build() => _build();

  _$ValidateRuleResponseDto _build() {
    _$ValidateRuleResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ValidateRuleResponseDto._(
              valid: BuiltValueNullFieldError.checkNotNull(
                  valid, r'ValidateRuleResponseDto', 'valid'),
              errors: errors.build(),
              warnings: warnings.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
        _$failedField = 'warnings';
        warnings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidateRuleResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
