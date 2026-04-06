// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionResponse extends TransactionResponse {
  @override
  final String transactionId;
  @override
  final Date date;
  @override
  final String narration;
  @override
  final BuiltList<Posting> postings;
  @override
  final String? idempotencyKey;
  @override
  final TransactionFlag? flag;
  @override
  final String? payee;
  @override
  final bool? interpolated;
  @override
  final bool? booked;
  @override
  final BuiltList<String>? warnings;
  @override
  final BuiltList<String>? createdAccountIds;
  @override
  final BuiltMap<String, JsonObject?>? recurringSuggestion;

  factory _$TransactionResponse(
          [void Function(TransactionResponseBuilder)? updates]) =>
      (new TransactionResponseBuilder()..update(updates))._build();

  _$TransactionResponse._(
      {required this.transactionId,
      required this.date,
      required this.narration,
      required this.postings,
      this.idempotencyKey,
      this.flag,
      this.payee,
      this.interpolated,
      this.booked,
      this.warnings,
      this.createdAccountIds,
      this.recurringSuggestion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'TransactionResponse', 'transactionId');
    BuiltValueNullFieldError.checkNotNull(date, r'TransactionResponse', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TransactionResponse', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'TransactionResponse', 'postings');
  }

  @override
  TransactionResponse rebuild(
          void Function(TransactionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionResponseBuilder toBuilder() =>
      new TransactionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionResponse &&
        transactionId == other.transactionId &&
        date == other.date &&
        narration == other.narration &&
        postings == other.postings &&
        idempotencyKey == other.idempotencyKey &&
        flag == other.flag &&
        payee == other.payee &&
        interpolated == other.interpolated &&
        booked == other.booked &&
        warnings == other.warnings &&
        createdAccountIds == other.createdAccountIds &&
        recurringSuggestion == other.recurringSuggestion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, idempotencyKey.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, interpolated.hashCode);
    _$hash = $jc(_$hash, booked.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, createdAccountIds.hashCode);
    _$hash = $jc(_$hash, recurringSuggestion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionResponse')
          ..add('transactionId', transactionId)
          ..add('date', date)
          ..add('narration', narration)
          ..add('postings', postings)
          ..add('idempotencyKey', idempotencyKey)
          ..add('flag', flag)
          ..add('payee', payee)
          ..add('interpolated', interpolated)
          ..add('booked', booked)
          ..add('warnings', warnings)
          ..add('createdAccountIds', createdAccountIds)
          ..add('recurringSuggestion', recurringSuggestion))
        .toString();
  }
}

class TransactionResponseBuilder
    implements Builder<TransactionResponse, TransactionResponseBuilder> {
  _$TransactionResponse? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<Posting>? _postings;
  ListBuilder<Posting> get postings =>
      _$this._postings ??= new ListBuilder<Posting>();
  set postings(ListBuilder<Posting>? postings) => _$this._postings = postings;

  String? _idempotencyKey;
  String? get idempotencyKey => _$this._idempotencyKey;
  set idempotencyKey(String? idempotencyKey) =>
      _$this._idempotencyKey = idempotencyKey;

  TransactionFlag? _flag;
  TransactionFlag? get flag => _$this._flag;
  set flag(TransactionFlag? flag) => _$this._flag = flag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  bool? _interpolated;
  bool? get interpolated => _$this._interpolated;
  set interpolated(bool? interpolated) => _$this._interpolated = interpolated;

  bool? _booked;
  bool? get booked => _$this._booked;
  set booked(bool? booked) => _$this._booked = booked;

  ListBuilder<String>? _warnings;
  ListBuilder<String> get warnings =>
      _$this._warnings ??= new ListBuilder<String>();
  set warnings(ListBuilder<String>? warnings) => _$this._warnings = warnings;

  ListBuilder<String>? _createdAccountIds;
  ListBuilder<String> get createdAccountIds =>
      _$this._createdAccountIds ??= new ListBuilder<String>();
  set createdAccountIds(ListBuilder<String>? createdAccountIds) =>
      _$this._createdAccountIds = createdAccountIds;

  MapBuilder<String, JsonObject?>? _recurringSuggestion;
  MapBuilder<String, JsonObject?> get recurringSuggestion =>
      _$this._recurringSuggestion ??= new MapBuilder<String, JsonObject?>();
  set recurringSuggestion(
          MapBuilder<String, JsonObject?>? recurringSuggestion) =>
      _$this._recurringSuggestion = recurringSuggestion;

  TransactionResponseBuilder() {
    TransactionResponse._defaults(this);
  }

  TransactionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _date = $v.date;
      _narration = $v.narration;
      _postings = $v.postings.toBuilder();
      _idempotencyKey = $v.idempotencyKey;
      _flag = $v.flag;
      _payee = $v.payee;
      _interpolated = $v.interpolated;
      _booked = $v.booked;
      _warnings = $v.warnings?.toBuilder();
      _createdAccountIds = $v.createdAccountIds?.toBuilder();
      _recurringSuggestion = $v.recurringSuggestion?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionResponse;
  }

  @override
  void update(void Function(TransactionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionResponse build() => _build();

  _$TransactionResponse _build() {
    _$TransactionResponse _$result;
    try {
      _$result = _$v ??
          new _$TransactionResponse._(
              transactionId: BuiltValueNullFieldError.checkNotNull(
                  transactionId, r'TransactionResponse', 'transactionId'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TransactionResponse', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'TransactionResponse', 'narration'),
              postings: postings.build(),
              idempotencyKey: idempotencyKey,
              flag: flag,
              payee: payee,
              interpolated: interpolated,
              booked: booked,
              warnings: _warnings?.build(),
              createdAccountIds: _createdAccountIds?.build(),
              recurringSuggestion: _recurringSuggestion?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();

        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'createdAccountIds';
        _createdAccountIds?.build();
        _$failedField = 'recurringSuggestion';
        _recurringSuggestion?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
