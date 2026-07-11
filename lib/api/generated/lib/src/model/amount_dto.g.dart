// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AmountDto extends AmountDto {
  @override
  final String number;
  @override
  final String currency;

  factory _$AmountDto([void Function(AmountDtoBuilder)? updates]) =>
      (new AmountDtoBuilder()..update(updates))._build();

  _$AmountDto._({required this.number, required this.currency}) : super._() {
    BuiltValueNullFieldError.checkNotNull(number, r'AmountDto', 'number');
    BuiltValueNullFieldError.checkNotNull(currency, r'AmountDto', 'currency');
  }

  @override
  AmountDto rebuild(void Function(AmountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmountDtoBuilder toBuilder() => new AmountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmountDto &&
        number == other.number &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmountDto')
          ..add('number', number)
          ..add('currency', currency))
        .toString();
  }
}

class AmountDtoBuilder implements Builder<AmountDto, AmountDtoBuilder> {
  _$AmountDto? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  AmountDtoBuilder() {
    AmountDto._defaults(this);
  }

  AmountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmountDto;
  }

  @override
  void update(void Function(AmountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmountDto build() => _build();

  _$AmountDto _build() {
    final _$result = _$v ??
        new _$AmountDto._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'AmountDto', 'number'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'AmountDto', 'currency'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
