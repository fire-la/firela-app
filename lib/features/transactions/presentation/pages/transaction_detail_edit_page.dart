import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../widgets/transaction_detail_edit.dart';

/// TransactionDetailEditPage (.pen h0vuGt): TopBar + TransactionDetailEdit (G07oe).
/// Thin shell — all editor structure lives in the TransactionDetailEdit component.
class TransactionDetailEditPage extends StatelessWidget {
  const TransactionDetailEditPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          TopBar(title: l10n.txEditTitle),
          Expanded(child: TransactionDetailEdit(id: id)),
        ],
      ),
    );
  }
}
