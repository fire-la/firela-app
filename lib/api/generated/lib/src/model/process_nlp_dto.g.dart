// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_nlp_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessNlpDto extends ProcessNlpDto {
  @override
  final String message;
  @override
  final String? sessionId;

  factory _$ProcessNlpDto([void Function(ProcessNlpDtoBuilder)? updates]) =>
      (new ProcessNlpDtoBuilder()..update(updates))._build();

  _$ProcessNlpDto._({required this.message, this.sessionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(message, r'ProcessNlpDto', 'message');
  }

  @override
  ProcessNlpDto rebuild(void Function(ProcessNlpDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProcessNlpDtoBuilder toBuilder() => new ProcessNlpDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessNlpDto &&
        message == other.message &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessNlpDto')
          ..add('message', message)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class ProcessNlpDtoBuilder
    implements Builder<ProcessNlpDto, ProcessNlpDtoBuilder> {
  _$ProcessNlpDto? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  ProcessNlpDtoBuilder() {
    ProcessNlpDto._defaults(this);
  }

  ProcessNlpDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessNlpDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProcessNlpDto;
  }

  @override
  void update(void Function(ProcessNlpDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessNlpDto build() => _build();

  _$ProcessNlpDto _build() {
    final _$result = _$v ??
        new _$ProcessNlpDto._(
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProcessNlpDto', 'message'),
            sessionId: sessionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
