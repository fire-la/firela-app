// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResolveResultDto extends ResolveResultDto {
  @override
  final bool success;
  @override
  final String? messageKey;
  @override
  final BuiltMap<String, String>? messageParams;
  @override
  final String resolutionId;
  @override
  final bool canUndo;
  @override
  final DateTime undoDeadline;
  @override
  final String? learnedRuleId;

  factory _$ResolveResultDto(
          [void Function(ResolveResultDtoBuilder)? updates]) =>
      (new ResolveResultDtoBuilder()..update(updates))._build();

  _$ResolveResultDto._(
      {required this.success,
      this.messageKey,
      this.messageParams,
      required this.resolutionId,
      required this.canUndo,
      required this.undoDeadline,
      this.learnedRuleId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'ResolveResultDto', 'success');
    BuiltValueNullFieldError.checkNotNull(
        resolutionId, r'ResolveResultDto', 'resolutionId');
    BuiltValueNullFieldError.checkNotNull(
        canUndo, r'ResolveResultDto', 'canUndo');
    BuiltValueNullFieldError.checkNotNull(
        undoDeadline, r'ResolveResultDto', 'undoDeadline');
  }

  @override
  ResolveResultDto rebuild(void Function(ResolveResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolveResultDtoBuilder toBuilder() =>
      new ResolveResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolveResultDto &&
        success == other.success &&
        messageKey == other.messageKey &&
        messageParams == other.messageParams &&
        resolutionId == other.resolutionId &&
        canUndo == other.canUndo &&
        undoDeadline == other.undoDeadline &&
        learnedRuleId == other.learnedRuleId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, messageKey.hashCode);
    _$hash = $jc(_$hash, messageParams.hashCode);
    _$hash = $jc(_$hash, resolutionId.hashCode);
    _$hash = $jc(_$hash, canUndo.hashCode);
    _$hash = $jc(_$hash, undoDeadline.hashCode);
    _$hash = $jc(_$hash, learnedRuleId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolveResultDto')
          ..add('success', success)
          ..add('messageKey', messageKey)
          ..add('messageParams', messageParams)
          ..add('resolutionId', resolutionId)
          ..add('canUndo', canUndo)
          ..add('undoDeadline', undoDeadline)
          ..add('learnedRuleId', learnedRuleId))
        .toString();
  }
}

class ResolveResultDtoBuilder
    implements Builder<ResolveResultDto, ResolveResultDtoBuilder> {
  _$ResolveResultDto? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _messageKey;
  String? get messageKey => _$this._messageKey;
  set messageKey(String? messageKey) => _$this._messageKey = messageKey;

  MapBuilder<String, String>? _messageParams;
  MapBuilder<String, String> get messageParams =>
      _$this._messageParams ??= new MapBuilder<String, String>();
  set messageParams(MapBuilder<String, String>? messageParams) =>
      _$this._messageParams = messageParams;

  String? _resolutionId;
  String? get resolutionId => _$this._resolutionId;
  set resolutionId(String? resolutionId) => _$this._resolutionId = resolutionId;

  bool? _canUndo;
  bool? get canUndo => _$this._canUndo;
  set canUndo(bool? canUndo) => _$this._canUndo = canUndo;

  DateTime? _undoDeadline;
  DateTime? get undoDeadline => _$this._undoDeadline;
  set undoDeadline(DateTime? undoDeadline) =>
      _$this._undoDeadline = undoDeadline;

  String? _learnedRuleId;
  String? get learnedRuleId => _$this._learnedRuleId;
  set learnedRuleId(String? learnedRuleId) =>
      _$this._learnedRuleId = learnedRuleId;

  ResolveResultDtoBuilder() {
    ResolveResultDto._defaults(this);
  }

  ResolveResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _messageKey = $v.messageKey;
      _messageParams = $v.messageParams?.toBuilder();
      _resolutionId = $v.resolutionId;
      _canUndo = $v.canUndo;
      _undoDeadline = $v.undoDeadline;
      _learnedRuleId = $v.learnedRuleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolveResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResolveResultDto;
  }

  @override
  void update(void Function(ResolveResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolveResultDto build() => _build();

  _$ResolveResultDto _build() {
    _$ResolveResultDto _$result;
    try {
      _$result = _$v ??
          new _$ResolveResultDto._(
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'ResolveResultDto', 'success'),
              messageKey: messageKey,
              messageParams: _messageParams?.build(),
              resolutionId: BuiltValueNullFieldError.checkNotNull(
                  resolutionId, r'ResolveResultDto', 'resolutionId'),
              canUndo: BuiltValueNullFieldError.checkNotNull(
                  canUndo, r'ResolveResultDto', 'canUndo'),
              undoDeadline: BuiltValueNullFieldError.checkNotNull(
                  undoDeadline, r'ResolveResultDto', 'undoDeadline'),
              learnedRuleId: learnedRuleId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageParams';
        _messageParams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResolveResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
