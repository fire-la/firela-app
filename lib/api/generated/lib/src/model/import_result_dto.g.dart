// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportResultDto extends ImportResultDto {
  @override
  final num imported;
  @override
  final num failed;
  @override
  final num skipped;
  @override
  final num pendingReview;
  @override
  final BuiltList<ImportErrorDto> errors;
  @override
  final BuiltList<ReviewItemPreviewDto>? reviewItems;
  @override
  final JsonObject? transactions;

  factory _$ImportResultDto([void Function(ImportResultDtoBuilder)? updates]) =>
      (new ImportResultDtoBuilder()..update(updates))._build();

  _$ImportResultDto._(
      {required this.imported,
      required this.failed,
      required this.skipped,
      required this.pendingReview,
      required this.errors,
      this.reviewItems,
      this.transactions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imported, r'ImportResultDto', 'imported');
    BuiltValueNullFieldError.checkNotNull(failed, r'ImportResultDto', 'failed');
    BuiltValueNullFieldError.checkNotNull(
        skipped, r'ImportResultDto', 'skipped');
    BuiltValueNullFieldError.checkNotNull(
        pendingReview, r'ImportResultDto', 'pendingReview');
    BuiltValueNullFieldError.checkNotNull(errors, r'ImportResultDto', 'errors');
  }

  @override
  ImportResultDto rebuild(void Function(ImportResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportResultDtoBuilder toBuilder() =>
      new ImportResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportResultDto &&
        imported == other.imported &&
        failed == other.failed &&
        skipped == other.skipped &&
        pendingReview == other.pendingReview &&
        errors == other.errors &&
        reviewItems == other.reviewItems &&
        transactions == other.transactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imported.hashCode);
    _$hash = $jc(_$hash, failed.hashCode);
    _$hash = $jc(_$hash, skipped.hashCode);
    _$hash = $jc(_$hash, pendingReview.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, reviewItems.hashCode);
    _$hash = $jc(_$hash, transactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportResultDto')
          ..add('imported', imported)
          ..add('failed', failed)
          ..add('skipped', skipped)
          ..add('pendingReview', pendingReview)
          ..add('errors', errors)
          ..add('reviewItems', reviewItems)
          ..add('transactions', transactions))
        .toString();
  }
}

class ImportResultDtoBuilder
    implements Builder<ImportResultDto, ImportResultDtoBuilder> {
  _$ImportResultDto? _$v;

  num? _imported;
  num? get imported => _$this._imported;
  set imported(num? imported) => _$this._imported = imported;

  num? _failed;
  num? get failed => _$this._failed;
  set failed(num? failed) => _$this._failed = failed;

  num? _skipped;
  num? get skipped => _$this._skipped;
  set skipped(num? skipped) => _$this._skipped = skipped;

  num? _pendingReview;
  num? get pendingReview => _$this._pendingReview;
  set pendingReview(num? pendingReview) =>
      _$this._pendingReview = pendingReview;

  ListBuilder<ImportErrorDto>? _errors;
  ListBuilder<ImportErrorDto> get errors =>
      _$this._errors ??= new ListBuilder<ImportErrorDto>();
  set errors(ListBuilder<ImportErrorDto>? errors) => _$this._errors = errors;

  ListBuilder<ReviewItemPreviewDto>? _reviewItems;
  ListBuilder<ReviewItemPreviewDto> get reviewItems =>
      _$this._reviewItems ??= new ListBuilder<ReviewItemPreviewDto>();
  set reviewItems(ListBuilder<ReviewItemPreviewDto>? reviewItems) =>
      _$this._reviewItems = reviewItems;

  JsonObject? _transactions;
  JsonObject? get transactions => _$this._transactions;
  set transactions(JsonObject? transactions) =>
      _$this._transactions = transactions;

  ImportResultDtoBuilder() {
    ImportResultDto._defaults(this);
  }

  ImportResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imported = $v.imported;
      _failed = $v.failed;
      _skipped = $v.skipped;
      _pendingReview = $v.pendingReview;
      _errors = $v.errors.toBuilder();
      _reviewItems = $v.reviewItems?.toBuilder();
      _transactions = $v.transactions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportResultDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportResultDto;
  }

  @override
  void update(void Function(ImportResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportResultDto build() => _build();

  _$ImportResultDto _build() {
    _$ImportResultDto _$result;
    try {
      _$result = _$v ??
          new _$ImportResultDto._(
              imported: BuiltValueNullFieldError.checkNotNull(
                  imported, r'ImportResultDto', 'imported'),
              failed: BuiltValueNullFieldError.checkNotNull(
                  failed, r'ImportResultDto', 'failed'),
              skipped: BuiltValueNullFieldError.checkNotNull(
                  skipped, r'ImportResultDto', 'skipped'),
              pendingReview: BuiltValueNullFieldError.checkNotNull(
                  pendingReview, r'ImportResultDto', 'pendingReview'),
              errors: errors.build(),
              reviewItems: _reviewItems?.build(),
              transactions: transactions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
        _$failedField = 'reviewItems';
        _reviewItems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
