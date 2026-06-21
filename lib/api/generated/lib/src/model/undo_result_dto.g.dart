// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'undo_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UndoResultDto extends UndoResultDto {
  @override
  final bool success;
  @override
  final String? message;
  @override
  final String reviewId;

  factory _$UndoResultDto([void Function(UndoResultDtoBuilder)? updates]) =>
      (new UndoResultDtoBuilder()..update(updates))._build();

  _$UndoResultDto._(
      {required this.success, this.message, required this.reviewId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, r'UndoResultDto', 'success');
    BuiltValueNullFieldError.checkNotNull(
        reviewId, r'UndoResultDto', 'reviewId');
  }

  @override
  UndoResultDto rebuild(void Function(UndoResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UndoResultDtoBuilder toBuilder() => new UndoResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UndoResultDto &&
        success == other.success &&
        message == other.message &&
        reviewId == other.reviewId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, reviewId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UndoResultDto')
          ..add('success', success)
          ..add('message', message)
          ..add('reviewId', reviewId))
        .toString();
  }
}

class UndoResultDtoBuilder
    implements Builder<UndoResultDto, UndoResultDtoBuilder> {
  _$UndoResultDto? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _reviewId;
  String? get reviewId => _$this._reviewId;
  set reviewId(String? reviewId) => _$this._reviewId = reviewId;

  UndoResultDtoBuilder() {
    UndoResultDto._defaults(this);
  }

  UndoResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _reviewId = $v.reviewId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UndoResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UndoResultDto;
  }

  @override
  void update(void Function(UndoResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UndoResultDto build() => _build();

  _$UndoResultDto _build() {
    final _$result = _$v ??
        new _$UndoResultDto._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'UndoResultDto', 'success'),
            message: message,
            reviewId: BuiltValueNullFieldError.checkNotNull(
                reviewId, r'UndoResultDto', 'reviewId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
