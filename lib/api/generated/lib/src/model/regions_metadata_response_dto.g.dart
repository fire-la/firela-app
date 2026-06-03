// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regions_metadata_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegionsMetadataResponseDto extends RegionsMetadataResponseDto {
  @override
  final BuiltList<RegionInfoDto> regions;

  factory _$RegionsMetadataResponseDto(
          [void Function(RegionsMetadataResponseDtoBuilder)? updates]) =>
      (new RegionsMetadataResponseDtoBuilder()..update(updates))._build();

  _$RegionsMetadataResponseDto._({required this.regions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        regions, r'RegionsMetadataResponseDto', 'regions');
  }

  @override
  RegionsMetadataResponseDto rebuild(
          void Function(RegionsMetadataResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegionsMetadataResponseDtoBuilder toBuilder() =>
      new RegionsMetadataResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegionsMetadataResponseDto && regions == other.regions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, regions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegionsMetadataResponseDto')
          ..add('regions', regions))
        .toString();
  }
}

class RegionsMetadataResponseDtoBuilder
    implements
        Builder<RegionsMetadataResponseDto, RegionsMetadataResponseDtoBuilder> {
  _$RegionsMetadataResponseDto? _$v;

  ListBuilder<RegionInfoDto>? _regions;
  ListBuilder<RegionInfoDto> get regions =>
      _$this._regions ??= new ListBuilder<RegionInfoDto>();
  set regions(ListBuilder<RegionInfoDto>? regions) => _$this._regions = regions;

  RegionsMetadataResponseDtoBuilder() {
    RegionsMetadataResponseDto._defaults(this);
  }

  RegionsMetadataResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _regions = $v.regions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegionsMetadataResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegionsMetadataResponseDto;
  }

  @override
  void update(void Function(RegionsMetadataResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegionsMetadataResponseDto build() => _build();

  _$RegionsMetadataResponseDto _build() {
    _$RegionsMetadataResponseDto _$result;
    try {
      _$result =
          _$v ?? new _$RegionsMetadataResponseDto._(regions: regions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'regions';
        regions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegionsMetadataResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
