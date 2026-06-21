// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommodityResponseDto extends CommodityResponseDto {
  @override
  final String id;
  @override
  final String? userId;
  @override
  final String symbol;
  @override
  final Date date;
  @override
  final JsonObject metadata;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$CommodityResponseDto(
          [void Function(CommodityResponseDtoBuilder)? updates]) =>
      (new CommodityResponseDtoBuilder()..update(updates))._build();

  _$CommodityResponseDto._(
      {required this.id,
      this.userId,
      required this.symbol,
      required this.date,
      required this.metadata,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CommodityResponseDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'CommodityResponseDto', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        date, r'CommodityResponseDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        metadata, r'CommodityResponseDto', 'metadata');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'CommodityResponseDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'CommodityResponseDto', 'updatedAt');
  }

  @override
  CommodityResponseDto rebuild(
          void Function(CommodityResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommodityResponseDtoBuilder toBuilder() =>
      new CommodityResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommodityResponseDto &&
        id == other.id &&
        userId == other.userId &&
        symbol == other.symbol &&
        date == other.date &&
        metadata == other.metadata &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommodityResponseDto')
          ..add('id', id)
          ..add('userId', userId)
          ..add('symbol', symbol)
          ..add('date', date)
          ..add('metadata', metadata)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CommodityResponseDtoBuilder
    implements Builder<CommodityResponseDto, CommodityResponseDtoBuilder> {
  _$CommodityResponseDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CommodityResponseDtoBuilder() {
    CommodityResponseDto._defaults(this);
  }

  CommodityResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _symbol = $v.symbol;
      _date = $v.date;
      _metadata = $v.metadata;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommodityResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommodityResponseDto;
  }

  @override
  void update(void Function(CommodityResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommodityResponseDto build() => _build();

  _$CommodityResponseDto _build() {
    final _$result = _$v ??
        new _$CommodityResponseDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'CommodityResponseDto', 'id'),
            userId: userId,
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, r'CommodityResponseDto', 'symbol'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CommodityResponseDto', 'date'),
            metadata: BuiltValueNullFieldError.checkNotNull(
                metadata, r'CommodityResponseDto', 'metadata'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'CommodityResponseDto', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'CommodityResponseDto', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
