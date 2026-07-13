// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_detail_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CostDetailDto extends CostDetailDto {
  @override
  final String? number;
  @override
  final String? currency;
  @override
  final String? date;
  @override
  final String? label;

  factory _$CostDetailDto([void Function(CostDetailDtoBuilder)? updates]) =>
      (new CostDetailDtoBuilder()..update(updates))._build();

  _$CostDetailDto._({this.number, this.currency, this.date, this.label})
      : super._();

  @override
  CostDetailDto rebuild(void Function(CostDetailDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CostDetailDtoBuilder toBuilder() => new CostDetailDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CostDetailDto &&
        number == other.number &&
        currency == other.currency &&
        date == other.date &&
        label == other.label;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CostDetailDto')
          ..add('number', number)
          ..add('currency', currency)
          ..add('date', date)
          ..add('label', label))
        .toString();
  }
}

class CostDetailDtoBuilder
    implements Builder<CostDetailDto, CostDetailDtoBuilder> {
  _$CostDetailDto? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  CostDetailDtoBuilder() {
    CostDetailDto._defaults(this);
  }

  CostDetailDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _currency = $v.currency;
      _date = $v.date;
      _label = $v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CostDetailDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CostDetailDto;
  }

  @override
  void update(void Function(CostDetailDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CostDetailDto build() => _build();

  _$CostDetailDto _build() {
    final _$result = _$v ??
        new _$CostDetailDto._(
            number: number, currency: currency, date: date, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
