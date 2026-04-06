// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountListResponse extends AccountListResponse {
  @override
  final BuiltList<AccountResponse> items;
  @override
  final int total;

  factory _$AccountListResponse(
          [void Function(AccountListResponseBuilder)? updates]) =>
      (new AccountListResponseBuilder()..update(updates))._build();

  _$AccountListResponse._({required this.items, required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        items, r'AccountListResponse', 'items');
    BuiltValueNullFieldError.checkNotNull(
        total, r'AccountListResponse', 'total');
  }

  @override
  AccountListResponse rebuild(
          void Function(AccountListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountListResponseBuilder toBuilder() =>
      new AccountListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountListResponse &&
        items == other.items &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountListResponse')
          ..add('items', items)
          ..add('total', total))
        .toString();
  }
}

class AccountListResponseBuilder
    implements Builder<AccountListResponse, AccountListResponseBuilder> {
  _$AccountListResponse? _$v;

  ListBuilder<AccountResponse>? _items;
  ListBuilder<AccountResponse> get items =>
      _$this._items ??= new ListBuilder<AccountResponse>();
  set items(ListBuilder<AccountResponse>? items) => _$this._items = items;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  AccountListResponseBuilder() {
    AccountListResponse._defaults(this);
  }

  AccountListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountListResponse;
  }

  @override
  void update(void Function(AccountListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountListResponse build() => _build();

  _$AccountListResponse _build() {
    _$AccountListResponse _$result;
    try {
      _$result = _$v ??
          new _$AccountListResponse._(
              items: items.build(),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'AccountListResponse', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
