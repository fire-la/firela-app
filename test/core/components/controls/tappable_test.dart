import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/components.dart';

void main() {
  testWidgets('icon button: single labeled node, exposes tap action',
      (tester) async {
    var tapped = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Tappable(
          onTap: () => tapped = true,
          semanticLabel: 'Delete transaction',
          semanticHint: 'Double tap to delete',
          child: const Icon(Icons.delete),
        ),
      ),
    ));

    await tester.tap(find.byType(Tappable));
    expect(tapped, isTrue);

    final data = tester.getSemantics(find.byType(Tappable)).getSemanticsData();
    expect(data.label, 'Delete transaction');
    expect(data.hint, 'Double tap to delete');
    // tap action proves VoiceOver/TalkBack double-tap can activate the button.
    expect(data.hasAction(SemanticsAction.tap), isTrue);
  });

  testWidgets(
      'content card: excludeSemantics=false keeps child text reachable (#1)',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Tappable(
          onTap: () {},
          semanticLabel: 'Open expense detail',
          excludeSemantics: false,
          child: const Text('Groceries'),
        ),
      ),
    ));
    // With excludeSemantics=false the child Text is NOT masked — its own
    // semantics node survives so VoiceOver reads it alongside the label.
    final textNode = tester.getSemantics(find.text('Groceries'));
    expect(textNode.label, 'Groceries');
  });

  testWidgets('empty semanticLabel fails assertion (#4)', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Tappable(
          onTap: () {},
          semanticLabel: '',
          child: const SizedBox(),
        ),
      ),
    ));
    expect(tester.takeException(), isA<AssertionError>());
  });
}
