// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_list_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventListResponseDto extends EventListResponseDto {
  @override
  final BuiltList<EventResponseDto> items;
  @override
  final num total;

  factory _$EventListResponseDto(
          [void Function(EventListResponseDtoBuilder)? updates]) =>
      (new EventListResponseDtoBuilder()..update(updates))._build();

  _$EventListResponseDto._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'EventListResponseDto', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'EventListResponseDto', 'total');
  }

  @override
  EventListResponseDto rebuild(
          void Function(EventListResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventListResponseDtoBuilder toBuilder() =>
      new EventListResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventListResponseDto &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventListResponseDto')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class EventListResponseDtoBuilder
    implements Builder<EventListResponseDto, EventListResponseDtoBuilder> {
  _$EventListResponseDto? _$v;

  ListBuilder<EventResponseDto>? _items;
  ListBuilder<EventResponseDto> get items =>
      _$this._items ??= new ListBuilder<EventResponseDto>();
  set items(ListBuilder<EventResponseDto>? items) => _$this._items = items;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  EventListResponseDtoBuilder() {
    EventListResponseDto._defaults(this);
  }

  EventListResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventListResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventListResponseDto;
  }

  @override
  void update(void Function(EventListResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventListResponseDto build() => _build();

  _$EventListResponseDto _build() {
    _$EventListResponseDto _$result;
    try {
      _$result = _$v ??
          new _$EventListResponseDto._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'EventListResponseDto', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventListResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
