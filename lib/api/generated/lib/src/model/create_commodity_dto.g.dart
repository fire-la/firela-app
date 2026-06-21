// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_commodity_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCommodityDto extends CreateCommodityDto {
  @override
  final String symbol;
  @override
  final Date date;
  @override
  final JsonObject? metadata;

  factory _$CreateCommodityDto(
          [void Function(CreateCommodityDtoBuilder)? updates]) =>
      (new CreateCommodityDtoBuilder()..update(updates))._build();

  _$CreateCommodityDto._(
      {required this.symbol, required this.date, this.metadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        symbol, r'CreateCommodityDto', 'symbol');
    BuiltValueNullFieldError.checkNotNull(date, r'CreateCommodityDto', 'date');
  }

  @override
  CreateCommodityDto rebuild(
          void Function(CreateCommodityDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCommodityDtoBuilder toBuilder() =>
      new CreateCommodityDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCommodityDto &&
        symbol == other.symbol &&
        date == other.date &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, symbol.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCommodityDto')
          ..add('symbol', symbol)
          ..add('date', date)
          ..add('metadata', metadata))
        .toString();
  }
}

class CreateCommodityDtoBuilder
    implements Builder<CreateCommodityDto, CreateCommodityDtoBuilder> {
  _$CreateCommodityDto? _$v;

  String? _symbol;
  String? get symbol => _$this._symbol;
  set symbol(String? symbol) => _$this._symbol = symbol;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  JsonObject? _metadata;
  JsonObject? get metadata => _$this._metadata;
  set metadata(JsonObject? metadata) => _$this._metadata = metadata;

  CreateCommodityDtoBuilder() {
    CreateCommodityDto._defaults(this);
  }

  CreateCommodityDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _symbol = $v.symbol;
      _date = $v.date;
      _metadata = $v.metadata;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCommodityDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCommodityDto;
  }

  @override
  void update(void Function(CreateCommodityDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCommodityDto build() => _build();

  _$CreateCommodityDto _build() {
    final _$result = _$v ??
        new _$CreateCommodityDto._(
            symbol: BuiltValueNullFieldError.checkNotNull(
                symbol, r'CreateCommodityDto', 'symbol'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CreateCommodityDto', 'date'),
            metadata: metadata);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
