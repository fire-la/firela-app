// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_config_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConfigDataDto extends UpdateConfigDataDto {
  @override
  final UpdateMapperDefaultsDto? defaults;

  factory _$UpdateConfigDataDto(
          [void Function(UpdateConfigDataDtoBuilder)? updates]) =>
      (new UpdateConfigDataDtoBuilder()..update(updates))._build();

  _$UpdateConfigDataDto._({this.defaults}) : super._();

  @override
  UpdateConfigDataDto rebuild(
          void Function(UpdateConfigDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConfigDataDtoBuilder toBuilder() =>
      new UpdateConfigDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigDataDto && defaults == other.defaults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateConfigDataDto')
          ..add('defaults', defaults))
        .toString();
  }
}

class UpdateConfigDataDtoBuilder
    implements Builder<UpdateConfigDataDto, UpdateConfigDataDtoBuilder> {
  _$UpdateConfigDataDto? _$v;

  UpdateMapperDefaultsDtoBuilder? _defaults;
  UpdateMapperDefaultsDtoBuilder get defaults =>
      _$this._defaults ??= new UpdateMapperDefaultsDtoBuilder();
  set defaults(UpdateMapperDefaultsDtoBuilder? defaults) =>
      _$this._defaults = defaults;

  UpdateConfigDataDtoBuilder() {
    UpdateConfigDataDto._defaults(this);
  }

  UpdateConfigDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaults = $v.defaults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConfigDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateConfigDataDto;
  }

  @override
  void update(void Function(UpdateConfigDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigDataDto build() => _build();

  _$UpdateConfigDataDto _build() {
    _$UpdateConfigDataDto _$result;
    try {
      _$result =
          _$v ?? new _$UpdateConfigDataDto._(defaults: _defaults?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaults';
        _defaults?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateConfigDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
