// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendSummaryDto extends TrendSummaryDto {
  @override
  final String startValue;
  @override
  final String endValue;
  @override
  final String totalChange;
  @override
  final String totalChangePercentage;

  factory _$TrendSummaryDto([void Function(TrendSummaryDtoBuilder)? updates]) =>
      (new TrendSummaryDtoBuilder()..update(updates))._build();

  _$TrendSummaryDto._(
      {required this.startValue,
      required this.endValue,
      required this.totalChange,
      required this.totalChangePercentage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        startValue, r'TrendSummaryDto', 'startValue');
    BuiltValueNullFieldError.checkNotNull(
        endValue, r'TrendSummaryDto', 'endValue');
    BuiltValueNullFieldError.checkNotNull(
        totalChange, r'TrendSummaryDto', 'totalChange');
    BuiltValueNullFieldError.checkNotNull(
        totalChangePercentage, r'TrendSummaryDto', 'totalChangePercentage');
  }

  @override
  TrendSummaryDto rebuild(void Function(TrendSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrendSummaryDtoBuilder toBuilder() =>
      new TrendSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendSummaryDto &&
        startValue == other.startValue &&
        endValue == other.endValue &&
        totalChange == other.totalChange &&
        totalChangePercentage == other.totalChangePercentage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startValue.hashCode);
    _$hash = $jc(_$hash, endValue.hashCode);
    _$hash = $jc(_$hash, totalChange.hashCode);
    _$hash = $jc(_$hash, totalChangePercentage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendSummaryDto')
          ..add('startValue', startValue)
          ..add('endValue', endValue)
          ..add('totalChange', totalChange)
          ..add('totalChangePercentage', totalChangePercentage))
        .toString();
  }
}

class TrendSummaryDtoBuilder
    implements Builder<TrendSummaryDto, TrendSummaryDtoBuilder> {
  _$TrendSummaryDto? _$v;

  String? _startValue;
  String? get startValue => _$this._startValue;
  set startValue(String? startValue) => _$this._startValue = startValue;

  String? _endValue;
  String? get endValue => _$this._endValue;
  set endValue(String? endValue) => _$this._endValue = endValue;

  String? _totalChange;
  String? get totalChange => _$this._totalChange;
  set totalChange(String? totalChange) => _$this._totalChange = totalChange;

  String? _totalChangePercentage;
  String? get totalChangePercentage => _$this._totalChangePercentage;
  set totalChangePercentage(String? totalChangePercentage) =>
      _$this._totalChangePercentage = totalChangePercentage;

  TrendSummaryDtoBuilder() {
    TrendSummaryDto._defaults(this);
  }

  TrendSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startValue = $v.startValue;
      _endValue = $v.endValue;
      _totalChange = $v.totalChange;
      _totalChangePercentage = $v.totalChangePercentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrendSummaryDto;
  }

  @override
  void update(void Function(TrendSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendSummaryDto build() => _build();

  _$TrendSummaryDto _build() {
    final _$result = _$v ??
        new _$TrendSummaryDto._(
            startValue: BuiltValueNullFieldError.checkNotNull(
                startValue, r'TrendSummaryDto', 'startValue'),
            endValue: BuiltValueNullFieldError.checkNotNull(
                endValue, r'TrendSummaryDto', 'endValue'),
            totalChange: BuiltValueNullFieldError.checkNotNull(
                totalChange, r'TrendSummaryDto', 'totalChange'),
            totalChangePercentage: BuiltValueNullFieldError.checkNotNull(
                totalChangePercentage,
                r'TrendSummaryDto',
                'totalChangePercentage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
