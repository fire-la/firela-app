// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_stats_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewStatsDto extends ReviewStatsDto {
  @override
  final num total;
  @override
  final JsonObject byType;
  @override
  final DateTime? oldestPending;

  factory _$ReviewStatsDto([void Function(ReviewStatsDtoBuilder)? updates]) =>
      (new ReviewStatsDtoBuilder()..update(updates))._build();

  _$ReviewStatsDto._(
      {required this.total, required this.byType, this.oldestPending})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(total, r'ReviewStatsDto', 'total');
    BuiltValueNullFieldError.checkNotNull(byType, r'ReviewStatsDto', 'byType');
  }

  @override
  ReviewStatsDto rebuild(void Function(ReviewStatsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewStatsDtoBuilder toBuilder() =>
      new ReviewStatsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewStatsDto &&
        total == other.total &&
        byType == other.byType &&
        oldestPending == other.oldestPending;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, byType.hashCode);
    _$hash = $jc(_$hash, oldestPending.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewStatsDto')
          ..add('total', total)
          ..add('byType', byType)
          ..add('oldestPending', oldestPending))
        .toString();
  }
}

class ReviewStatsDtoBuilder
    implements Builder<ReviewStatsDto, ReviewStatsDtoBuilder> {
  _$ReviewStatsDto? _$v;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  JsonObject? _byType;
  JsonObject? get byType => _$this._byType;
  set byType(JsonObject? byType) => _$this._byType = byType;

  DateTime? _oldestPending;
  DateTime? get oldestPending => _$this._oldestPending;
  set oldestPending(DateTime? oldestPending) =>
      _$this._oldestPending = oldestPending;

  ReviewStatsDtoBuilder() {
    ReviewStatsDto._defaults(this);
  }

  ReviewStatsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _byType = $v.byType;
      _oldestPending = $v.oldestPending;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewStatsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewStatsDto;
  }

  @override
  void update(void Function(ReviewStatsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewStatsDto build() => _build();

  _$ReviewStatsDto _build() {
    final _$result = _$v ??
        new _$ReviewStatsDto._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'ReviewStatsDto', 'total'),
            byType: BuiltValueNullFieldError.checkNotNull(
                byType, r'ReviewStatsDto', 'byType'),
            oldestPending: oldestPending);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
