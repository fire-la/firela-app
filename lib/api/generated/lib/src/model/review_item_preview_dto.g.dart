// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_item_preview_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReviewItemPreviewDtoBranchTypeEnum
    _$reviewItemPreviewDtoBranchTypeEnum_DUPLICATE =
    const ReviewItemPreviewDtoBranchTypeEnum._('DUPLICATE');
const ReviewItemPreviewDtoBranchTypeEnum
    _$reviewItemPreviewDtoBranchTypeEnum_PAYEE_MATCH =
    const ReviewItemPreviewDtoBranchTypeEnum._('PAYEE_MATCH');
const ReviewItemPreviewDtoBranchTypeEnum
    _$reviewItemPreviewDtoBranchTypeEnum_RULE_MATCH =
    const ReviewItemPreviewDtoBranchTypeEnum._('RULE_MATCH');
const ReviewItemPreviewDtoBranchTypeEnum
    _$reviewItemPreviewDtoBranchTypeEnum_ACCOUNT_VALIDATION =
    const ReviewItemPreviewDtoBranchTypeEnum._('ACCOUNT_VALIDATION');
const ReviewItemPreviewDtoBranchTypeEnum
    _$reviewItemPreviewDtoBranchTypeEnum_PIPELINE_ERROR =
    const ReviewItemPreviewDtoBranchTypeEnum._('PIPELINE_ERROR');

ReviewItemPreviewDtoBranchTypeEnum _$reviewItemPreviewDtoBranchTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'DUPLICATE':
      return _$reviewItemPreviewDtoBranchTypeEnum_DUPLICATE;
    case 'PAYEE_MATCH':
      return _$reviewItemPreviewDtoBranchTypeEnum_PAYEE_MATCH;
    case 'RULE_MATCH':
      return _$reviewItemPreviewDtoBranchTypeEnum_RULE_MATCH;
    case 'ACCOUNT_VALIDATION':
      return _$reviewItemPreviewDtoBranchTypeEnum_ACCOUNT_VALIDATION;
    case 'PIPELINE_ERROR':
      return _$reviewItemPreviewDtoBranchTypeEnum_PIPELINE_ERROR;
    default:
      return _$reviewItemPreviewDtoBranchTypeEnum_PIPELINE_ERROR;
  }
}

final BuiltSet<ReviewItemPreviewDtoBranchTypeEnum>
    _$reviewItemPreviewDtoBranchTypeEnumValues = new BuiltSet<
        ReviewItemPreviewDtoBranchTypeEnum>(const <ReviewItemPreviewDtoBranchTypeEnum>[
  _$reviewItemPreviewDtoBranchTypeEnum_DUPLICATE,
  _$reviewItemPreviewDtoBranchTypeEnum_PAYEE_MATCH,
  _$reviewItemPreviewDtoBranchTypeEnum_RULE_MATCH,
  _$reviewItemPreviewDtoBranchTypeEnum_ACCOUNT_VALIDATION,
  _$reviewItemPreviewDtoBranchTypeEnum_PIPELINE_ERROR,
]);

Serializer<ReviewItemPreviewDtoBranchTypeEnum>
    _$reviewItemPreviewDtoBranchTypeEnumSerializer =
    new _$ReviewItemPreviewDtoBranchTypeEnumSerializer();

