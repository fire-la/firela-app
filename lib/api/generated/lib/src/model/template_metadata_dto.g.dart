// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_metadata_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateMetadataDto extends TemplateMetadataDto {
  @override
  final bool extendable;
  @override
  final String rootType;

  factory _$TemplateMetadataDto(
          [void Function(TemplateMetadataDtoBuilder)? updates]) =>
      (new TemplateMetadataDtoBuilder()..update(updates))._build();

  _$TemplateMetadataDto._({required this.extendable, required this.rootType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        extendable, r'TemplateMetadataDto', 'extendable');
    BuiltValueNullFieldError.checkNotNull(
        rootType, r'TemplateMetadataDto', 'rootType');
  }

  @override
  TemplateMetadataDto rebuild(
          void Function(TemplateMetadataDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateMetadataDtoBuilder toBuilder() =>
      new TemplateMetadataDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateMetadataDto &&
        extendable == other.extendable &&
        rootType == other.rootType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, extendable.hashCode);
    _$hash = $jc(_$hash, rootType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateMetadataDto')
          ..add('extendable', extendable)
          ..add('rootType', rootType))
        .toString();
  }
}

class TemplateMetadataDtoBuilder
    implements Builder<TemplateMetadataDto, TemplateMetadataDtoBuilder> {
  _$TemplateMetadataDto? _$v;

  bool? _extendable;
  bool? get extendable => _$this._extendable;
  set extendable(bool? extendable) => _$this._extendable = extendable;

  String? _rootType;
  String? get rootType => _$this._rootType;
  set rootType(String? rootType) => _$this._rootType = rootType;

  TemplateMetadataDtoBuilder() {
    TemplateMetadataDto._defaults(this);
  }

  TemplateMetadataDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extendable = $v.extendable;
      _rootType = $v.rootType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateMetadataDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplateMetadataDto;
  }

  @override
  void update(void Function(TemplateMetadataDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateMetadataDto build() => _build();

  _$TemplateMetadataDto _build() {
    final _$result = _$v ??
        new _$TemplateMetadataDto._(
            extendable: BuiltValueNullFieldError.checkNotNull(
                extendable, r'TemplateMetadataDto', 'extendable'),
            rootType: BuiltValueNullFieldError.checkNotNull(
                rootType, r'TemplateMetadataDto', 'rootType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
