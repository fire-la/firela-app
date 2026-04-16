// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_currency_point_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultiCurrencyPointDto extends MultiCurrencyPointDto {
  @override
  final String date;
  @override
  final BuiltList<CurrencyBalanceDto> byCurrency;

  factory _$MultiCurrencyPointDto(
          [void Function(MultiCurrencyPointDtoBuilder)? updates]) =>
      (new MultiCurrencyPointDtoBuilder()..update(updates))._build();

  _$MultiCurrencyPointDto._({required this.date, required this.byCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'MultiCurrencyPointDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        byCurrency, r'MultiCurrencyPointDto', 'byCurrency');
  }

  @override
  MultiCurrencyPointDto rebuild(
          void Function(MultiCurrencyPointDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultiCurrencyPointDtoBuilder toBuilder() =>
      new MultiCurrencyPointDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiCurrencyPointDto &&
        date == other.date &&
        byCurrency == other.byCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, byCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MultiCurrencyPointDto')
          ..add('date', date)
          ..add('byCurrency', byCurrency))
        .toString();
  }
}

class MultiCurrencyPointDtoBuilder
    implements Builder<MultiCurrencyPointDto, MultiCurrencyPointDtoBuilder> {
  _$MultiCurrencyPointDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  ListBuilder<CurrencyBalanceDto>? _byCurrency;
  ListBuilder<CurrencyBalanceDto> get byCurrency =>
      _$this._byCurrency ??= new ListBuilder<CurrencyBalanceDto>();
  set byCurrency(ListBuilder<CurrencyBalanceDto>? byCurrency) =>
      _$this._byCurrency = byCurrency;

  MultiCurrencyPointDtoBuilder() {
    MultiCurrencyPointDto._defaults(this);
  }

  MultiCurrencyPointDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _byCurrency = $v.byCurrency.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultiCurrencyPointDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultiCurrencyPointDto;
  }

  @override
  void update(void Function(MultiCurrencyPointDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MultiCurrencyPointDto build() => _build();

  _$MultiCurrencyPointDto _build() {
    _$MultiCurrencyPointDto _$result;
    try {
      _$result = _$v ??
          new _$MultiCurrencyPointDto._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'MultiCurrencyPointDto', 'date'),
              byCurrency: byCurrency.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'byCurrency';
        byCurrency.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MultiCurrencyPointDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
