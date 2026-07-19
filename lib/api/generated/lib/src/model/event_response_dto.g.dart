// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventResponseDto extends EventResponseDto {
  @override
  final String id;
  @override
  final String userId;
  @override
  final Date date;
  @override
  final String type;
  @override
  final String description;
  @override
  final JsonObject meta;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$EventResponseDto(
          [void Function(EventResponseDtoBuilder)? updates]) =>
      (new EventResponseDtoBuilder()..update(updates))._build();

  _$EventResponseDto._(
      {required this.id,
      required this.userId,
      required this.date,
      required this.type,
      required this.description,
      required this.meta,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'EventResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        userId, r'EventResponseDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(date, r'EventResponseDto', 'date');
    BuiltValueNullFieldError.checkNotNull(type, r'EventResponseDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        description, r'EventResponseDto', 'description');
    BuiltValueNullFieldError.checkNotNull(meta, r'EventResponseDto', 'meta');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'EventResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'EventResponseDto', 'updatedAt');
  }

  @override
  EventResponseDto rebuild(void Function(EventResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventResponseDtoBuilder toBuilder() =>
      new EventResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventResponseDto &&
        id == other.id &&
        userId == other.userId &&
        date == other.date &&
        type == other.type &&
        description == other.description &&
        meta == other.meta &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('date', date)
          ..add('type', type)
          ..add('description', description)
          ..add('meta', meta)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class EventResponseDtoBuilder
    implements Builder<EventResponseDto, EventResponseDtoBuilder> {
  _$EventResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  EventResponseDtoBuilder() {
    EventResponseDto._defaults(this);
  }

  EventResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _date = $v.date;
      _type = $v.type;
      _description = $v.description;
      _meta = $v.meta;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventResponseDto;
  }

  @override
  void update(void Function(EventResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventResponseDto build() => _build();

  _$EventResponseDto _build() {
    final _$result = _$v ??
        new _$EventResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EventResponseDto', 'id'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'EventResponseDto', 'userId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'EventResponseDto', 'date'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'EventResponseDto', 'type'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'EventResponseDto', 'description'),
            meta: BuiltValueNullFieldError.checkNotNull(
                meta, r'EventResponseDto', 'meta'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'EventResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'EventResponseDto', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
