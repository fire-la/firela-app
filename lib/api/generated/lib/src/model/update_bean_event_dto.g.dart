// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_bean_event_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateBeanEventDto extends UpdateBeanEventDto {
  @override
  final String? date;
  @override
  final String? type;
  @override
  final String? description;
  @override
  final JsonObject? meta;

  factory _$UpdateBeanEventDto(
          [void Function(UpdateBeanEventDtoBuilder)? updates]) =>
      (new UpdateBeanEventDtoBuilder()..update(updates))._build();

  _$UpdateBeanEventDto._({this.date, this.type, this.description, this.meta})
      : super._();

  @override
  UpdateBeanEventDto rebuild(
          void Function(UpdateBeanEventDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateBeanEventDtoBuilder toBuilder() =>
      new UpdateBeanEventDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBeanEventDto &&
        date == other.date &&
        type == other.type &&
        description == other.description &&
        meta == other.meta;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateBeanEventDto')
          ..add('date', date)
          ..add('type', type)
          ..add('description', description)
          ..add('meta', meta))
        .toString();
  }
}

class UpdateBeanEventDtoBuilder
    implements Builder<UpdateBeanEventDto, UpdateBeanEventDtoBuilder> {
  _$UpdateBeanEventDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  UpdateBeanEventDtoBuilder() {
    UpdateBeanEventDto._defaults(this);
  }

  UpdateBeanEventDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _type = $v.type;
      _description = $v.description;
      _meta = $v.meta;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateBeanEventDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateBeanEventDto;
  }

  @override
  void update(void Function(UpdateBeanEventDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBeanEventDto build() => _build();

  _$UpdateBeanEventDto _build() {
    final _$result = _$v ??
        new _$UpdateBeanEventDto._(
            date: date, type: type, description: description, meta: meta);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
