// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionDetailDtoStatusEnum _$transactionDetailDtoStatusEnum_ACTIVE =
    const TransactionDetailDtoStatusEnum._('ACTIVE');
const TransactionDetailDtoStatusEnum _$transactionDetailDtoStatusEnum_VOIDED =
    const TransactionDetailDtoStatusEnum._('VOIDED');
const TransactionDetailDtoStatusEnum
    _$transactionDetailDtoStatusEnum_SUPERSEDED =
    const TransactionDetailDtoStatusEnum._('SUPERSEDED');

TransactionDetailDtoStatusEnum _$transactionDetailDtoStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'ACTIVE':
      return _$transactionDetailDtoStatusEnum_ACTIVE;
    case 'VOIDED':
      return _$transactionDetailDtoStatusEnum_VOIDED;
    case 'SUPERSEDED':
      return _$transactionDetailDtoStatusEnum_SUPERSEDED;
    default:
      return _$transactionDetailDtoStatusEnum_SUPERSEDED;
  }
}

final BuiltSet<TransactionDetailDtoStatusEnum>
    _$transactionDetailDtoStatusEnumValues = new BuiltSet<
        TransactionDetailDtoStatusEnum>(const <TransactionDetailDtoStatusEnum>[
  _$transactionDetailDtoStatusEnum_ACTIVE,
  _$transactionDetailDtoStatusEnum_VOIDED,
  _$transactionDetailDtoStatusEnum_SUPERSEDED,
]);

const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_CLEARED =
    const TransactionDetailDtoFlagEnum._('CLEARED');
const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_PENDING =
    const TransactionDetailDtoFlagEnum._('PENDING');
const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_PADDING =
    const TransactionDetailDtoFlagEnum._('PADDING');
const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_SUMMARIZE =
    const TransactionDetailDtoFlagEnum._('SUMMARIZE');
const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_TRANSFER =
    const TransactionDetailDtoFlagEnum._('TRANSFER');
const TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnum_CONVERSIONS =
    const TransactionDetailDtoFlagEnum._('CONVERSIONS');

TransactionDetailDtoFlagEnum _$transactionDetailDtoFlagEnumValueOf(
    String name) {
  switch (name) {
    case 'CLEARED':
      return _$transactionDetailDtoFlagEnum_CLEARED;
    case 'PENDING':
      return _$transactionDetailDtoFlagEnum_PENDING;
    case 'PADDING':
      return _$transactionDetailDtoFlagEnum_PADDING;
    case 'SUMMARIZE':
      return _$transactionDetailDtoFlagEnum_SUMMARIZE;
    case 'TRANSFER':
      return _$transactionDetailDtoFlagEnum_TRANSFER;
    case 'CONVERSIONS':
      return _$transactionDetailDtoFlagEnum_CONVERSIONS;
    default:
      return _$transactionDetailDtoFlagEnum_CONVERSIONS;
  }
}

final BuiltSet<TransactionDetailDtoFlagEnum>
    _$transactionDetailDtoFlagEnumValues = new BuiltSet<
        TransactionDetailDtoFlagEnum>(const <TransactionDetailDtoFlagEnum>[
  _$transactionDetailDtoFlagEnum_CLEARED,
  _$transactionDetailDtoFlagEnum_PENDING,
  _$transactionDetailDtoFlagEnum_PADDING,
  _$transactionDetailDtoFlagEnum_SUMMARIZE,
  _$transactionDetailDtoFlagEnum_TRANSFER,
  _$transactionDetailDtoFlagEnum_CONVERSIONS,
]);

const TransactionDetailDtoSourceTypeEnum
    _$transactionDetailDtoSourceTypeEnum_NLP =
    const TransactionDetailDtoSourceTypeEnum._('NLP');
const TransactionDetailDtoSourceTypeEnum
    _$transactionDetailDtoSourceTypeEnum_CSV =
    const TransactionDetailDtoSourceTypeEnum._('CSV');
const TransactionDetailDtoSourceTypeEnum
    _$transactionDetailDtoSourceTypeEnum_OCR =
    const TransactionDetailDtoSourceTypeEnum._('OCR');
const TransactionDetailDtoSourceTypeEnum
    _$transactionDetailDtoSourceTypeEnum_API =
    const TransactionDetailDtoSourceTypeEnum._('API');

TransactionDetailDtoSourceTypeEnum _$transactionDetailDtoSourceTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'NLP':
      return _$transactionDetailDtoSourceTypeEnum_NLP;
    case 'CSV':
      return _$transactionDetailDtoSourceTypeEnum_CSV;
    case 'OCR':
      return _$transactionDetailDtoSourceTypeEnum_OCR;
    case 'API':
      return _$transactionDetailDtoSourceTypeEnum_API;
    default:
      return _$transactionDetailDtoSourceTypeEnum_API;
  }
}

