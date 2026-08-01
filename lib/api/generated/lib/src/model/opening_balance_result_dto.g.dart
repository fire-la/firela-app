// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_balance_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OpeningBalanceResultDto extends OpeningBalanceResultDto {
  @override
  final String transactionId;

  factory _$OpeningBalanceResultDto(
          [void Function(OpeningBalanceResultDtoBuilder)? updates]) =>
      (new OpeningBalanceResultDtoBuilder()..update(updates))._build();

  _$OpeningBalanceResultDto._({required this.transactionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'OpeningBalanceResultDto', 'transactionId');
  }

  @override
  OpeningBalanceResultDto rebuild(
          void Function(OpeningBalanceResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpeningBalanceResultDtoBuilder toBuilder() =>
      new OpeningBalanceResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpeningBalanceResultDto &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OpeningBalanceResultDto')
          ..add('transactionId', transactionId))
        .toString();
  }
}

class OpeningBalanceResultDtoBuilder
    implements
        Builder<OpeningBalanceResultDto, OpeningBalanceResultDtoBuilder> {
  _$OpeningBalanceResultDto? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  OpeningBalanceResultDtoBuilder() {
    OpeningBalanceResultDto._defaults(this);
  }

  OpeningBalanceResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpeningBalanceResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpeningBalanceResultDto;
  }

  @override
  void update(void Function(OpeningBalanceResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpeningBalanceResultDto build() => _build();

  _$OpeningBalanceResultDto _build() {
    final _$result = _$v ??
        new _$OpeningBalanceResultDto._(
            transactionId: BuiltValueNullFieldError.checkNotNull(
                transactionId, r'OpeningBalanceResultDto', 'transactionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
