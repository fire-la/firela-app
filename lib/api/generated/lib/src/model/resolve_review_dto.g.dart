// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resolve_review_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResolveReviewDto extends ResolveReviewDto {
  @override
  final String action;
  @override
  final JsonObject? data;

  factory _$ResolveReviewDto(
          [void Function(ResolveReviewDtoBuilder)? updates]) =>
      (new ResolveReviewDtoBuilder()..update(updates))._build();

  _$ResolveReviewDto._({required this.action, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        action, r'ResolveReviewDto', 'action');
  }

  @override
  ResolveReviewDto rebuild(void Function(ResolveReviewDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResolveReviewDtoBuilder toBuilder() =>
      new ResolveReviewDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResolveReviewDto &&
        action == other.action &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResolveReviewDto')
          ..add('action', action)
          ..add('data', data))
        .toString();
  }
}

class ResolveReviewDtoBuilder
    implements Builder<ResolveReviewDto, ResolveReviewDtoBuilder> {
  _$ResolveReviewDto? _$v;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  ResolveReviewDtoBuilder() {
    ResolveReviewDto._defaults(this);
  }

  ResolveReviewDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResolveReviewDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResolveReviewDto;
  }

  @override
  void update(void Function(ResolveReviewDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResolveReviewDto build() => _build();

  _$ResolveReviewDto _build() {
    final _$result = _$v ??
        new _$ResolveReviewDto._(
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'ResolveReviewDto', 'action'),
            data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
