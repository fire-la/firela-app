// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commodity_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommodityResponse extends CommodityResponse {
  @override
  final String id;
  @override
  final String symbol;
  @override
  final Date date;
  @override
  final String? userId;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final String? symbolProfileId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$CommodityResponse(
          [void Function(CommodityResponseBuilder)? updates]) =>
      (new CommodityResponseBuilder()..update(updates))._build();

  _$CommodityResponse._(
      {required this.id,
      required this.symbol,
      required this.date,
      this.userId,
      this.metadata,
      this.symbolProfileId,
      this.createdAt,
      this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CommodityResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'CommodityResponse', 'symbol');
    BuiltValueNullFieldError.checkNotNull(date, r'CommodityResponse', 'date');
  }

  @override
  CommodityResponse rebuild(void Function(CommodityResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommodityResponseBuilder toBuilder() =>
      new CommodityResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommodityResponse &&
        id == other.id &&
        symbol == other.symbol &&
        date == other.date &&
        userId == other.userId &&
        metadata == other.metadata &&
        symbolProfileId == other.symbolProfileId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, symbolProfileId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommodityResponse')
          ..add('id', id)
          ..add('symbol', symbol)
          ..add('date', date)
          ..add('userId', userId)
          ..add('metadata', metadata)
          ..add('symbolProfileId', symbolProfileId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CommodityResponseBuilder
    implements Builder<CommodityResponse, CommodityResponseBuilder> {
  _$CommodityResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  String? _symbolProfileId;
  String? get symbolProfileId => _$this._symbolProfileId;
  set symbolProfileId(String? symbolProfileId) =>
      _$this._symbolProfileId = symbolProfileId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CommodityResponseBuilder() {
    CommodityResponse._defaults(this);
  }

  CommodityResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _symbol = $v.symbol;
      _date = $v.date;
      _userId = $v.userId;
      _metadata = $v.metadata?.toBuilder();
      _symbolProfileId = $v.symbolProfileId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommodityResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommodityResponse;
  }

  @override
  void update(void Function(CommodityResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommodityResponse build() => _build();

  _$CommodityResponse _build() {
    _$CommodityResponse _$result;
    try {
      _$result = _$v ??
          new _$CommodityResponse._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'CommodityResponse', 'id'),
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, r'CommodityResponse', 'symbol'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CommodityResponse', 'date'),
              userId: userId,
              metadata: _metadata?.build(),
              symbolProfileId: symbolProfileId,
              createdAt: createdAt,
              updatedAt: updatedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CommodityResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
