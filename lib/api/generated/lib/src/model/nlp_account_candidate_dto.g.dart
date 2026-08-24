// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_account_candidate_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpAccountCandidateDto extends NlpAccountCandidateDto {
  @override
  final String path;
  @override
  final String name;

  factory _$NlpAccountCandidateDto(
          [void Function(NlpAccountCandidateDtoBuilder)? updates]) =>
      (new NlpAccountCandidateDtoBuilder()..update(updates))._build();

  _$NlpAccountCandidateDto._({required this.path, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        path, r'NlpAccountCandidateDto', 'path');
    BuiltValueNullFieldError.checkNotNull(
        name, r'NlpAccountCandidateDto', 'name');
  }

  @override
  NlpAccountCandidateDto rebuild(
          void Function(NlpAccountCandidateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpAccountCandidateDtoBuilder toBuilder() =>
      new NlpAccountCandidateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpAccountCandidateDto &&
        path == other.path &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpAccountCandidateDto')
          ..add('path', path)
          ..add('name', name))
        .toString();
  }
}

class NlpAccountCandidateDtoBuilder
    implements Builder<NlpAccountCandidateDto, NlpAccountCandidateDtoBuilder> {
  _$NlpAccountCandidateDto? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NlpAccountCandidateDtoBuilder() {
    NlpAccountCandidateDto._defaults(this);
  }

  NlpAccountCandidateDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpAccountCandidateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpAccountCandidateDto;
  }

  @override
  void update(void Function(NlpAccountCandidateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpAccountCandidateDto build() => _build();

  _$NlpAccountCandidateDto _build() {
    final _$result = _$v ??
        new _$NlpAccountCandidateDto._(
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'NlpAccountCandidateDto', 'path'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NlpAccountCandidateDto', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
