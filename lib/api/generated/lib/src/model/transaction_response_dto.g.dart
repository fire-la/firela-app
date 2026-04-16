// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionResponseDto extends TransactionResponseDto {
  @override
  final String transactionId;
  @override
  final String date;
  @override
  final String narration;
  @override
  final BuiltList<PostingResponseDto> postings;
  @override
  final bool interpolated;
  @override
  final bool booked;
  @override
  final BuiltList<String> createdAccountIds;
  @override
  final String? idempotencyKey;
  @override
  final String? flag;
  @override
  final String? payee;
  @override
  final BuiltList<String>? warnings;
  @override
  final RecurringSuggestionDto? recurringSuggestion;

  factory _$TransactionResponseDto(
          [void Function(TransactionResponseDtoBuilder)? updates]) =>
      (new TransactionResponseDtoBuilder()..update(updates))._build();

  _$TransactionResponseDto._(
      {required this.transactionId,
      required this.date,
      required this.narration,
      required this.postings,
      required this.interpolated,
      required this.booked,
      required this.createdAccountIds,
      this.idempotencyKey,
      this.flag,
      this.payee,
      this.warnings,
      this.recurringSuggestion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'TransactionResponseDto', 'transactionId');
    BuiltValueNullFieldError.checkNotNull(
        date, r'TransactionResponseDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TransactionResponseDto', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'TransactionResponseDto', 'postings');
    BuiltValueNullFieldError.checkNotNull(
        interpolated, r'TransactionResponseDto', 'interpolated');
    BuiltValueNullFieldError.checkNotNull(
        booked, r'TransactionResponseDto', 'booked');
    BuiltValueNullFieldError.checkNotNull(
        createdAccountIds, r'TransactionResponseDto', 'createdAccountIds');
  }

  @override
  TransactionResponseDto rebuild(
          void Function(TransactionResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionResponseDtoBuilder toBuilder() =>
      new TransactionResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionResponseDto &&
        transactionId == other.transactionId &&
        date == other.date &&
        narration == other.narration &&
        postings == other.postings &&
        interpolated == other.interpolated &&
        booked == other.booked &&
        createdAccountIds == other.createdAccountIds &&
        idempotencyKey == other.idempotencyKey &&
        flag == other.flag &&
        payee == other.payee &&
        warnings == other.warnings &&
        recurringSuggestion == other.recurringSuggestion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, interpolated.hashCode);
    _$hash = $jc(_$hash, booked.hashCode);
    _$hash = $jc(_$hash, createdAccountIds.hashCode);
    _$hash = $jc(_$hash, idempotencyKey.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, recurringSuggestion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionResponseDto')
          ..add('transactionId', transactionId)
          ..add('date', date)
          ..add('narration', narration)
          ..add('postings', postings)
          ..add('interpolated', interpolated)
          ..add('booked', booked)
          ..add('createdAccountIds', createdAccountIds)
          ..add('idempotencyKey', idempotencyKey)
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('warnings', warnings)
          ..add('recurringSuggestion', recurringSuggestion))
        .toString();
  }
}

class TransactionResponseDtoBuilder
    implements Builder<TransactionResponseDto, TransactionResponseDtoBuilder> {
  _$TransactionResponseDto? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<PostingResponseDto>? _postings;
  ListBuilder<PostingResponseDto> get postings =>
      _$this._postings ??= new ListBuilder<PostingResponseDto>();
  set postings(ListBuilder<PostingResponseDto>? postings) =>
      _$this._postings = postings;

  bool? _interpolated;
  bool? get interpolated => _$this._interpolated;
  set interpolated(bool? interpolated) => _$this._interpolated = interpolated;

  bool? _booked;
  bool? get booked => _$this._booked;
  set booked(bool? booked) => _$this._booked = booked;

  ListBuilder<String>? _createdAccountIds;
  ListBuilder<String> get createdAccountIds =>
      _$this._createdAccountIds ??= new ListBuilder<String>();
  set createdAccountIds(ListBuilder<String>? createdAccountIds) =>
      _$this._createdAccountIds = createdAccountIds;

  String? _idempotencyKey;
  String? get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String? idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  String? _flag;
  String? get flag => _$this._flag;
  set flag(String? flag) => _$this._flag = flag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= new ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  RecurringSuggestionDtoBuilder? _recurringSuggestion;
  RecurringSuggestionDtoBuilder get recurringSuggestion =>
      _$this._recurringSuggestion ??= new RecurringSuggestionDtoBuilder();
  set recurringSuggestion(RecurringSuggestionDtoBuilder? recurringSuggestion) =>
      _$this._recurringSuggestion = recurringSuggestion;

  TransactionResponseDtoBuilder() {
    TransactionResponseDto._defaults(this);
  }

  TransactionResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _date = $v.date;
      _narration = $v.narration;
      _postings = $v.postings.toBuilder();
      _interpolated = $v.interpolated;
      _booked = $v.booked;
      _createdAccountIds = $v.createdAccountIds.toBuilder();
      _idempotencyKey = $v.idempotencyKey;
      _flag = $v.flag;
      _payee = $v.payee;
      _warnings = $v.warnings?.toBuilder();
      _recurringSuggestion = $v.recurringSuggestion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionResponseDto;
  }

  @override
  void update(void Function(TransactionResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionResponseDto build() => _build();

  _$TransactionResponseDto _build() {
    _$TransactionResponseDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionResponseDto._(
              transactionId: BuiltValueNullFieldError.checkNotNull(
                  transactionId, r'TransactionResponseDto', 'transactionId'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TransactionResponseDto', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'TransactionResponseDto', 'narration'),
              postings: postings.build(),
              interpolated: BuiltValueNullFieldError.checkNotNull(
                  interpolated, r'TransactionResponseDto', 'interpolated'),
              booked: BuiltValueNullFieldError.checkNotNull(
                  booked, r'TransactionResponseDto', 'booked'),
              createdAccountIds: createdAccountIds.build(),
              idempotencyKey: idempotencyKey,
              flag: flag,
              payee: payee,
              warnings: _warnings?.build(),
              recurringSuggestion: _recurringSuggestion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();

        _$failedField = 'createdAccountIds';
        createdAccountIds.build();

        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'recurringSuggestion';
        _recurringSuggestion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
