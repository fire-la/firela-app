// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_importer_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateImporterConfigDto extends UpdateImporterConfigDto {
  @override
  final UpdateConfigDataDto? data;

  factory _$UpdateImporterConfigDto(
          [void Function(UpdateImporterConfigDtoBuilder)? updates]) =>
      (new UpdateImporterConfigDtoBuilder()..update(updates))._build();

  _$UpdateImporterConfigDto._({this.data}) : super._();

  @override
  UpdateImporterConfigDto rebuild(
          void Function(UpdateImporterConfigDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateImporterConfigDtoBuilder toBuilder() =>
      new UpdateImporterConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateImporterConfigDto && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateImporterConfigDto')
          ..add('data', data))
        .toString();
  }
}

class UpdateImporterConfigDtoBuilder
    implements
        Builder<UpdateImporterConfigDto, UpdateImporterConfigDtoBuilder> {
  _$UpdateImporterConfigDto? _$v;

  UpdateConfigDataDtoBuilder? _data;
  UpdateConfigDataDtoBuilder get data =>
      _$this._data ??= new UpdateConfigDataDtoBuilder();
  set data(UpdateConfigDataDtoBuilder? data) => _$this._data = data;

  UpdateImporterConfigDtoBuilder() {
    UpdateImporterConfigDto._defaults(this);
  }

  UpdateImporterConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateImporterConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateImporterConfigDto;
  }

  @override
  void update(void Function(UpdateImporterConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateImporterConfigDto build() => _build();

  _$UpdateImporterConfigDto _build() {
    _$UpdateImporterConfigDto _$result;
    try {
      _$result = _$v ?? new _$UpdateImporterConfigDto._(data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateImporterConfigDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
