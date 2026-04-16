// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountsResponseDto extends AccountsResponseDto {
  @override
  final BuiltList<PlatformGroupDto> groups;
  @override
  final AccountsSummaryDto summary;

  factory _$AccountsResponseDto(
          [void Function(AccountsResponseDtoBuilder)? updates]) =>
      (new AccountsResponseDtoBuilder()..update(updates))._build();

  _$AccountsResponseDto._({required this.groups, required this.summary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groups, r'AccountsResponseDto', 'groups');
    BuiltValueNullFieldError.checkNotNull(
        summary, r'AccountsResponseDto', 'summary');
  }

  @override
  AccountsResponseDto rebuild(
          void Function(AccountsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountsResponseDtoBuilder toBuilder() =>
      new AccountsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountsResponseDto &&
        groups == other.groups &&
        summary == other.summary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, summary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountsResponseDto')
          ..add('groups', groups)
          ..add('summary', summary))
        .toString();
  }
}

class AccountsResponseDtoBuilder
    implements Builder<AccountsResponseDto, AccountsResponseDtoBuilder> {
  _$AccountsResponseDto? _$v;

  ListBuilder<PlatformGroupDto>? _groups;
  ListBuilder<PlatformGroupDto> get groups =>
      _$this._groups ??= new ListBuilder<PlatformGroupDto>();
  set groups(ListBuilder<PlatformGroupDto>? groups) => _$this._groups = groups;

  AccountsSummaryDtoBuilder? _summary;
  AccountsSummaryDtoBuilder get summary =>
      _$this._summary ??= new AccountsSummaryDtoBuilder();
  set summary(AccountsSummaryDtoBuilder? summary) => _$this._summary = summary;

  AccountsResponseDtoBuilder() {
    AccountsResponseDto._defaults(this);
  }

  AccountsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups.toBuilder();
      _summary = $v.summary.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountsResponseDto;
  }

  @override
  void update(void Function(AccountsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountsResponseDto build() => _build();

  _$AccountsResponseDto _build() {
    _$AccountsResponseDto _$result;
    try {
      _$result = _$v ??
          new _$AccountsResponseDto._(
              groups: groups.build(), summary: summary.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        groups.build();
        _$failedField = 'summary';
        summary.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountsResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
