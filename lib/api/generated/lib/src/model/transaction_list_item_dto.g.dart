// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionListItemDtoFlagEnum _$transactionListItemDtoFlagEnum_CLEARED =
    const TransactionListItemDtoFlagEnum._('CLEARED');
const TransactionListItemDtoFlagEnum _$transactionListItemDtoFlagEnum_PENDING =
    const TransactionListItemDtoFlagEnum._('PENDING');
const TransactionListItemDtoFlagEnum _$transactionListItemDtoFlagEnum_PADDING =
    const TransactionListItemDtoFlagEnum._('PADDING');
const TransactionListItemDtoFlagEnum
    _$transactionListItemDtoFlagEnum_SUMMARIZE =
    const TransactionListItemDtoFlagEnum._('SUMMARIZE');
const TransactionListItemDtoFlagEnum _$transactionListItemDtoFlagEnum_TRANSFER =
    const TransactionListItemDtoFlagEnum._('TRANSFER');
const TransactionListItemDtoFlagEnum
    _$transactionListItemDtoFlagEnum_CONVERSIONS =
    const TransactionListItemDtoFlagEnum._('CONVERSIONS');

TransactionListItemDtoFlagEnum _$transactionListItemDtoFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'CLEARED':
      return _$transactionListItemDtoFlagEnum_CLEARED;
    case 'PENDING':
      return _$transactionListItemDtoFlagEnum_PENDING;
    case 'PADDING':
      return _$transactionListItemDtoFlagEnum_PADDING;
    case 'SUMMARIZE':
      return _$transactionListItemDtoFlagEnum_SUMMARIZE;
    case 'TRANSFER':
      return _$transactionListItemDtoFlagEnum_TRANSFER;
    case 'CONVERSIONS':
      return _$transactionListItemDtoFlagEnum_CONVERSIONS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionListItemDtoFlagEnum>
    _$transactionListItemDtoFlagEnumValues = new BuiltSet<
        TransactionListItemDtoFlagEnum>(const <TransactionListItemDtoFlagEnum>[
  _$transactionListItemDtoFlagEnum_CLEARED,
  _$transactionListItemDtoFlagEnum_PENDING,
  _$transactionListItemDtoFlagEnum_PADDING,
  _$transactionListItemDtoFlagEnum_SUMMARIZE,
  _$transactionListItemDtoFlagEnum_TRANSFER,
  _$transactionListItemDtoFlagEnum_CONVERSIONS,
]);

const TransactionListItemDtoStatusEnum
    _$transactionListItemDtoStatusEnum_ACTIVE =
    const TransactionListItemDtoStatusEnum._('ACTIVE');
const TransactionListItemDtoStatusEnum
    _$transactionListItemDtoStatusEnum_VOIDED =
    const TransactionListItemDtoStatusEnum._('VOIDED');
const TransactionListItemDtoStatusEnum
    _$transactionListItemDtoStatusEnum_SUPERSEDED =
    const TransactionListItemDtoStatusEnum._('SUPERSEDED');

TransactionListItemDtoStatusEnum _$transactionListItemDtoStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ACTIVE':
      return _$transactionListItemDtoStatusEnum_ACTIVE;
    case 'VOIDED':
      return _$transactionListItemDtoStatusEnum_VOIDED;
    case 'SUPERSEDED':
      return _$transactionListItemDtoStatusEnum_SUPERSEDED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionListItemDtoStatusEnum>
    _$transactionListItemDtoStatusEnumValues = new BuiltSet<
        TransactionListItemDtoStatusEnum>(const <TransactionListItemDtoStatusEnum>[
  _$transactionListItemDtoStatusEnum_ACTIVE,
  _$transactionListItemDtoStatusEnum_VOIDED,
  _$transactionListItemDtoStatusEnum_SUPERSEDED,
]);

Serializer<TransactionListItemDtoFlagEnum>
    _$transactionListItemDtoFlagEnumSerializer =
    new _$TransactionListItemDtoFlagEnumSerializer();
Serializer<TransactionListItemDtoStatusEnum>
    _$transactionListItemDtoStatusEnumSerializer =
    new _$TransactionListItemDtoStatusEnumSerializer();

