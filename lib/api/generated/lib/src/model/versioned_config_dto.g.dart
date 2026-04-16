// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versioned_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersionedConfigDto extends VersionedConfigDto {
  @override
  final String version;
  @override
  final String schema;
  @override
  final ImporterConfigDataDto data;

  factory _$VersionedConfigDto(
          [void Function(VersionedConfigDtoBuilder)? updates]) =>
      (new VersionedConfigDtoBuilder()..update(updates))._build();

  _$VersionedConfigDto._(
      {required this.version, required this.schema, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'VersionedConfigDto', 'version');
    BuiltValueNullFieldError.checkNotNull(
        schema, r'VersionedConfigDto', 'schema');
    BuiltValueNullFieldError.checkNotNull(data, r'VersionedConfigDto', 'data');
  }

  @override
  VersionedConfigDto rebuild(
          void Function(VersionedConfigDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersionedConfigDtoBuilder toBuilder() =>
      new VersionedConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionedConfigDto &&
        version == other.version &&
        schema == other.schema &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionedConfigDto')
          ..add('version', version)
          ..add('schema', schema)
          ..add('data', data))
        .toString();
  }
}

class VersionedConfigDtoBuilder
    implements Builder<VersionedConfigDto, VersionedConfigDtoBuilder> {
  _$VersionedConfigDto? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _schema;
  String? get schema => _$this._schema;
  set schema(String? schema) => _$this._schema = schema;

  ImporterConfigDataDtoBuilder? _data;
  ImporterConfigDataDtoBuilder get data =>
      _$this._data ??= new ImporterConfigDataDtoBuilder();
  set data(ImporterConfigDataDtoBuilder? data) => _$this._data = data;

  VersionedConfigDtoBuilder() {
    VersionedConfigDto._defaults(this);
  }

  VersionedConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _schema = $v.schema;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionedConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VersionedConfigDto;
  }

  @override
  void update(void Function(VersionedConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionedConfigDto build() => _build();

  _$VersionedConfigDto _build() {
    _$VersionedConfigDto _$result;
    try {
      _$result = _$v ??
          new _$VersionedConfigDto._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'VersionedConfigDto', 'version'),
              schema: BuiltValueNullFieldError.checkNotNull(
                  schema, r'VersionedConfigDto', 'schema'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VersionedConfigDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
