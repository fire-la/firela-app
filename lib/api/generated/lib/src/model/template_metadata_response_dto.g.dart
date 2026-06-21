// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_metadata_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateMetadataResponseDto extends TemplateMetadataResponseDto {
  @override
  final TemplateMetadataDto? metadata;

  factory _$TemplateMetadataResponseDto(
          [void Function(TemplateMetadataResponseDtoBuilder)? updates]) =>
      (new TemplateMetadataResponseDtoBuilder()..update(updates))._build();

  _$TemplateMetadataResponseDto._({this.metadata}) : super._();

  @override
  TemplateMetadataResponseDto rebuild(
          void Function(TemplateMetadataResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateMetadataResponseDtoBuilder toBuilder() =>
      new TemplateMetadataResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateMetadataResponseDto && metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplateMetadataResponseDto')
          ..add('metadata', metadata))
        .toString();
  }
}

class TemplateMetadataResponseDtoBuilder
    implements
        Builder<TemplateMetadataResponseDto,
            TemplateMetadataResponseDtoBuilder> {
  _$TemplateMetadataResponseDto? _$v;

  TemplateMetadataDtoBuilder? _metadata;
  TemplateMetadataDtoBuilder get metadata =>
      _$this._metadata ??= new TemplateMetadataDtoBuilder();
  set metadata(TemplateMetadataDtoBuilder? metadata) =>
      _$this._metadata = metadata;

  TemplateMetadataResponseDtoBuilder() {
    TemplateMetadataResponseDto._defaults(this);
  }

  TemplateMetadataResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateMetadataResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplateMetadataResponseDto;
  }

  @override
  void update(void Function(TemplateMetadataResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateMetadataResponseDto build() => _build();

  _$TemplateMetadataResponseDto _build() {
    _$TemplateMetadataResponseDto _$result;
    try {
      _$result = _$v ??
          new _$TemplateMetadataResponseDto._(metadata: _metadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TemplateMetadataResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
