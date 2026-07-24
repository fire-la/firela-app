// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pad_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PadResultDto extends PadResultDto {
  @override
  final String transactionId;

  factory _$PadResultDto([void Function(PadResultDtoBuilder)? updates]) =>
      (new PadResultDtoBuilder()..update(updates))._build();

  _$PadResultDto._({required this.transactionId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactionId, r'PadResultDto', 'transactionId');
  }

  @override
  PadResultDto rebuild(void Function(PadResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PadResultDtoBuilder toBuilder() => new PadResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PadResultDto && transactionId == other.transactionId;
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
    return (newBuiltValueToStringHelper(r'PadResultDto')
          ..add('transactionId', transactionId))
        .toString();
  }
}

class PadResultDtoBuilder
    implements Builder<PadResultDto, PadResultDtoBuilder> {
  _$PadResultDto? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  PadResultDtoBuilder() {
    PadResultDto._defaults(this);
  }

  PadResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PadResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PadResultDto;
  }

  @override
  void update(void Function(PadResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PadResultDto build() => _build();

  _$PadResultDto _build() {
    final _$result = _$v ??
        new _$PadResultDto._(
            transactionId: BuiltValueNullFieldError.checkNotNull(
                transactionId, r'PadResultDto', 'transactionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
