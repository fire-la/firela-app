// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'importer_config_data_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImporterConfigDataDto extends ImporterConfigDataDto {
  @override
  final MapperDefaultsDto defaults;

  factory _$ImporterConfigDataDto(
          [void Function(ImporterConfigDataDtoBuilder)? updates]) =>
      (new ImporterConfigDataDtoBuilder()..update(updates))._build();

  _$ImporterConfigDataDto._({required this.defaults}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaults, r'ImporterConfigDataDto', 'defaults');
  }

  @override
  ImporterConfigDataDto rebuild(
          void Function(ImporterConfigDataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImporterConfigDataDtoBuilder toBuilder() =>
      new ImporterConfigDataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImporterConfigDataDto && defaults == other.defaults;
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
    return (newBuiltValueToStringHelper(r'ImporterConfigDataDto')
          ..add('defaults', defaults))
        .toString();
  }
}

class ImporterConfigDataDtoBuilder
    implements Builder<ImporterConfigDataDto, ImporterConfigDataDtoBuilder> {
  _$ImporterConfigDataDto? _$v;

  MapperDefaultsDtoBuilder? _defaults;
  MapperDefaultsDtoBuilder get defaults =>
      _$this._defaults ??= new MapperDefaultsDtoBuilder();
  set defaults(MapperDefaultsDtoBuilder? defaults) =>
      _$this._defaults = defaults;

  ImporterConfigDataDtoBuilder() {
    ImporterConfigDataDto._defaults(this);
  }

  ImporterConfigDataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaults = $v.defaults.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImporterConfigDataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImporterConfigDataDto;
  }

  @override
  void update(void Function(ImporterConfigDataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImporterConfigDataDto build() => _build();

  _$ImporterConfigDataDto _build() {
    _$ImporterConfigDataDto _$result;
    try {
      _$result =
          _$v ?? new _$ImporterConfigDataDto._(defaults: defaults.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaults';
        defaults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImporterConfigDataDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