class _$TransactionListItemDtoFlagEnumSerializer
    implements PrimitiveSerializer<TransactionListItemDtoFlagEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CLEARED': 'CLEARED',
    'PENDING': 'PENDING',
    'PADDING': 'PADDING',
    'SUMMARIZE': 'SUMMARIZE',
    'TRANSFER': 'TRANSFER',
    'CONVERSIONS': 'CONVERSIONS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CLEARED': 'CLEARED',
    'PENDING': 'PENDING',
    'PADDING': 'PADDING',
    'SUMMARIZE': 'SUMMARIZE',
    'TRANSFER': 'TRANSFER',
    'CONVERSIONS': 'CONVERSIONS',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionListItemDtoFlagEnum];
  @override
  final String wireName = 'TransactionListItemDtoFlagEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionListItemDtoFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionListItemDtoFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionListItemDtoFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionListItemDtoStatusEnumSerializer
    implements PrimitiveSerializer<TransactionListItemDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'VOIDED': 'VOIDED',
    'SUPERSEDED': 'SUPERSEDED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'VOIDED': 'VOIDED',
    'SUPERSEDED': 'SUPERSEDED',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionListItemDtoStatusEnum];
  @override
  final String wireName = 'TransactionListItemDtoStatusEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionListItemDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionListItemDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionListItemDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionListItemDto extends TransactionListItemDto {
  @override
  final String id;
  @override
  final String date;
  @override
  final TransactionListItemDtoFlagEnum? flag;
  @override
  final String? customFlag;
  @override
  final String? payee;
  @override
  final String narration;
  @override
  final BuiltList<String> tags;
  @override
  final BuiltList<String> links;
  @override
  final JsonObject? meta;
  @override
  final TransactionListItemDtoStatusEnum status;
  @override
  final String? sourceType;
  @override
  final String? sourcePlatform;
  @override
  final BuiltList<PostingDetailDto> postings;
  @override
  final String createdAt;
  @override
  final String? voidedAt;
  @override
  final String? voidedBy;
  @override
  final String? correctionReason;
  @override
  final String? supersededBy;
  @override
  final String? originalTxn;
  @override
  final String? viewpointAmount;
  @override
  final String? viewpointCurrency;

  factory _$TransactionListItemDto(
          [void Function(TransactionListItemDtoBuilder)? updates]) =>
      (new TransactionListItemDtoBuilder()..update(updates))._build();

  _$TransactionListItemDto._(
      {required this.id,
      required this.date,
      this.flag,
      this.customFlag,
      this.payee,
      required this.narration,
      required this.tags,
      required this.links,
      this.meta,
      required this.status,
      this.sourceType,
      this.sourcePlatform,
      required this.postings,
      required this.createdAt,
      this.voidedAt,
      this.voidedBy,
      this.correctionReason,
      this.supersededBy,
      this.originalTxn,
      this.viewpointAmount,
      this.viewpointCurrency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TransactionListItemDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'TransactionListItemDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TransactionListItemDto', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TransactionListItemDto', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        links, r'TransactionListItemDto', 'links');
    BuiltValueNullFieldError.checkNotNull(
        status, r'TransactionListItemDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'TransactionListItemDto', 'postings');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'TransactionListItemDto', 'createdAt');
  }

  @override
  TransactionListItemDto rebuild(
          void Function(TransactionListItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListItemDtoBuilder toBuilder() =>
      new TransactionListItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListItemDto &&
        id == other.id &&
        date == other.date &&
        flag == other.flag &&
        customFlag == other.customFlag &&
        payee == other.payee &&
        narration == other.narration &&
        tags == other.tags &&
        links == other.links &&
        meta == other.meta &&
        status == other.status &&
        sourceType == other.sourceType &&
        sourcePlatform == other.sourcePlatform &&
        postings == other.postings &&
        createdAt == other.createdAt &&
        voidedAt == other.voidedAt &&
        voidedBy == other.voidedBy &&
        correctionReason == other.correctionReason &&
        supersededBy == other.supersededBy &&
        originalTxn == other.originalTxn &&
        viewpointAmount == other.viewpointAmount &&
        viewpointCurrency == other.viewpointCurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, customFlag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, voidedAt.hashCode);
    _$hash = $jc(_$hash, voidedBy.hashCode);
    _$hash = $jc(_$hash, correctionReason.hashCode);
    _$hash = $jc(_$hash, supersededBy.hashCode);
    _$hash = $jc(_$hash, originalTxn.hashCode);
    _$hash = $jc(_$hash, viewpointAmount.hashCode);
    _$hash = $jc(_$hash, viewpointCurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionListItemDto')
          ..add('id', id)
          ..add('date', date)
          ..add('flag', flag)
          ..add('customFlag', customFlag)
          ..add('payee', payee)
          ..add('narration', narration)
          ..add('tags', tags)
          ..add('links', links)
          ..add('meta', meta)
          ..add('status', status)
          ..add('sourceType', sourceType)
          ..add('sourcePlatform', sourcePlatform)
          ..add('postings', postings)
          ..add('createdAt', createdAt)
          ..add('voidedAt', voidedAt)
          ..add('voidedBy', voidedBy)
          ..add('correctionReason', correctionReason)
          ..add('supersededBy', supersededBy)
          ..add('originalTxn', originalTxn)
          ..add('viewpointAmount', viewpointAmount)
          ..add('viewpointCurrency', viewpointCurrency))
        .toString();
  }
}

class TransactionListItemDtoBuilder
    implements Builder<TransactionListItemDto, TransactionListItemDtoBuilder> {
  _$TransactionListItemDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  TransactionListItemDtoFlagEnum? _flag;
  TransactionListItemDtoFlagEnum? get flag => _$this._flag;
  set flag(TransactionListItemDtoFlagEnum? flag) => _$this._flag = flag;

  String? _customFlag;
  String? get customFlag => _$this._customFlag;
  set customFlag(String? customFlag) => _$this._customFlag = customFlag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  TransactionListItemDtoStatusEnum? _status;
  TransactionListItemDtoStatusEnum? get status => _$this._status;
  set status(TransactionListItemDtoStatusEnum? status) =>
      _$this._status = status;

  String? _sourceType;
  String? get sourceType => _$this._sourceType;
  set sourceType(String? sourceType) => _$this._sourceType = sourceType;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

  ListBuilder<PostingDetailDto>? _postings;
  ListBuilder<PostingDetailDto> get postings =>
      _$this._postings ??= new ListBuilder<PostingDetailDto>();
  set postings(ListBuilder<PostingDetailDto>? postings) =>
      _$this._postings = postings;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _voidedAt;
  String? get voidedAt => _$this._voidedAt;
  set voidedAt(String? voidedAt) => _$this._voidedAt = voidedAt;

  String? _voidedBy;
  String? get voidedBy => _$this._voidedBy;
  set voidedBy(String? voidedBy) => _$this._voidedBy = voidedBy;

  String? _correctionReason;
  String? get correctionReason => _$this._correctionReason;
  set correctionReason(String? correctionReason) =>
      _$this._correctionReason = correctionReason;

  String? _supersededBy;
  String? get supersededBy => _$this._supersededBy;
  set supersededBy(String? supersededBy) => _$this._supersededBy = supersededBy;

  String? _originalTxn;
  String? get originalTxn => _$this._originalTxn;
  set originalTxn(String? originalTxn) => _$this._originalTxn = originalTxn;

  String? _viewpointAmount;
  String? get viewpointAmount => _$this._viewpointAmount;
  set viewpointAmount(String? viewpointAmount) =>
      _$this._viewpointAmount = viewpointAmount;

  String? _viewpointCurrency;
  String? get viewpointCurrency => _$this._viewpointCurrency;
  set viewpointCurrency(String? viewpointCurrency) =>
      _$this._viewpointCurrency = viewpointCurrency;

  TransactionListItemDtoBuilder() {
    TransactionListItemDto._defaults(this);
  }

  TransactionListItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _flag = $v.flag;
      _customFlag = $v.customFlag;
      _payee = $v.payee;
      _narration = $v.narration;
      _tags = $v.tags.toBuilder();
      _links = $v.links.toBuilder();
      _meta = $v.meta;
      _status = $v.status;
      _sourceType = $v.sourceType;
      _sourcePlatform = $v.sourcePlatform;
      _postings = $v.postings.toBuilder();
      _createdAt = $v.createdAt;
      _voidedAt = $v.voidedAt;
      _voidedBy = $v.voidedBy;
      _correctionReason = $v.correctionReason;
      _supersededBy = $v.supersededBy;
      _originalTxn = $v.originalTxn;
      _viewpointAmount = $v.viewpointAmount;
      _viewpointCurrency = $v.viewpointCurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionListItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListItemDto;
  }

  @override
  void update(void Function(TransactionListItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionListItemDto build() => _build();

  _$TransactionListItemDto _build() {
    _$TransactionListItemDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionListItemDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TransactionListItemDto', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TransactionListItemDto', 'date'),
              flag: flag,
              customFlag: customFlag,
              payee: payee,
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'TransactionListItemDto', 'narration'),
              tags: tags.build(),
              links: links.build(),
              meta: meta,
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'TransactionListItemDto', 'status'),
              sourceType: sourceType,
              sourcePlatform: sourcePlatform,
              postings: postings.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'TransactionListItemDto', 'createdAt'),
              voidedAt: voidedAt,
              voidedBy: voidedBy,
              correctionReason: correctionReason,
              supersededBy: supersededBy,
              originalTxn: originalTxn,
              viewpointAmount: viewpointAmount,
              viewpointCurrency: viewpointCurrency);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
        _$failedField = 'links';
        links.build();

        _$failedField = 'postings';
        postings.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionListItemDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
