// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_resolve_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResolveItemDto extends BatchResolveItemDto {
  @override
  final String reviewId;
  @override
  final bool success;
  @override
  final String? resolutionId;
  @override
  final String? messageKey;
  @override
  final BuiltMap<String, String>? messageParams;
  @override
  final String? error;

  factory _$BatchResolveItemDto(
          [void Function(BatchResolveItemDtoBuilder)? updates]) =>
      (new BatchResolveItemDtoBuilder()..update(updates))._build();

  _$BatchResolveItemDto._(
      {required this.reviewId,
      required this.success,
      this.resolutionId,
      this.messageKey,
      this.messageParams,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reviewId, r'BatchResolveItemDto', 'reviewId');
    BuiltValueNullFieldError.checkNotNull(
        success, r'BatchResolveItemDto', 'success');
  }

  @override
  BatchResolveItemDto rebuild(
          void Function(BatchResolveItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResolveItemDtoBuilder toBuilder() =>
      new BatchResolveItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResolveItemDto &&
        reviewId == other.reviewId &&
        success == other.success &&
        resolutionId == other.resolutionId &&
        messageKey == other.messageKey &&
        messageParams == other.messageParams &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reviewId.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, resolutionId.hashCode);
    _$hash = $jc(_$hash, messageKey.hashCode);
    _$hash = $jc(_$hash, messageParams.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResolveItemDto')
          ..add('reviewId', reviewId)
          ..add('success', success)
          ..add('resolutionId', resolutionId)
          ..add('messageKey', messageKey)
          ..add('messageParams', messageParams)
          ..add('error', error))
        .toString();
  }
}

class BatchResolveItemDtoBuilder
    implements Builder<BatchResolveItemDto, BatchResolveItemDtoBuilder> {
  _$BatchResolveItemDto? _$v;

  String? _reviewId;
  String? get reviewId => _$this._reviewId;
  set reviewId(String? reviewId) => _$this._reviewId = reviewId;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _resolutionId;
  String? get resolutionId => _$this._resolutionId;
  set resolutionId(String? resolutionId) => _$this._resolutionId = resolutionId;

  String? _messageKey;
  String? get messageKey => _$this._messageKey;
  set messageKey(String? messageKey) => _$this._messageKey = messageKey;

  MapBuilder<String, String>? _messageParams;
  MapBuilder<String, String> get messageParams =>
      _$this._messageParams ??= new MapBuilder<String, String>();
  set messageParams(MapBuilder<String, String>? messageParams) =>
      _$this._messageParams = messageParams;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  BatchResolveItemDtoBuilder() {
    BatchResolveItemDto._defaults(this);
  }

  BatchResolveItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewId = $v.reviewId;
      _success = $v.success;
      _resolutionId = $v.resolutionId;
      _messageKey = $v.messageKey;
      _messageParams = $v.messageParams?.toBuilder();
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResolveItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchResolveItemDto;
  }

  @override
  void update(void Function(BatchResolveItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResolveItemDto build() => _build();

  _$BatchResolveItemDto _build() {
    _$BatchResolveItemDto _$result;
    try {
      _$result = _$v ??
          new _$BatchResolveItemDto._(
              reviewId: BuiltValueNullFieldError.checkNotNull(
                  reviewId, r'BatchResolveItemDto', 'reviewId'),
              success: BuiltValueNullFieldError.checkNotNull(
                  success, r'BatchResolveItemDto', 'success'),
              resolutionId: resolutionId,
              messageKey: messageKey,
              messageParams: _messageParams?.build(),
              error: error);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'messageParams';
        _messageParams?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchResolveItemDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
