// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_forecast_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonthlyForecastDto extends MonthlyForecastDto {
  @override
  final String month;
  @override
  final num expectedOutflow;
  @override
  final num itemCount;
  @override
  final JsonObject byCurrency;
  @override
  final BuiltList<ForecastItemDto> items;

  factory _$MonthlyForecastDto(
          [void Function(MonthlyForecastDtoBuilder)? updates]) =>
      (new MonthlyForecastDtoBuilder()..update(updates))._build();

  _$MonthlyForecastDto._(
      {required this.month,
      required this.expectedOutflow,
      required this.itemCount,
      required this.byCurrency,
      required this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        month, r'MonthlyForecastDto', 'month');
    BuiltValueNullFieldError.checkNotNull(
        expectedOutflow, r'MonthlyForecastDto', 'expectedOutflow');
    BuiltValueNullFieldError.checkNotNull(
        itemCount, r'MonthlyForecastDto', 'itemCount');
    BuiltValueNullFieldError.checkNotNull(
        byCurrency, r'MonthlyForecastDto', 'byCurrency');
    BuiltValueNullFieldError.checkNotNull(
        items, r'MonthlyForecastDto', 'items');
  }

  @override
  MonthlyForecastDto rebuild(
          void Function(MonthlyForecastDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyForecastDtoBuilder toBuilder() =>
      new MonthlyForecastDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyForecastDto &&
        month == other.month &&
        expectedOutflow == other.expectedOutflow &&
        itemCount == other.itemCount &&
        byCurrency == other.byCurrency &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, expectedOutflow.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthlyForecastDto')
          ..add('month', month)
          ..add('expectedOutflow', expectedOutflow)
          ..add('itemCount', itemCount)
          ..add('byCurrency', byCurrency)
          ..add('items', items))
        .toString();
  }
}

class MonthlyForecastDtoBuilder
    implements Builder<MonthlyForecastDto, MonthlyForecastDtoBuilder> {
  _$MonthlyForecastDto? _$v;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  num? _expectedOutflow;
  num? get expectedOutflow => _$this._expectedOutflow;
  set expectedOutflow(num? expectedOutflow) =>
      _$this._expectedOutflow = expectedOutflow;

  num? _itemCount;
  num? get itemCount => _$this._itemCount;
  set itemCount(num? itemCount) => _$this._itemCount = itemCount;

  JsonObject? _byCurrency;
  JsonObject? get byCurrency => _$this._byCurrency;
  set byCurrency(JsonObject? byCurrency) => _$this._byCurrency = byCurrency;

  ListBuilder<ForecastItemDto>? _items;
  ListBuilder<ForecastItemDto> get items =>
      _$this._items ??= new ListBuilder<ForecastItemDto>();
  set items(ListBuilder<ForecastItemDto>? items) => _$this._items = items;

  MonthlyForecastDtoBuilder() {
    MonthlyForecastDto._defaults(this);
  }

  MonthlyForecastDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _month = $v.month;
      _expectedOutflow = $v.expectedOutflow;
      _itemCount = $v.itemCount;
      _byCurrency = $v.byCurrency;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyForecastDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonthlyForecastDto;
  }

  @override
  void update(void Function(MonthlyForecastDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonthlyForecastDto build() => _build();

  _$MonthlyForecastDto _build() {
    _$MonthlyForecastDto _$result;
    try {
      _$result = _$v ??
          new _$MonthlyForecastDto._(
              month: BuiltValueNullFieldError.checkNotNull(
                  month, r'MonthlyForecastDto', 'month'),
              expectedOutflow: BuiltValueNullFieldError.checkNotNull(
                  expectedOutflow, r'MonthlyForecastDto', 'expectedOutflow'),
              itemCount: BuiltValueNullFieldError.checkNotNull(
                  itemCount, r'MonthlyForecastDto', 'itemCount'),
              byCurrency: BuiltValueNullFieldError.checkNotNull(
                  byCurrency, r'MonthlyForecastDto', 'byCurrency'),
              items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MonthlyForecastDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
