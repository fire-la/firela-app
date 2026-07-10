// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monetary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class MonetaryDtoBuilder {
  void replace(MonetaryDto other);
  void update(void Function(MonetaryDtoBuilder) updates);
  String? get amount;
  set amount(String? amount);

  String? get currency;
  set currency(String? currency);

  JsonObject? get baseCcyEquivalent;
  set baseCcyEquivalent(JsonObject? baseCcyEquivalent);
}

class _$$MonetaryDto extends $MonetaryDto {
  @override
  final String amount;
  @override
  final String currency;
  @override
  final JsonObject? baseCcyEquivalent;

  factory _$$MonetaryDto([void Function($MonetaryDtoBuilder)? updates]) =>
      (new $MonetaryDtoBuilder()..update(updates))._build();

  _$$MonetaryDto._(
      {required this.amount, required this.currency, this.baseCcyEquivalent})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(amount, r'$MonetaryDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        currency, r'$MonetaryDto', 'currency');
  }

  @override
  $MonetaryDto rebuild(void Function($MonetaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MonetaryDtoBuilder toBuilder() => new $MonetaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MonetaryDto &&
        amount == other.amount &&
        currency == other.currency &&
        baseCcyEquivalent == other.baseCcyEquivalent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, baseCcyEquivalent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MonetaryDto')
          ..add('amount', amount)
          ..add('currency', currency)
          ..add('baseCcyEquivalent', baseCcyEquivalent))
        .toString();
  }
}

class $MonetaryDtoBuilder
    implements Builder<$MonetaryDto, $MonetaryDtoBuilder>, MonetaryDtoBuilder {
  _$$MonetaryDto? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(covariant String? amount) => _$this._amount = amount;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(covariant String? currency) => _$this._currency = currency;

  JsonObject? _baseCcyEquivalent;
  JsonObject? get baseCcyEquivalent => _$this._baseCcyEquivalent;
  set baseCcyEquivalent(covariant JsonObject? baseCcyEquivalent) =>
      _$this._baseCcyEquivalent = baseCcyEquivalent;

  $MonetaryDtoBuilder() {
    $MonetaryDto._defaults(this);
  }

  $MonetaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _currency = $v.currency;
      _baseCcyEquivalent = $v.baseCcyEquivalent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MonetaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$MonetaryDto;
  }

  @override
  void update(void Function($MonetaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MonetaryDto build() => _build();

  _$$MonetaryDto _build() {
    final _$result = _$v ??
        new _$$MonetaryDto._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'$MonetaryDto', 'amount'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'$MonetaryDto', 'currency'),
            baseCcyEquivalent: baseCcyEquivalent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
