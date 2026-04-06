// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionDetail extends TransactionDetail {
  @override
  final String id;
  @override
  final Date date;
  @override
  final String narration;
  @override
  final TxnStatus status;
  @override
  final BuiltList<Posting> postings;
  @override
  final TransactionFlag? flag;
  @override
  final String? customFlag;
  @override
  final String? payee;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? links;
  @override
  final BuiltMap<String, JsonObject?>? meta;
  @override
  final String? sourceType;
  @override
  final String? sourcePlatform;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? voidedAt;
  @override
  final String? voidedBy;
  @override
  final String? correctionReason;

  factory _$TransactionDetail(
          [void Function(TransactionDetailBuilder)? updates]) =>
      (new TransactionDetailBuilder()..update(updates))._build();

  _$TransactionDetail._(
      {required this.id,
      required this.date,
      required this.narration,
      required this.status,
      required this.postings,
      this.flag,
      this.customFlag,
      this.payee,
      this.tags,
      this.links,
      this.meta,
      this.sourceType,
      this.sourcePlatform,
      this.createdAt,
      this.voidedAt,
      this.voidedBy,
      this.correctionReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TransactionDetail', 'id');
    BuiltValueNullFieldError.checkNotNull(date, r'TransactionDetail', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TransactionDetail', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        status, r'TransactionDetail', 'status');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'TransactionDetail', 'postings');
  }

  @override
  TransactionDetail rebuild(void Function(TransactionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionDetailBuilder toBuilder() =>
      new TransactionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionDetail &&
        id == other.id &&
        date == other.date &&
        narration == other.narration &&
        status == other.status &&
        postings == other.postings &&
        flag == other.flag &&
        customFlag == other.customFlag &&
        payee == other.payee &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta &&
        sourceType == other.sourceType &&
        sourcePlatform == other.sourcePlatform &&
        createdAt == other.createdAt &&
        voidedAt == other.voidedAt &&
        voidedBy == other.voidedBy &&
        correctionReason == other.correctionReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, customFlag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, voidedAt.hashCode);
    _$hash = $jc(_$hash, voidedBy.hashCode);
    _$hash = $jc(_$hash, correctionReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionDetail')
          ..add('id', id)
          ..add('date', date)
          ..add('narration', narration)
          ..add('status', status)
          ..add('postings', postings)
          ..add('flag', flag)
          ..add('customFlag', customFlag)
          ..add('payee', payee)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta)
          ..add('sourceType', sourceType)
          ..add('sourcePlatform', sourcePlatform)
          ..add('createdAt', createdAt)
          ..add('voidedAt', voidedAt)
          ..add('voidedBy', voidedBy)
          ..add('correctionReason', correctionReason))
        .toString();
  }
}

class TransactionDetailBuilder
    implements Builder<TransactionDetail, TransactionDetailBuilder> {
  _$TransactionDetail? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  TxnStatus? _status;
  TxnStatus? get status => _$this._status;
  set status(TxnStatus? status) => _$this._status = status;

  ListBuilder<Posting>? _postings;
  ListBuilder<Posting> get postings =>
      _$this._postings ??= new ListBuilder<Posting>();
  set postings(ListBuilder<Posting>? postings) => _$this._postings = postings;

  TransactionFlag? _flag;
  TransactionFlag? get flag => _$this._flag;
  set flag(TransactionFlag? flag) => _$this._flag = flag;

  String? _customFlag;
  String? get customFlag => _$this._customFlag;
  set customFlag(String? customFlag) => _$this._customFlag = customFlag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  MapBuilder<String, JsonObject?>? _meta;
  MapBuilder<String, JsonObject?> get meta =>
      _$this._meta ??= new MapBuilder<String, JsonObject?>();
  set meta(MapBuilder<String, JsonObject?>? meta) => _$this._meta = meta;

  String? _sourceType;
  String? get sourceType => _$this._sourceType;
  set sourceType(String? sourceType) => _$this._sourceType = sourceType;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _voidedAt;
  DateTime? get voidedAt => _$this._voidedAt;
  set voidedAt(DateTime? voidedAt) => _$this._voidedAt = voidedAt;

  String? _voidedBy;
  String? get voidedBy => _$this._voidedBy;
  set voidedBy(String? voidedBy) => _$this._voidedBy = voidedBy;

  String? _correctionReason;
  String? get correctionReason => _$this._correctionReason;
  set correctionReason(String? correctionReason) =>
      _$this._correctionReason = correctionReason;

  TransactionDetailBuilder() {
    TransactionDetail._defaults(this);
  }

  TransactionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _narration = $v.narration;
      _status = $v.status;
      _postings = $v.postings.toBuilder();
      _flag = $v.flag;
      _customFlag = $v.customFlag;
      _payee = $v.payee;
      _tags = $v.tags?.toBuilder();
      _links = $v.links?.toBuilder();
      _meta = $v.meta?.toBuilder();
      _sourceType = $v.sourceType;
      _sourcePlatform = $v.sourcePlatform;
      _createdAt = $v.createdAt;
      _voidedAt = $v.voidedAt;
      _voidedBy = $v.voidedBy;
      _correctionReason = $v.correctionReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionDetail;
  }

  @override
  void update(void Function(TransactionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionDetail build() => _build();

  _$TransactionDetail _build() {
    _$TransactionDetail _$result;
    try {
      _$result = _$v ??
          new _$TransactionDetail._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TransactionDetail', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TransactionDetail', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'TransactionDetail', 'narration'),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'TransactionDetail', 'status'),
              postings: postings.build(),
              flag: flag,
              customFlag: customFlag,
              payee: payee,
              tags: _tags?.build(),
              links: _links?.build(),
              meta: _meta?.build(),
              sourceType: sourceType,
              sourcePlatform: sourcePlatform,
              createdAt: createdAt,
              voidedAt: voidedAt,
              voidedBy: voidedBy,
              correctionReason: correctionReason);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postings';
        postings.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