final BuiltSet<TransactionDetailDtoSourceTypeEnum>
    _$transactionDetailDtoSourceTypeEnumValues = new BuiltSet<
        TransactionDetailDtoSourceTypeEnum>(const <TransactionDetailDtoSourceTypeEnum>[
  _$transactionDetailDtoSourceTypeEnum_NLP,
  _$transactionDetailDtoSourceTypeEnum_CSV,
  _$transactionDetailDtoSourceTypeEnum_OCR,
  _$transactionDetailDtoSourceTypeEnum_API,
]);

Serializer<TransactionDetailDtoStatusEnum>
    _$transactionDetailDtoStatusEnumSerializer =
    new _$TransactionDetailDtoStatusEnumSerializer();
Serializer<TransactionDetailDtoFlagEnum>
    _$transactionDetailDtoFlagEnumSerializer =
    new _$TransactionDetailDtoFlagEnumSerializer();
Serializer<TransactionDetailDtoSourceTypeEnum>
    _$transactionDetailDtoSourceTypeEnumSerializer =
    new _$TransactionDetailDtoSourceTypeEnumSerializer();

class _$TransactionDetailDtoStatusEnumSerializer
    implements PrimitiveSerializer<TransactionDetailDtoStatusEnum> {
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
  final Iterable<Type> types = const <Type>[TransactionDetailDtoStatusEnum];
  @override
  final String wireName = 'TransactionDetailDtoStatusEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionDetailDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionDetailDtoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionDetailDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionDetailDtoFlagEnumSerializer
    implements PrimitiveSerializer<TransactionDetailDtoFlagEnum> {
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
  final Iterable<Type> types = const <Type>[TransactionDetailDtoFlagEnum];
  @override
  final String wireName = 'TransactionDetailDtoFlagEnum';

  @override
  Object serialize(Serializers serializers, TransactionDetailDtoFlagEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionDetailDtoFlagEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionDetailDtoFlagEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionDetailDtoSourceTypeEnumSerializer
    implements PrimitiveSerializer<TransactionDetailDtoSourceTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NLP': 'NLP',
    'CSV': 'CSV',
    'OCR': 'OCR',
    'API': 'API',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NLP': 'NLP',
    'CSV': 'CSV',
    'OCR': 'OCR',
    'API': 'API',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionDetailDtoSourceTypeEnum];
  @override
  final String wireName = 'TransactionDetailDtoSourceTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionDetailDtoSourceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionDetailDtoSourceTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionDetailDtoSourceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionDetailDto extends TransactionDetailDto {
  @override
  final String id;
  @override
  final String date;
  @override
  final String narration;
  @override
  final BuiltList<String> tags;
  @override
  final BuiltList<String> links;
  @override
  final TransactionDetailDtoStatusEnum status;
  @override
  final BuiltList<PostingDetailDto> postings;
  @override
  final String createdAt;
  @override
  final TransactionDetailDtoFlagEnum? flag;
  @override
  final String? customFlag;
  @override
  final String? payee;
  @override
  final JsonObject? meta;
  @override
  final TransactionDetailDtoSourceTypeEnum? sourceType;
  @override
  final String? sourcePlatform;
  @override
  final String? voidedAt;
  @override
  final String? voidedBy;
  @override
  final String? correctionReason;

  factory _$TransactionDetailDto(
          [void Function(TransactionDetailDtoBuilder)? updates]) =>
      (new TransactionDetailDtoBuilder()..update(updates))._build();

  _$TransactionDetailDto._(
      {required this.id,
      required this.date,
      required this.narration,
      required this.tags,
      required this.links,
      required this.status,
      required this.postings,
      required this.createdAt,
      this.flag,
      this.customFlag,
      this.payee,
      this.meta,
      this.sourceType,
      this.sourcePlatform,
      this.voidedAt,
      this.voidedBy,
      this.correctionReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TransactionDetailDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        date, r'TransactionDetailDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'TransactionDetailDto', 'narration');
    BuiltValueNullFieldError.checkNotNull(
        tags, r'TransactionDetailDto', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        links, r'TransactionDetailDto', 'links');
    BuiltValueNullFieldError.checkNotNull(
        status, r'TransactionDetailDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        postings, r'TransactionDetailDto', 'postings');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'TransactionDetailDto', 'createdAt');
  }

  @override
  TransactionDetailDto rebuild(
          void Function(TransactionDetailDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionDetailDtoBuilder toBuilder() =>
      new TransactionDetailDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionDetailDto &&
        id == other.id &&
        date == other.date &&
        narration == other.narration &&
        tags == other.tags &&
        links == other.links &&
        status == other.status &&
        postings == other.postings &&
        createdAt == other.createdAt &&
        flag == other.flag &&
        customFlag == other.customFlag &&
        payee == other.payee &&
        meta == other.meta &&
        sourceType == other.sourceType &&
        sourcePlatform == other.sourcePlatform &&
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
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, links.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, postings.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, flag.hashCode);
    _$hash = $jc(_$hash, customFlag.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jc(_$hash, voidedAt.hashCode);
    _$hash = $jc(_$hash, voidedBy.hashCode);
    _$hash = $jc(_$hash, correctionReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionDetailDto')
          ..add('id', id)
          ..add('date', date)
          ..add('narration', narration)
          ..add('tags', tags)
          ..add('links', links)
          ..add('status', status)
          ..add('postings', postings)
          ..add('createdAt', createdAt)
          ..add('flag', flag)
          ..add('customFlag', customFlag)
          ..add('payee', payee)
          ..add('meta', meta)
          ..add('sourceType', sourceType)
          ..add('sourcePlatform', sourcePlatform)
          ..add('voidedAt', voidedAt)
          ..add('voidedBy', voidedBy)
          ..add('correctionReason', correctionReason))
        .toString();
  }
}

class TransactionDetailDtoBuilder
    implements Builder<TransactionDetailDto, TransactionDetailDtoBuilder> {
  _$TransactionDetailDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _links;
  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();
  set links(ListBuilder<String>? links) => _$this._links = links;

  TransactionDetailDtoStatusEnum? _status;
  TransactionDetailDtoStatusEnum? get status => _$this._status;
  set status(TransactionDetailDtoStatusEnum? status) => _$this._status = status;

  ListBuilder<PostingDetailDto>? _postings;
  ListBuilder<PostingDetailDto> get postings =>
      _$this._postings ??= new ListBuilder<PostingDetailDto>();
  set postings(ListBuilder<PostingDetailDto>? postings) =>
      _$this._postings = postings;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  TransactionDetailDtoFlagEnum? _flag;
  TransactionDetailDtoFlagEnum? get flag => _$this._flag;
  set flag(TransactionDetailDtoFlagEnum? flag) => _$this._flag = flag;

  String? _customFlag;
  String? get customFlag => _$this._customFlag;
  set customFlag(String? customFlag) => _$this._customFlag = customFlag;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  JsonObject? _meta;
  JsonObject? get meta => _$this._meta;
  set meta(JsonObject? meta) => _$this._meta = meta;

  TransactionDetailDtoSourceTypeEnum? _sourceType;
  TransactionDetailDtoSourceTypeEnum? get sourceType => _$this._sourceType;
  set sourceType(TransactionDetailDtoSourceTypeEnum? sourceType) =>
      _$this._sourceType = sourceType;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

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

  TransactionDetailDtoBuilder() {
    TransactionDetailDto._defaults(this);
  }

  TransactionDetailDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _date = $v.date;
      _narration = $v.narration;
      _tags = $v.tags.toBuilder();
      _links = $v.links.toBuilder();
      _status = $v.status;
      _postings = $v.postings.toBuilder();
      _createdAt = $v.createdAt;
      _flag = $v.flag;
      _customFlag = $v.customFlag;
      _payee = $v.payee;
      _meta = $v.meta;
      _sourceType = $v.sourceType;
      _sourcePlatform = $v.sourcePlatform;
      _voidedAt = $v.voidedAt;
      _voidedBy = $v.voidedBy;
      _correctionReason = $v.correctionReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionDetailDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionDetailDto;
  }

  @override
  void update(void Function(TransactionDetailDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionDetailDto build() => _build();

  _$TransactionDetailDto _build() {
    _$TransactionDetailDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionDetailDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TransactionDetailDto', 'id'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'TransactionDetailDto', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'TransactionDetailDto', 'narration'),
              tags: tags.build(),
              links: links.build(),
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'TransactionDetailDto', 'status'),
              postings: postings.build(),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, r'TransactionDetailDto', 'createdAt'),
              flag: flag,
              customFlag: customFlag,
              payee: payee,
              meta: meta,
              sourceType: sourceType,
              sourcePlatform: sourcePlatform,
              voidedAt: voidedAt,
              voidedBy: voidedBy,
              correctionReason: correctionReason);
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
            r'TransactionDetailDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
