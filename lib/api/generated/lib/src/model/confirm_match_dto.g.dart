// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_match_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmMatchDto extends ConfirmMatchDto {
  @override
  final String transactionId;

  factory _$ConfirmMatchDto([void Function(ConfirmMatchDtoBuilder)? updates]) =>
      (new ConfirmMatchDtoBuilder()..update(updates))._build();

  _$ConfirmMatchDto._({required this.transactionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'ConfirmMatchDto', 'transactionId');
  }

  @override
  ConfirmMatchDto rebuild(void Function(ConfirmMatchDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmMatchDtoBuilder toBuilder() =>
      new ConfirmMatchDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmMatchDto && transactionId == other.transactionId;
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
    return (newBuiltValueToStringHelper(r'ConfirmMatchDto')
          ..add('transactionId', transactionId))
        .toString();
  }
}

class ConfirmMatchDtoBuilder
    implements Builder<ConfirmMatchDto, ConfirmMatchDtoBuilder> {
  _$ConfirmMatchDto? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  ConfirmMatchDtoBuilder() {
    ConfirmMatchDto._defaults(this);
  }

  ConfirmMatchDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmMatchDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmMatchDto;
  }

  @override
  void update(void Function(ConfirmMatchDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmMatchDto build() => _build();

  _$ConfirmMatchDto _build() {
    final _$result = _$v ??
        new _$ConfirmMatchDto._(
            transactionId: BuiltValueNullFieldError.checkNotNull(
                transactionId, r'ConfirmMatchDto', 'transactionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
