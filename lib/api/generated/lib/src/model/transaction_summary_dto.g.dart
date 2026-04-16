// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionSummaryDtoSourceTypeEnum
    _$transactionSummaryDtoSourceTypeEnum_NLP =
    const TransactionSummaryDtoSourceTypeEnum._('NLP');
const TransactionSummaryDtoSourceTypeEnum
    _$transactionSummaryDtoSourceTypeEnum_CSV =
    const TransactionSummaryDtoSourceTypeEnum._('CSV');
const TransactionSummaryDtoSourceTypeEnum
    _$transactionSummaryDtoSourceTypeEnum_OCR =
    const TransactionSummaryDtoSourceTypeEnum._('OCR');
const TransactionSummaryDtoSourceTypeEnum
    _$transactionSummaryDtoSourceTypeEnum_API =
    const TransactionSummaryDtoSourceTypeEnum._('API');

TransactionSummaryDtoSourceTypeEnum
    _$transactionSummaryDtoSourceTypeEnumValueOf(String name) {
  switch (name) {
    case 'NLP':
      return _$transactionSummaryDtoSourceTypeEnum_NLP;
    case 'CSV':
      return _$transactionSummaryDtoSourceTypeEnum_CSV;
    case 'OCR':
      return _$transactionSummaryDtoSourceTypeEnum_OCR;
    case 'API':
      return _$transactionSummaryDtoSourceTypeEnum_API;
    default:
      return _$transactionSummaryDtoSourceTypeEnum_API;
  }
}

final BuiltSet<TransactionSummaryDtoSourceTypeEnum>
    _$transactionSummaryDtoSourceTypeEnumValues = new BuiltSet<
        TransactionSummaryDtoSourceTypeEnum>(const <TransactionSummaryDtoSourceTypeEnum>[
  _$transactionSummaryDtoSourceTypeEnum_NLP,
  _$transactionSummaryDtoSourceTypeEnum_CSV,
  _$transactionSummaryDtoSourceTypeEnum_OCR,
  _$transactionSummaryDtoSourceTypeEnum_API,
]);

Serializer<TransactionSummaryDtoSourceTypeEnum>
    _$transactionSummaryDtoSourceTypeEnumSerializer =
    new _$TransactionSummaryDtoSourceTypeEnumSerializer();

class _$TransactionSummaryDtoSourceTypeEnumSerializer
    implements PrimitiveSerializer<TransactionSummaryDtoSourceTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    TransactionSummaryDtoSourceTypeEnum
  ];
  @override
  final String wireName = 'TransactionSummaryDtoSourceTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionSummaryDtoSourceTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionSummaryDtoSourceTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionSummaryDtoSourceTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract mixin class TransactionSummaryDtoBuilder {
  void replace(TransactionSummaryDto other);
  void update(void Function(TransactionSummaryDtoBuilder) updates);
  String? get date;
  set date(String? date);

  String? get amount;
  set amount(String? amount);

  String? get currency;
  set currency(String? currency);

  String? get narration;
  set narration(String? narration);

  String? get id;
  set id(String? id);

  String? get payee;
  set payee(String? payee);

  String? get accountName;
  set accountName(String? accountName);

  TransactionSummaryDtoSourceTypeEnum? get sourceType;
  set sourceType(TransactionSummaryDtoSourceTypeEnum? sourceType);

  String? get sourcePlatform;
  set sourcePlatform(String? sourcePlatform);
}

class _$$TransactionSummaryDto extends $TransactionSummaryDto {
  @override
  final String date;
  @override
  final String amount;
  @override
  final String currency;
  @override
  final String narration;
  @override
  final String? id;
  @override
  final String? payee;
  @override
  final String? accountName;
  @override
  final TransactionSummaryDtoSourceTypeEnum? sourceType;
  @override
  final String? sourcePlatform;

  factory _$$TransactionSummaryDto(
          [void Function($TransactionSummaryDtoBuilder)? updates]) =>
      (new $TransactionSummaryDtoBuilder()..update(updates))._build();

  _$$TransactionSummaryDto._(
      {required this.date,
      required this.amount,
      required this.currency,
      required this.narration,
      this.id,
      this.payee,
      this.accountName,
      this.sourceType,
      this.sourcePlatform})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'$TransactionSummaryDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'$TransactionSummaryDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'$TransactionSummaryDto', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        narration, r'$TransactionSummaryDto', 'narration');
  }

  @override
  $TransactionSummaryDto rebuild(
          void Function($TransactionSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $TransactionSummaryDtoBuilder toBuilder() =>
      new $TransactionSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TransactionSummaryDto &&
        date == other.date &&
        amount == other.amount &&
        currency == other.currency &&
        narration == other.narration &&
        id == other.id &&
        payee == other.payee &&
        accountName == other.accountName &&
        sourceType == other.sourceType &&
        sourcePlatform == other.sourcePlatform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, narration.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, sourceType.hashCode);
    _$hash = $jc(_$hash, sourcePlatform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TransactionSummaryDto')
          ..add('date', date)
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('narration', narration)
          ..add('id', id)
          ..add('payee', payee)
          ..add('accountName', accountName)
          ..add('sourceType', sourceType)
          ..add('sourcePlatform', sourcePlatform))
        .toString();
  }
}

class $TransactionSummaryDtoBuilder
    implements
        Builder<$TransactionSummaryDto, $TransactionSummaryDtoBuilder>,
        TransactionSummaryDtoBuilder {
  _$$TransactionSummaryDto? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(covariant String? date) => _$this._date = date;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(covariant String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(covariant String? currency) => _$this._currency = currency;

  String? _narration;
  String? get narration => _$this._narration;
  set narration(covariant String? narration) => _$this._narration = narration;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  String? _payee;
  String? get payee => _$this._payee;
  set payee(covariant String? payee) => _$this._payee = payee;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(covariant String? accountName) =>
      _$this._accountName = accountName;

  TransactionSummaryDtoSourceTypeEnum? _sourceType;
  TransactionSummaryDtoSourceTypeEnum? get sourceType => _$this._sourceType;
  set sourceType(covariant TransactionSummaryDtoSourceTypeEnum? sourceType) =>
      _$this._sourceType = sourceType;

  String? _sourcePlatform;
  String? get sourcePlatform => _$this._sourcePlatform;
  set sourcePlatform(covariant String? sourcePlatform) =>
      _$this._sourcePlatform = sourcePlatform;

  $TransactionSummaryDtoBuilder() {
    $TransactionSummaryDto._defaults(this);
  }

  $TransactionSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _amount = $v.amount;
      _currency = $v.currency;
      _narration = $v.narration;
      _id = $v.id;
      _payee = $v.payee;
      _accountName = $v.accountName;
      _sourceType = $v.sourceType;
      _sourcePlatform = $v.sourcePlatform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TransactionSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$TransactionSummaryDto;
  }

  @override
  void update(void Function($TransactionSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TransactionSummaryDto build() => _build();

  _$$TransactionSummaryDto _build() {
    final _$result = _$v ??
        new _$$TransactionSummaryDto._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'$TransactionSummaryDto', 'date'),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'$TransactionSummaryDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'$TransactionSummaryDto', 'currency'),
            narration: BuiltValueNullFieldError.checkNotNull(
                narration, r'$TransactionSummaryDto', 'narration'),
            id: id,
            payee: payee,
            accountName: accountName,
            sourceType: sourceType,
            sourcePlatform: sourcePlatform);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
