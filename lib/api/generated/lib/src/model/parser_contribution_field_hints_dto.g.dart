// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parser_contribution_field_hints_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParserContributionFieldHintsDto
    extends ParserContributionFieldHintsDto {
  @override
  final FieldHintDto date;
  @override
  final FieldHintDto amount;
  @override
  final FieldHintDto? description;
  @override
  final FieldHintDto? balance;
  @override
  final FieldHintDto? payee;
  @override
  final FieldHintDto? reference;
  @override
  final FieldHintDto? category;

  factory _$ParserContributionFieldHintsDto(
          [void Function(ParserContributionFieldHintsDtoBuilder)? updates]) =>
      (new ParserContributionFieldHintsDtoBuilder()..update(updates))._build();

  _$ParserContributionFieldHintsDto._(
      {required this.date,
      required this.amount,
      this.description,
      this.balance,
      this.payee,
      this.reference,
      this.category})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        date, r'ParserContributionFieldHintsDto', 'date');
    BuiltValueNullFieldError.checkNotNull(
        amount, r'ParserContributionFieldHintsDto', 'amount');
  }

  @override
  ParserContributionFieldHintsDto rebuild(
          void Function(ParserContributionFieldHintsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParserContributionFieldHintsDtoBuilder toBuilder() =>
      new ParserContributionFieldHintsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParserContributionFieldHintsDto &&
        date == other.date &&
        amount == other.amount &&
        description == other.description &&
        balance == other.balance &&
        payee == other.payee &&
        reference == other.reference &&
        category == other.category;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, payee.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParserContributionFieldHintsDto')
          ..add('date', date)
          ..add('amount', amount)
          ..add('description', description)
          ..add('balance', balance)
          ..add('payee', payee)
          ..add('reference', reference)
          ..add('category', category))
        .toString();
  }
}

class ParserContributionFieldHintsDtoBuilder
    implements
        Builder<ParserContributionFieldHintsDto,
            ParserContributionFieldHintsDtoBuilder> {
  _$ParserContributionFieldHintsDto? _$v;

  FieldHintDtoBuilder? _date;
  FieldHintDtoBuilder get date => _$this._date ??= new FieldHintDtoBuilder();
  set date(FieldHintDtoBuilder? date) => _$this._date = date;

  FieldHintDtoBuilder? _amount;
  FieldHintDtoBuilder get amount =>
      _$this._amount ??= new FieldHintDtoBuilder();
  set amount(FieldHintDtoBuilder? amount) => _$this._amount = amount;

  FieldHintDtoBuilder? _description;
  FieldHintDtoBuilder get description =>
      _$this._description ??= new FieldHintDtoBuilder();
  set description(FieldHintDtoBuilder? description) =>
      _$this._description = description;

  FieldHintDtoBuilder? _balance;
  FieldHintDtoBuilder get balance =>
      _$this._balance ??= new FieldHintDtoBuilder();
  set balance(FieldHintDtoBuilder? balance) => _$this._balance = balance;

  FieldHintDtoBuilder? _payee;
  FieldHintDtoBuilder get payee => _$this._payee ??= new FieldHintDtoBuilder();
  set payee(FieldHintDtoBuilder? payee) => _$this._payee = payee;

  FieldHintDtoBuilder? _reference;
  FieldHintDtoBuilder get reference =>
      _$this._reference ??= new FieldHintDtoBuilder();
  set reference(FieldHintDtoBuilder? reference) =>
      _$this._reference = reference;

  FieldHintDtoBuilder? _category;
  FieldHintDtoBuilder get category =>
      _$this._category ??= new FieldHintDtoBuilder();
  set category(FieldHintDtoBuilder? category) => _$this._category = category;

  ParserContributionFieldHintsDtoBuilder() {
    ParserContributionFieldHintsDto._defaults(this);
  }

  ParserContributionFieldHintsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date.toBuilder();
      _amount = $v.amount.toBuilder();
      _description = $v.description?.toBuilder();
      _balance = $v.balance?.toBuilder();
      _payee = $v.payee?.toBuilder();
      _reference = $v.reference?.toBuilder();
      _category = $v.category?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParserContributionFieldHintsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParserContributionFieldHintsDto;
  }

  @override
  void update(void Function(ParserContributionFieldHintsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParserContributionFieldHintsDto build() => _build();

  _$ParserContributionFieldHintsDto _build() {
    _$ParserContributionFieldHintsDto _$result;
    try {
      _$result = _$v ??
          new _$ParserContributionFieldHintsDto._(
              date: date.build(),
              amount: amount.build(),
              description: _description?.build(),
              balance: _balance?.build(),
              payee: _payee?.build(),
              reference: _reference?.build(),
              category: _category?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'date';
        date.build();
        _$failedField = 'amount';
        amount.build();
        _$failedField = 'description';
        _description?.build();
        _$failedField = 'balance';
        _balance?.build();
        _$failedField = 'payee';
        _payee?.build();
        _$failedField = 'reference';
        _reference?.build();
        _$failedField = 'category';
        _category?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParserContributionFieldHintsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
