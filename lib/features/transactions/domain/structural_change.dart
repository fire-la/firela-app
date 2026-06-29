import 'package:firela_api/firela_api.dart' as gen;

import 'models/posting_edit.dart';

/// Per-currency balance delta for a set of postings.
class PostingBalance {
  const PostingBalance(this.currency, this.delta);

  final String currency;
  final double delta;

  bool get isZero => delta.abs() < 1e-9;
}

/// Sum of posting units per currency. Skips postings without units
/// (interpolated/auto). A transaction balances when every delta is ~0.
List<PostingBalance> postingBalances(List<PostingEdit> postings) {
  final byCurrency = <String, double>{};
  for (final p in postings) {
    final u = p.units;
    if (u == null) continue;
    final cur = p.currency ?? 'UNKNOWN';
    byCurrency[cur] = (byCurrency[cur] ?? 0) + (double.tryParse(u) ?? 0);
  }
  return byCurrency.entries
      .map((e) => PostingBalance(e.key, e.value))
      .toList(growable: false);
}

/// True when every currency delta is ~0 (or there are no postings).
bool isBalanced(List<PostingEdit> postings) {
  final balances = postingBalances(postings);
  return balances.isEmpty || balances.every((b) => b.isZero);
}

/// True when the edited fields require a structural correct (supersede) rather
/// than a metadata PATCH. Only `date` and the `postings` are structural —
/// narration/payee/tags are metadata and always PATCH.
///
/// Units are compared numerically so a reformatted value (e.g. `-360.0` vs
/// `-360.00`) does not falsely trigger a correct.
bool isStructuralChange({
  required gen.TransactionDetailDto original,
  required String date,
  required List<PostingEdit> postings,
}) {
  if (date != original.date) return true;
  final orig = original.postings;
  if (postings.length != orig.length) return true;
  for (var i = 0; i < postings.length; i++) {
    final edited = postings[i];
    final o = orig[i];
    if (edited.account != o.account) return true;
    if (!_unitsEqual(edited.units, o.units)) return true;
    if (edited.currency != o.currency) return true;
  }
  return false;
}

bool _unitsEqual(String? a, String? b) {
  if (a == null && b == null) return true;
  if (a == null || b == null) return false;
  final da = double.tryParse(a);
  final db = double.tryParse(b);
  if (da == null || db == null) return a == b;
  return (da - db).abs() < 1e-9;
}
