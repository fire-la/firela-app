// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_resolve_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResolveDto extends BatchResolveDto {
  @override
  final BuiltList<String> reviewIds;
  @override
  final String action;
  @override
  final JsonObject? data;

  factory _$BatchResolveDto([void Function(BatchResolveDtoBuilder)? updates]) =>
      (new BatchResolveDtoBuilder()..update(updates))._build();

  _$BatchResolveDto._(
      {required this.reviewIds, required this.action, this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reviewIds, r'BatchResolveDto', 'reviewIds');
    BuiltValueNullFieldError.checkNotNull(action, r'BatchResolveDto', 'action');
  }

  @override
  BatchResolveDto rebuild(void Function(BatchResolveDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResolveDtoBuilder toBuilder() =>
      new BatchResolveDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResolveDto &&
        reviewIds == other.reviewIds &&
        action == other.action &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reviewIds.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchResolveDto')
          ..add('reviewIds', reviewIds)
          ..add('action', action)
          ..add('data', data))
        .toString();
  }
}

class BatchResolveDtoBuilder
    implements Builder<BatchResolveDto, BatchResolveDtoBuilder> {
  _$BatchResolveDto? _$v;

  ListBuilder<String>? _reviewIds;
  ListBuilder<String> get reviewIds =>
      _$this._reviewIds ??= new ListBuilder<String>();
  set reviewIds(ListBuilder<String>? reviewIds) =>
      _$this._reviewIds = reviewIds;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  BatchResolveDtoBuilder() {
    BatchResolveDto._defaults(this);
  }

  BatchResolveDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewIds = $v.reviewIds.toBuilder();
      _action = $v.action;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchResolveDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchResolveDto;
  }

  @override
  void update(void Function(BatchResolveDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResolveDto build() => _build();

  _$BatchResolveDto _build() {
    _$BatchResolveDto _$result;
    try {
      _$result = _$v ??
          new _$BatchResolveDto._(
              reviewIds: reviewIds.build(),
              action: BuiltValueNullFieldError.checkNotNull(
                  action, r'BatchResolveDto', 'action'),
              data: data);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviewIds';
        reviewIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchResolveDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
