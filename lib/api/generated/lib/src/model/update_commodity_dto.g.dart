// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_commodity_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCommodityDto extends UpdateCommodityDto {
  @override
  final Date? date;
  @override
  final JsonObject? metadata;

  factory _$UpdateCommodityDto(
          [void Function(UpdateCommodityDtoBuilder)? updates]) =>
      (new UpdateCommodityDtoBuilder()..update(updates))._build();

  _$UpdateCommodityDto._({this.date, this.metadata}) : super._();

  @override
  UpdateCommodityDto rebuild(
          void Function(UpdateCommodityDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCommodityDtoBuilder toBuilder() =>
      new UpdateCommodityDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCommodityDto &&
        date == other.date &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCommodityDto')
          ..add('date', date)
          ..add('metadata', metadata))
        .toString();
  }
}

class UpdateCommodityDtoBuilder
    implements Builder<UpdateCommodityDto, UpdateCommodityDtoBuilder> {
  _$UpdateCommodityDto? _$v;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  UpdateCommodityDtoBuilder() {
    UpdateCommodityDto._defaults(this);
  }

  UpdateCommodityDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCommodityDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateCommodityDto;
  }

  @override
  void update(void Function(UpdateCommodityDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCommodityDto build() => _build();

  _$UpdateCommodityDto _build() {
    final _$result =
        _$v ?? new _$UpdateCommodityDto._(date: date, metadata: metadata);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
