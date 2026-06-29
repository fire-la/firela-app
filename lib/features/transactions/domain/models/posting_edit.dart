import 'package:firela_api/firela_api.dart' as gen;

/// Editable working copy of a posting, decoupled from the immutable
/// `PostingDetailDto`. The edit page mutates a `List<PostingEdit>`; on save,
/// structural changes rebuild a `CorrectTransactionDto` from it.
class PostingEdit {
  const PostingEdit({
    required this.account,
    this.units,
    this.currency,
  });

  /// Fully-qualified beancount account path (e.g. `Expenses:Food:Coffee`).
  final String account;

  /// Signed decimal string; null only for an interpolated/auto posting (the
  /// backend fills it). Persisted transactions always have units.
  final String? units;

  /// Commodity code (e.g. `CNY`). Required when units is set.
  final String? currency;

  factory PostingEdit.from(gen.PostingDetailDto p) => PostingEdit(
        account: p.account,
        units: p.units,
        currency: p.currency,
      );

  /// Build the create-DTO for the correct endpoint.
  gen.CreatePostingDto toCreatePostingDto() => gen.CreatePostingDto((b) => b
        ..account = account
        ..units = units
        ..currency = currency);

  /// Returns a copy with the given fields replaced. NOTE: this cannot reset
  /// `units`/`currency` back to null (null ⇒ "leave unchanged"). Clearing a
  /// field requires constructing a new [PostingEdit] directly.
  PostingEdit copyWith({String? account, String? units, String? currency}) =>
      PostingEdit(
        account: account ?? this.account,
        units: units ?? this.units,
        currency: currency ?? this.currency,
      );
}
