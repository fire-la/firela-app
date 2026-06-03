// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nlp_similarity_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NlpSimilarityDto extends NlpSimilarityDto {
  @override
  final bool dateMatch;
  @override
  final num dateDiff;
  @override
  final bool amountMatch;
  @override
  final String amountDiff;
  @override
  final bool payeeMatch;
  @override
  final num payeeSimilarity;
  @override
  final num accountOverlap;

  factory _$NlpSimilarityDto(
          [void Function(NlpSimilarityDtoBuilder)? updates]) =>
      (new NlpSimilarityDtoBuilder()..update(updates))._build();

  _$NlpSimilarityDto._(
      {required this.dateMatch,
      required this.dateDiff,
      required this.amountMatch,
      required this.amountDiff,
      required this.payeeMatch,
      required this.payeeSimilarity,
      required this.accountOverlap})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dateMatch, r'NlpSimilarityDto', 'dateMatch');
    BuiltValueNullFieldError.checkNotNull(
        dateDiff, r'NlpSimilarityDto', 'dateDiff');
    BuiltValueNullFieldError.checkNotNull(
        amountMatch, r'NlpSimilarityDto', 'amountMatch');
    BuiltValueNullFieldError.checkNotNull(
        amountDiff, r'NlpSimilarityDto', 'amountDiff');
    BuiltValueNullFieldError.checkNotNull(
        payeeMatch, r'NlpSimilarityDto', 'payeeMatch');
    BuiltValueNullFieldError.checkNotNull(
        payeeSimilarity, r'NlpSimilarityDto', 'payeeSimilarity');
    BuiltValueNullFieldError.checkNotNull(
        accountOverlap, r'NlpSimilarityDto', 'accountOverlap');
  }

  @override
  NlpSimilarityDto rebuild(void Function(NlpSimilarityDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NlpSimilarityDtoBuilder toBuilder() =>
      new NlpSimilarityDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NlpSimilarityDto &&
        dateMatch == other.dateMatch &&
        dateDiff == other.dateDiff &&
        amountMatch == other.amountMatch &&
        amountDiff == other.amountDiff &&
        payeeMatch == other.payeeMatch &&
        payeeSimilarity == other.payeeSimilarity &&
        accountOverlap == other.accountOverlap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dateMatch.hashCode);
    _$hash = $jc(_$hash, dateDiff.hashCode);
    _$hash = $jc(_$hash, amountMatch.hashCode);
    _$hash = $jc(_$hash, amountDiff.hashCode);
    _$hash = $jc(_$hash, payeeMatch.hashCode);
    _$hash = $jc(_$hash, payeeSimilarity.hashCode);
    _$hash = $jc(_$hash, accountOverlap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NlpSimilarityDto')
          ..add('dateMatch', dateMatch)
          ..add('dateDiff', dateDiff)
          ..add('amountMatch', amountMatch)
          ..add('amountDiff', amountDiff)
          ..add('payeeMatch', payeeMatch)
          ..add('payeeSimilarity', payeeSimilarity)
          ..add('accountOverlap', accountOverlap))
        .toString();
  }
}

class NlpSimilarityDtoBuilder
    implements Builder<NlpSimilarityDto, NlpSimilarityDtoBuilder> {
  _$NlpSimilarityDto? _$v;

  bool? _dateMatch;
  bool? get dateMatch => _$this._dateMatch;
  set dateMatch(bool? dateMatch) => _$this._dateMatch = dateMatch;

  num? _dateDiff;
  num? get dateDiff => _$this._dateDiff;
  set dateDiff(num? dateDiff) => _$this._dateDiff = dateDiff;

  bool? _amountMatch;
  bool? get amountMatch => _$this._amountMatch;
  set amountMatch(bool? amountMatch) => _$this._amountMatch = amountMatch;

  String? _amountDiff;
  String? get amountDiff => _$this._amountDiff;
  set amountDiff(String? amountDiff) => _$this._amountDiff = amountDiff;

  bool? _payeeMatch;
  bool? get payeeMatch => _$this._payeeMatch;
  set payeeMatch(bool? payeeMatch) => _$this._payeeMatch = payeeMatch;

  num? _payeeSimilarity;
  num? get payeeSimilarity => _$this._payeeSimilarity;
  set payeeSimilarity(num? payeeSimilarity) =>
      _$this._payeeSimilarity = payeeSimilarity;

  num? _accountOverlap;
  num? get accountOverlap => _$this._accountOverlap;
  set accountOverlap(num? accountOverlap) =>
      _$this._accountOverlap = accountOverlap;

  NlpSimilarityDtoBuilder() {
    NlpSimilarityDto._defaults(this);
  }

  NlpSimilarityDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateMatch = $v.dateMatch;
      _dateDiff = $v.dateDiff;
      _amountMatch = $v.amountMatch;
      _amountDiff = $v.amountDiff;
      _payeeMatch = $v.payeeMatch;
      _payeeSimilarity = $v.payeeSimilarity;
      _accountOverlap = $v.accountOverlap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NlpSimilarityDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NlpSimilarityDto;
  }

  @override
  void update(void Function(NlpSimilarityDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NlpSimilarityDto build() => _build();

  _$NlpSimilarityDto _build() {
    final _$result = _$v ??
        new _$NlpSimilarityDto._(
            dateMatch: BuiltValueNullFieldError.checkNotNull(
                dateMatch, r'NlpSimilarityDto', 'dateMatch'),
            dateDiff: BuiltValueNullFieldError.checkNotNull(
                dateDiff, r'NlpSimilarityDto', 'dateDiff'),
            amountMatch: BuiltValueNullFieldError.checkNotNull(
                amountMatch, r'NlpSimilarityDto', 'amountMatch'),
            amountDiff: BuiltValueNullFieldError.checkNotNull(
                amountDiff, r'NlpSimilarityDto', 'amountDiff'),
            payeeMatch: BuiltValueNullFieldError.checkNotNull(
                payeeMatch, r'NlpSimilarityDto', 'payeeMatch'),
            payeeSimilarity: BuiltValueNullFieldError.checkNotNull(
                payeeSimilarity, r'NlpSimilarityDto', 'payeeSimilarity'),
            accountOverlap: BuiltValueNullFieldError.checkNotNull(
                accountOverlap, r'NlpSimilarityDto', 'accountOverlap'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
