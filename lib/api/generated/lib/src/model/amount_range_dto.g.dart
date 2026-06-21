// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_range_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AmountRangeDto extends AmountRangeDto {
  @override
  final num? min;
  @override
  final num? max;

  factory _$AmountRangeDto([void Function(AmountRangeDtoBuilder)? updates]) =>
      (new AmountRangeDtoBuilder()..update(updates))._build();

  _$AmountRangeDto._({this.min, this.max}) : super._();

  @override
  AmountRangeDto rebuild(void Function(AmountRangeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmountRangeDtoBuilder toBuilder() =>
      new AmountRangeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmountRangeDto && min == other.min && max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmountRangeDto')
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class AmountRangeDtoBuilder
    implements Builder<AmountRangeDto, AmountRangeDtoBuilder> {
  _$AmountRangeDto? _$v;

  num? _min;
  num? get min => _$this._min;
  set min(num? min) => _$this._min = min;

  num? _max;
  num? get max => _$this._max;
  set max(num? max) => _$this._max = max;

  AmountRangeDtoBuilder() {
    AmountRangeDto._defaults(this);
  }

  AmountRangeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _min = $v.min;
      _max = $v.max;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmountRangeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmountRangeDto;
  }

  @override
  void update(void Function(AmountRangeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmountRangeDto build() => _build();

  _$AmountRangeDto _build() {
    final _$result = _$v ?? new _$AmountRangeDto._(min: min, max: max);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