class _$ReviewItemPreviewDtoBranchTypeEnumSerializer
    implements PrimitiveSerializer<ReviewItemPreviewDtoBranchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DUPLICATE': 'DUPLICATE',
    'PAYEE_MATCH': 'PAYEE_MATCH',
    'RULE_MATCH': 'RULE_MATCH',
    'ACCOUNT_VALIDATION': 'ACCOUNT_VALIDATION',
    'PIPELINE_ERROR': 'PIPELINE_ERROR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DUPLICATE': 'DUPLICATE',
    'PAYEE_MATCH': 'PAYEE_MATCH',
    'RULE_MATCH': 'RULE_MATCH',
    'ACCOUNT_VALIDATION': 'ACCOUNT_VALIDATION',
    'PIPELINE_ERROR': 'PIPELINE_ERROR',
  };

  @override
  final Iterable<Type> types = const <Type>[ReviewItemPreviewDtoBranchTypeEnum];
  @override
  final String wireName = 'ReviewItemPreviewDtoBranchTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ReviewItemPreviewDtoBranchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReviewItemPreviewDtoBranchTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReviewItemPreviewDtoBranchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ReviewItemPreviewDto extends ReviewItemPreviewDto {
  @override
  final num index;
  @override
  final String date;
  @override
  final String narration;
  @override
  final num? amount;
  @override
  final String? currency;
  @override
  final String? payee;
  @override
  final String? category;
  @override
  final num? confidence;
  @override
  final ReviewItemPreviewDtoBranchTypeEnum? branchType;
  @override
  final BuiltList<String>? reasons;

  factory _$ReviewItemPreviewDto(
          [void Function(ReviewItemPreviewDtoBuilder)? updates]) =>
      (new ReviewItemPreviewDtoBuilder()..update(updates))._build();

  _$ReviewItemPreviewDto._(
      {required this.index,
      required this.date,
      required this.narration,
      this.amount,
      this.currency,
      this.payee,
      this.category,
      this.confidence,
      this.branchType,
      this.reasons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        index, r'ReviewItemPreviewDto', 'index');
    BuiltValueNullFieldError.checkNotNull(
        date, r'ReviewItemPreviewDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'ReviewItemPreviewDto', 'narration');
  }

  @override
  ReviewItemPreviewDto rebuild(
          void Function(ReviewItemPreviewDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewItemPreviewDtoBuilder toBuilder() =>
      new ReviewItemPreviewDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewItemPreviewDto &&
        index == other.index &&
        date == other.date &&
        narration == other.narration &&
        amount == other.amount &&
        currency == other.currency &&
        payee == other.payee &&
        category == other.category &&
        confidence == other.confidence &&
        branchType == other.branchType &&
        reasons == other.reasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, confidence.hashCode);
    _$hash = $jc(_$hash, branchType.hashCode);
    _$hash = $jc(_$hash, reasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewItemPreviewDto')
          ..add('index', index)
          ..add('date', date)
          ..add('narration', narration)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('payee', payee)
          ..add('category', category)
          ..add('confidence', confidence)
          ..add('branchType', branchType)
          ..add('reasons', reasons))
        .toString();
  }
}

class ReviewItemPreviewDtoBuilder
    implements Builder<ReviewItemPreviewDto, ReviewItemPreviewDtoBuilder> {
  _$ReviewItemPreviewDto? _$v;

  num? _index;
  num? get index => _$this._index;
  set index(num? index) => _$this._index = index;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(String? narration) => _$this._narration = narration;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(String? payee) => _$this._payee = payee;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  num? _confidence;
  num? get confidence => _$this._confidence;
  set confidence(num? confidence) => _$this._confidence = confidence;

  ReviewItemPreviewDtoBranchTypeEnum? _branchType;
  ReviewItemPreviewDtoBranchTypeEnum? get branchType => _$this._branchType;
  set branchType(ReviewItemPreviewDtoBranchTypeEnum? branchType) =>
      _$this._branchType = branchType;

  ListBuilder<String>? _reasons;
  ListBuilder<String> get reasons =>
      _$this._reasons ??= new ListBuilder<String>();
  set reasons(ListBuilder<String>? reasons) => _$this._reasons = reasons;

  ReviewItemPreviewDtoBuilder() {
    ReviewItemPreviewDto._defaults(this);
  }

  ReviewItemPreviewDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _date = $v.date;
      _narration = $v.narration;
      _amount = $v.amount;
      _currency = $v.currency;
      _payee = $v.payee;
      _category = $v.category;
      _confidence = $v.confidence;
      _branchType = $v.branchType;
      _reasons = $v.reasons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewItemPreviewDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewItemPreviewDto;
  }

  @override
  void update(void Function(ReviewItemPreviewDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewItemPreviewDto build() => _build();

  _$ReviewItemPreviewDto _build() {
    _$ReviewItemPreviewDto _$result;
    try {
      _$result = _$v ??
          new _$ReviewItemPreviewDto._(
              index: BuiltValueNullFieldError.checkNotNull(
                  index, r'ReviewItemPreviewDto', 'index'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'ReviewItemPreviewDto', 'date'),
              narration: BuiltValueNullFieldError.checkNotNull(
                  narration, r'ReviewItemPreviewDto', 'narration'),
              amount: amount,
              currency: currency,
              payee: payee,
              category: category,
              confidence: confidence,
              branchType: branchType,
              reasons: _reasons?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reasons';
        _reasons?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReviewItemPreviewDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
