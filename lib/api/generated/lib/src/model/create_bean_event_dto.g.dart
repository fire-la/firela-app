// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bean_event_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBeanEventDto extends CreateBeanEventDto {
  @override
  final String date;
  @override
  final String type;
  @override
  final String description;
  @override
  final JsonObject? meta;

  factory _$CreateBeanEventDto(
          [void Function(CreateBeanEventDtoBuilder)? updates]) =>
      (new CreateBeanEventDtoBuilder()..update(updates))._build();

  _$CreateBeanEventDto._(
      {required this.date,
      required this.type,
      required this.description,
      this.meta})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, r'CreateBeanEventDto', 'date');
    BuiltValueNullFieldError.checkNotNull(type, r'CreateBeanEventDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        description, r'CreateBeanEventDto', 'description');
  }

  @override
  CreateBeanEventDto rebuild(
          void Function(CreateBeanEventDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateBeanEventDtoBuilder toBuilder() =>
      new CreateBeanEventDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBeanEventDto &&
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
    return (newBuiltValueToStringHelper(r'CreateBeanEventDto')
          ..add('date', date)
          ..add('type', type)
          ..add('description', description)
          ..add('meta', meta))
        .toString();
  }
}

class CreateBeanEventDtoBuilder
    implements Builder<CreateBeanEventDto, CreateBeanEventDtoBuilder> {
  _$CreateBeanEventDto? _$v;

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

  CreateBeanEventDtoBuilder() {
    CreateBeanEventDto._defaults(this);
  }

  CreateBeanEventDtoBuilder get _$this {
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
  void replace(CreateBeanEventDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateBeanEventDto;
  }

  @override
  void update(void Function(CreateBeanEventDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBeanEventDto build() => _build();

  _$CreateBeanEventDto _build() {
    final _$result = _$v ??
        new _$CreateBeanEventDto._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CreateBeanEventDto', 'date'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'CreateBeanEventDto', 'type'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'CreateBeanEventDto', 'description'),
            meta: meta);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
