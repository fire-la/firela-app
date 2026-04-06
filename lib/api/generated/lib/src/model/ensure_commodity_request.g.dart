// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ensure_commodity_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnsureCommodityRequest extends EnsureCommodityRequest {
  @override
  final Date date;
  @override
  final BuiltMap<String, JsonObject?>? metadata;
  @override
  final String? symbolProfileId;

  factory _$EnsureCommodityRequest(
          [void Function(EnsureCommodityRequestBuilder)? updates]) =>
      (new EnsureCommodityRequestBuilder()..update(updates))._build();

  _$EnsureCommodityRequest._(
      {required this.date, this.metadata, this.symbolProfileId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'EnsureCommodityRequest', 'date');
  }

  @override
  EnsureCommodityRequest rebuild(
          void Function(EnsureCommodityRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnsureCommodityRequestBuilder toBuilder() =>
      new EnsureCommodityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnsureCommodityRequest &&
        date == other.date &&
        metadata == other.metadata &&
        symbolProfileId == other.symbolProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, symbolProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnsureCommodityRequest')
          ..add('date', date)
          ..add('metadata', metadata)
          ..add('symbolProfileId', symbolProfileId))
        .toString();
  }
}

class EnsureCommodityRequestBuilder
    implements Builder<EnsureCommodityRequest, EnsureCommodityRequestBuilder> {
  _$EnsureCommodityRequest? _$v;

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

  EnsureCommodityRequestBuilder() {
    EnsureCommodityRequest._defaults(this);
  }

  EnsureCommodityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _metadata = $v.metadata?.toBuilder();
      _symbolProfileId = $v.symbolProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnsureCommodityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnsureCommodityRequest;
  }

  @override
  void update(void Function(EnsureCommodityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnsureCommodityRequest build() => _build();

  _$EnsureCommodityRequest _build() {
    _$EnsureCommodityRequest _$result;
    try {
      _$result = _$v ??
          new _$EnsureCommodityRequest._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'EnsureCommodityRequest', 'date'),
              metadata: _metadata?.build(),
              symbolProfileId: symbolProfileId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnsureCommodityRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
