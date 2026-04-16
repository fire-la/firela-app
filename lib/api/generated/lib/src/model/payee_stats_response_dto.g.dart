// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payee_stats_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayeeStatsResponseDto extends PayeeStatsResponseDto {
  @override
  final String payee;
  @override
  final num transactionCount;
  @override
  final DateTime lastUsedAt;

  factory _$PayeeStatsResponseDto(
          [void Function(PayeeStatsResponseDtoBuilder)? updates]) =>
      (new PayeeStatsResponseDtoBuilder()..update(updates))._build();

  _$PayeeStatsResponseDto._(
      {required this.payee,
      required this.transactionCount,
      required this.lastUsedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        payee, r'PayeeStatsResponseDto', 'payee');
    BuiltValueNullFieldError.checkNotNull(
        transactionCount, r'PayeeStatsResponseDto', 'transactionCount');
    BuiltValueNullFieldError.checkNotNull(
        lastUsedAt, r'PayeeStatsResponseDto', 'lastUsedAt');
  }

  @override
  PayeeStatsResponseDto rebuild(
          void Function(PayeeStatsResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayeeStatsResponseDtoBuilder toBuilder() =>
      new PayeeStatsResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayeeStatsResponseDto &&
        payee == other.payee &&
        transactionCount == other.transactionCount &&
        lastUsedAt == other.lastUsedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, transactionCount.hashCode);
    _$hash = $jc(_$hash, lastUsedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayeeStatsResponseDto')
          ..add('payee', payee)
          ..add('transactionCount', transactionCount)
          ..add('lastUsedAt', lastUsedAt))
        .toString();
  }
}

class PayeeStatsResponseDtoBuilder
    implements Builder<PayeeStatsResponseDto, PayeeStatsResponseDtoBuilder> {
  _$PayeeStatsResponseDto? _$v;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  num? _transactionCount;
  num? get transactionCount => _$this._transactionCount;
  set transactionCount(num? transactionCount) =>
      _$this._transactionCount = transactionCount;

  DateTime? _lastUsedAt;
  DateTime? get lastUsedAt => _$this._lastUsedAt;
  set lastUsedAt(DateTime? lastUsedAt) => _$this._lastUsedAt = lastUsedAt;

  PayeeStatsResponseDtoBuilder() {
    PayeeStatsResponseDto._defaults(this);
  }

  PayeeStatsResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payee = $v.payee;
      _transactionCount = $v.transactionCount;
      _lastUsedAt = $v.lastUsedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayeeStatsResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayeeStatsResponseDto;
  }

  @override
  void update(void Function(PayeeStatsResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayeeStatsResponseDto build() => _build();

  _$PayeeStatsResponseDto _build() {
    final _$result = _$v ??
        new _$PayeeStatsResponseDto._(
            payee: BuiltValueNullFieldError.checkNotNull(
                payee, r'PayeeStatsResponseDto', 'payee'),
            transactionCount: BuiltValueNullFieldError.checkNotNull(
                transactionCount, r'PayeeStatsResponseDto', 'transactionCount'),
            lastUsedAt: BuiltValueNullFieldError.checkNotNull(
                lastUsedAt, r'PayeeStatsResponseDto', 'lastUsedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
