// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_create_rules_response_dto_errors_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkCreateRulesResponseDtoErrorsInner
    extends BulkCreateRulesResponseDtoErrorsInner {
  @override
  final num? index;
  @override
  final String? message;

  factory _$BulkCreateRulesResponseDtoErrorsInner(
          [void Function(BulkCreateRulesResponseDtoErrorsInnerBuilder)?
              updates]) =>
      (new BulkCreateRulesResponseDtoErrorsInnerBuilder()..update(updates))
          ._build();

  _$BulkCreateRulesResponseDtoErrorsInner._({this.index, this.message})
      : super._();

  @override
  BulkCreateRulesResponseDtoErrorsInner rebuild(
          void Function(BulkCreateRulesResponseDtoErrorsInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkCreateRulesResponseDtoErrorsInnerBuilder toBuilder() =>
      new BulkCreateRulesResponseDtoErrorsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkCreateRulesResponseDtoErrorsInner &&
        index == other.index &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BulkCreateRulesResponseDtoErrorsInner')
          ..add('index', index)
          ..add('message', message))
        .toString();
  }
}

class BulkCreateRulesResponseDtoErrorsInnerBuilder
    implements
        Builder<BulkCreateRulesResponseDtoErrorsInner,
            BulkCreateRulesResponseDtoErrorsInnerBuilder> {
  _$BulkCreateRulesResponseDtoErrorsInner? _$v;

  num? _index;
  num? get index => _$this._index;
  set index(num? index) => _$this._index = index;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  BulkCreateRulesResponseDtoErrorsInnerBuilder() {
    BulkCreateRulesResponseDtoErrorsInner._defaults(this);
  }

  BulkCreateRulesResponseDtoErrorsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkCreateRulesResponseDtoErrorsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BulkCreateRulesResponseDtoErrorsInner;
  }

  @override
  void update(
      void Function(BulkCreateRulesResponseDtoErrorsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkCreateRulesResponseDtoErrorsInner build() => _build();

  _$BulkCreateRulesResponseDtoErrorsInner _build() {
    final _$result = _$v ??
        new _$BulkCreateRulesResponseDtoErrorsInner._(
            index: index, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
