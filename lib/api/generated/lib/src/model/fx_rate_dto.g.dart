// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fx_rate_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class FxRateDtoBuilder {
  void replace(FxRateDto other);
  void update(void Function(FxRateDtoBuilder) updates);
  String? get from;
  set from(String? from);

  String? get to;
  set to(String? to);

  String? get rate;
  set rate(String? rate);

  String? get date;
  set date(String? date);
}

class _$$FxRateDto extends $FxRateDto {
  @override
  final String from;
  @override
  final String to;
  @override
  final String rate;
  @override
  final String date;

  factory _$$FxRateDto([void Function($FxRateDtoBuilder)? updates]) =>
      (new $FxRateDtoBuilder()..update(updates))._build();

  _$$FxRateDto._(
      {required this.from,
      required this.to,
      required this.rate,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(from, r'$FxRateDto', 'from');
    BuiltValueNullFieldError.checkNotNull(to, r'$FxRateDto', 'to');
    BuiltValueNullFieldError.checkNotNull(rate, r'$FxRateDto', 'rate');
    BuiltValueNullFieldError.checkNotNull(date, r'$FxRateDto', 'date');
  }

  @override
  $FxRateDto rebuild(void Function($FxRateDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $FxRateDtoBuilder toBuilder() => new $FxRateDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $FxRateDto &&
        from == other.from &&
        to == other.to &&
        rate == other.rate &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$FxRateDto')
          ..add('from', from)
          ..add('to', to)
          ..add('rate', rate)
          ..add('date', date))
        .toString();
  }
}

class $FxRateDtoBuilder
    implements Builder<$FxRateDto, $FxRateDtoBuilder>, FxRateDtoBuilder {
  _$$FxRateDto? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(covariant String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(covariant String? to) => _$this._to = to;

  String? _rate;
  String? get rate => _$this._rate;
  set rate(covariant String? rate) => _$this._rate = rate;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  $FxRateDtoBuilder() {
    $FxRateDto._defaults(this);
  }

  $FxRateDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _rate = $v.rate;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $FxRateDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$FxRateDto;
  }

  @override
  void update(void Function($FxRateDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $FxRateDto build() => _build();

  _$$FxRateDto _build() {
    final _$result = _$v ??
        new _$$FxRateDto._(
            from: BuiltValueNullFieldError.checkNotNull(
                from, r'$FxRateDto', 'from'),
            to: BuiltValueNullFieldError.checkNotNull(to, r'$FxRateDto', 'to'),
            rate: BuiltValueNullFieldError.checkNotNull(
                rate, r'$FxRateDto', 'rate'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'$FxRateDto', 'date'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
