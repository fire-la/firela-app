// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_sync_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProviderSyncResponseDto extends ProviderSyncResponseDto {
  @override
  final num imported;
  @override
  final num skipped;
  @override
  final num pendingReview;
  @override
  final num failed;
  @override
  final BuiltList<String>? importedTransactionIds;
  @override
  final BuiltList<String>? reviewItemIds;

  factory _$ProviderSyncResponseDto(
          [void Function(ProviderSyncResponseDtoBuilder)? updates]) =>
      (new ProviderSyncResponseDtoBuilder()..update(updates))._build();

  _$ProviderSyncResponseDto._(
      {required this.imported,
      required this.skipped,
      required this.pendingReview,
      required this.failed,
      this.importedTransactionIds,
      this.reviewItemIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imported, r'ProviderSyncResponseDto', 'imported');
    BuiltValueNullFieldError.checkNotNull(
        skipped, r'ProviderSyncResponseDto', 'skipped');
    BuiltValueNullFieldError.checkNotNull(
        pendingReview, r'ProviderSyncResponseDto', 'pendingReview');
    BuiltValueNullFieldError.checkNotNull(
        failed, r'ProviderSyncResponseDto', 'failed');
  }

  @override
  ProviderSyncResponseDto rebuild(
          void Function(ProviderSyncResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderSyncResponseDtoBuilder toBuilder() =>
      new ProviderSyncResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProviderSyncResponseDto &&
        imported == other.imported &&
        skipped == other.skipped &&
        pendingReview == other.pendingReview &&
        failed == other.failed &&
        importedTransactionIds == other.importedTransactionIds &&
        reviewItemIds == other.reviewItemIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imported.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, pendingReview.hashCode);
    _$hash = $jc(_$hash, failed.hashCode);
    _$hash = $jc(_$hash, importedTransactionIds.hashCode);
    _$hash = $jc(_$hash, reviewItemIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProviderSyncResponseDto')
          ..add('imported', imported)
          ..add('skipped', skipped)
          ..add('pendingReview', pendingReview)
          ..add('failed', failed)
          ..add('importedTransactionIds', importedTransactionIds)
          ..add('reviewItemIds', reviewItemIds))
        .toString();
  }
}

class ProviderSyncResponseDtoBuilder
    implements
        Builder<ProviderSyncResponseDto, ProviderSyncResponseDtoBuilder> {
  _$ProviderSyncResponseDto? _$v;

  num? _imported;
  num? get imported => _$this._imported;
  set imported(num? imported) => _$this._imported = imported;

  num? _skipped;
  num? get skipped => _$this._skipped;
  set skipped(num? skipped) => _$this._skipped = skipped;

  num? _pendingReview;
  num? get pendingReview => _$this._pendingReview;
  set pendingReview(num? pendingReview) =>
      _$this._pendingReview = pendingReview;

  num? _failed;
  num? get failed => _$this._failed;
  set failed(num? failed) => _$this._failed = failed;

  ListBuilder<String>? _importedTransactionIds;
  ListBuilder<String> get importedTransactionIds =>
      _$this._importedTransactionIds ??= new ListBuilder<String>();
  set importedTransactionIds(ListBuilder<String>? importedTransactionIds) =>
      _$this._importedTransactionIds = importedTransactionIds;

  ListBuilder<String>? _reviewItemIds;
  ListBuilder<String> get reviewItemIds =>
      _$this._reviewItemIds ??= new ListBuilder<String>();
  set reviewItemIds(ListBuilder<String>? reviewItemIds) =>
      _$this._reviewItemIds = reviewItemIds;

  ProviderSyncResponseDtoBuilder() {
    ProviderSyncResponseDto._defaults(this);
  }

  ProviderSyncResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imported = $v.imported;
      _skipped = $v.skipped;
      _pendingReview = $v.pendingReview;
      _failed = $v.failed;
      _importedTransactionIds = $v.importedTransactionIds?.toBuilder();
      _reviewItemIds = $v.reviewItemIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProviderSyncResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProviderSyncResponseDto;
  }

  @override
  void update(void Function(ProviderSyncResponseDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProviderSyncResponseDto build() => _build();

  _$ProviderSyncResponseDto _build() {
    _$ProviderSyncResponseDto _$result;
    try {
      _$result = _$v ??
          new _$ProviderSyncResponseDto._(
              imported: BuiltValueNullFieldError.checkNotNull(
                  imported, r'ProviderSyncResponseDto', 'imported'),
              skipped: BuiltValueNullFieldError.checkNotNull(
                  skipped, r'ProviderSyncResponseDto', 'skipped'),
              pendingReview: BuiltValueNullFieldError.checkNotNull(
                  pendingReview, r'ProviderSyncResponseDto', 'pendingReview'),
              failed: BuiltValueNullFieldError.checkNotNull(
                  failed, r'ProviderSyncResponseDto', 'failed'),
              importedTransactionIds: _importedTransactionIds?.build(),
              reviewItemIds: _reviewItemIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importedTransactionIds';
        _importedTransactionIds?.build();
        _$failedField = 'reviewItemIds';
        _reviewItemIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProviderSyncResponseDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
