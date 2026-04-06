// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_commodity_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCommodityRequest extends CreateCommodityRequest {
  @override
  final String symbol;
  @override
  final Date date;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final String? symbolProfileId;

  factory _$CreateCommodityRequest(
          [void Function(CreateCommodityRequestBuilder)? updates]) =>
      (new CreateCommodityRequestBuilder()..update(updates))._build();

  _$CreateCommodityRequest._(
      {required this.symbol,
      required this.date,
      this.metadata,
      this.symbolProfileId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'CreateCommodityRequest', 'symbol');
    BuiltValueNullFieldError.checkNotNull(
        date, r'CreateCommodityRequest', 'date');
  }

  @override
  CreateCommodityRequest rebuild(
          void Function(CreateCommodityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommodityRequestBuilder toBuilder() =>
      new CreateCommodityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommodityRequest &&
        symbol == other.symbol &&
        date == other.date &&
        metadata == other.metadata &&
        symbolProfileId == other.symbolProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, symbolProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCommodityRequest')
          ..add('symbol', symbol)
          ..add('date', date)
          ..add('metadata', metadata)
          ..add('symbolProfileId', symbolProfileId))
        .toString();
  }
}

class CreateCommodityRequestBuilder
    implements Builder<CreateCommodityRequest, CreateCommodityRequestBuilder> {
  _$CreateCommodityRequest? _$v;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  MapBuilder<String, JsonObject?>? _metadata;
  MapBuilder<String, JsonObject?> get metadata =>
      _$this._metadata ??= new MapBuilder<String, JsonObject?>();
  set metadata(MapBuilder<String, JsonObject?>? metadata) =>
      _$this._metadata = metadata;

  String? _symbolProfileId;
  String? get symbolProfileId => _$this._symbolProfileId;
  set symbolProfileId(String? symbolProfileId) =>
      _$this._symbolProfileId = symbolProfileId;

  CreateCommodityRequestBuilder() {
    CreateCommodityRequest._defaults(this);
  }

  CreateCommodityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _symbol = $v.symbol;
      _date = $v.date;
      _metadata = $v.metadata?.toBuilder();
      _symbolProfileId = $v.symbolProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommodityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCommodityRequest;
  }

  @override
  void update(void Function(CreateCommodityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCommodityRequest build() => _build();

  _$CreateCommodityRequest _build() {
    _$CreateCommodityRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCommodityRequest._(
              symbol: BuiltValueNullFieldError.checkNotNull(
                  symbol, r'CreateCommodityRequest', 'symbol'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'CreateCommodityRequest', 'date'),
              metadata: _metadata?.build(),
              symbolProfileId: symbolProfileId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCommodityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
