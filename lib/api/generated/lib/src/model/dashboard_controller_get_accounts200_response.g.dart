// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller_get_accounts200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardControllerGetAccounts200Response
    extends DashboardControllerGetAccounts200Response {
  @override
  final OneOf oneOf;

  factory _$DashboardControllerGetAccounts200Response(
          [void Function(DashboardControllerGetAccounts200ResponseBuilder)?
              updates]) =>
      (new DashboardControllerGetAccounts200ResponseBuilder()..update(updates))
          ._build();

  _$DashboardControllerGetAccounts200Response._({required this.oneOf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'DashboardControllerGetAccounts200Response', 'oneOf');
  }

  @override
  DashboardControllerGetAccounts200Response rebuild(
          void Function(DashboardControllerGetAccounts200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardControllerGetAccounts200ResponseBuilder toBuilder() =>
      new DashboardControllerGetAccounts200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardControllerGetAccounts200Response &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DashboardControllerGetAccounts200Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class DashboardControllerGetAccounts200ResponseBuilder
    implements
        Builder<DashboardControllerGetAccounts200Response,
            DashboardControllerGetAccounts200ResponseBuilder> {
  _$DashboardControllerGetAccounts200Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  DashboardControllerGetAccounts200ResponseBuilder() {
    DashboardControllerGetAccounts200Response._defaults(this);
  }

  DashboardControllerGetAccounts200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardControllerGetAccounts200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DashboardControllerGetAccounts200Response;
  }

  @override
  void update(
      void Function(DashboardControllerGetAccounts200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardControllerGetAccounts200Response build() => _build();

  _$DashboardControllerGetAccounts200Response _build() {
    final _$result = _$v ??
        new _$DashboardControllerGetAccounts200Response._(
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'DashboardControllerGetAccounts200Response', 'oneOf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
