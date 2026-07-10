// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_class_accounts_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetClassAccountsResponseDto extends AssetClassAccountsResponseDto {
  @override
  final BuiltList<AssetClassGroupDto> groups;
  @override
  final AssetClassSummaryDto summary;
  @override
  final AssetClassGroupDto? uncategorized;

  factory _$AssetClassAccountsResponseDto(
          [void Function(AssetClassAccountsResponseDtoBuilder)? updates]) =>
      (new AssetClassAccountsResponseDtoBuilder()..update(updates))._build();

  _$AssetClassAccountsResponseDto._(
      {required this.groups, required this.summary, this.uncategorized})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groups, r'AssetClassAccountsResponseDto', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'AssetClassAccountsResponseDto', 'summary');
  }

  @override
  AssetClassAccountsResponseDto rebuild(
          void Function(AssetClassAccountsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetClassAccountsResponseDtoBuilder toBuilder() =>
      new AssetClassAccountsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetClassAccountsResponseDto &&
        groups == other.groups &&
        summary == other.summary &&
        uncategorized == other.uncategorized;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jc(_$hash, uncategorized.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetClassAccountsResponseDto')
          ..add('groups', groups)
          ..add('summary', summary)
          ..add('uncategorized', uncategorized))
        .toString();
  }
}

class AssetClassAccountsResponseDtoBuilder
    implements
        Builder<AssetClassAccountsResponseDto,
            AssetClassAccountsResponseDtoBuilder> {
  _$AssetClassAccountsResponseDto? _$v;

  ListBuilder<AssetClassGroupDto>? _groups;
  ListBuilder<AssetClassGroupDto> get groups =>
      _$this._groups ??= new ListBuilder<AssetClassGroupDto>();
  set groups(ListBuilder<AssetClassGroupDto>? groups) =>
      _$this._groups = groups;

  AssetClassSummaryDtoBuilder? _summary;
  AssetClassSummaryDtoBuilder get summary =>
      _$this._summary ??= new AssetClassSummaryDtoBuilder();
  set summary(AssetClassSummaryDtoBuilder? summary) =>
      _$this._summary = summary;

  AssetClassGroupDtoBuilder? _uncategorized;
  AssetClassGroupDtoBuilder get uncategorized =>
      _$this._uncategorized ??= new AssetClassGroupDtoBuilder();
  set uncategorized(AssetClassGroupDtoBuilder? uncategorized) =>
      _$this._uncategorized = uncategorized;

  AssetClassAccountsResponseDtoBuilder() {
    AssetClassAccountsResponseDto._defaults(this);
  }

  AssetClassAccountsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups.toBuilder();
      _summary = $v.summary.toBuilder();
      _uncategorized = $v.uncategorized?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetClassAccountsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetClassAccountsResponseDto;
  }

  @override
  void update(void Function(AssetClassAccountsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetClassAccountsResponseDto build() => _build();

  _$AssetClassAccountsResponseDto _build() {
    _$AssetClassAccountsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AssetClassAccountsResponseDto._(
              groups: groups.build(),
              summary: summary.build(),
              uncategorized: _uncategorized?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'summary';
        summary.build();
        _$failedField = 'uncategorized';
        _uncategorized?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssetClassAccountsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
