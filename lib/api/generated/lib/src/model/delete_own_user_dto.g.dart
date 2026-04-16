// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_own_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteOwnUserDto extends DeleteOwnUserDto {
  @override
  final String accessToken;

  factory _$DeleteOwnUserDto(
          [void Function(DeleteOwnUserDtoBuilder)? updates]) =>
      (new DeleteOwnUserDtoBuilder()..update(updates))._build();

  _$DeleteOwnUserDto._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'DeleteOwnUserDto', 'accessToken');
  }

  @override
  DeleteOwnUserDto rebuild(void Function(DeleteOwnUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteOwnUserDtoBuilder toBuilder() =>
      new DeleteOwnUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteOwnUserDto && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteOwnUserDto')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class DeleteOwnUserDtoBuilder
    implements Builder<DeleteOwnUserDto, DeleteOwnUserDtoBuilder> {
  _$DeleteOwnUserDto? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  DeleteOwnUserDtoBuilder() {
    DeleteOwnUserDto._defaults(this);
  }

  DeleteOwnUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteOwnUserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteOwnUserDto;
  }

  @override
  void update(void Function(DeleteOwnUserDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteOwnUserDto build() => _build();

  _$DeleteOwnUserDto _build() {
    final _$result = _$v ??
        new _$DeleteOwnUserDto._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'DeleteOwnUserDto', 'accessToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
