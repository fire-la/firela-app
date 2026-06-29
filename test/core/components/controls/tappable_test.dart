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

  testWidgets(
      'excludeSemantics=false keeps a nested actionable as its own node (#ocr3)',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Tappable(
          onTap: () {},
          semanticLabel: 'Row',
          excludeSemantics: false,
          child: Column(
            children: [
              const Text('content'),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Skip'),
              ),
            ],
          ),
        ),
      ),
    ));

    // The outer Tappable is its own button node.
    final rowData =
        tester.getSemantics(find.byType(Tappable)).getSemanticsData();
    expect(rowData.label, 'Row');
    expect(rowData.hasAction(SemanticsAction.tap), isTrue);

    // The nested ElevatedButton must NOT fold into the row's semantics node —
    // it keeps its own label + tap action so VoiceOver/TalkBack can reach and
    // activate the inline action independently (review_summary_row inline btn).
    final btnData =
        tester.getSemantics(find.byType(ElevatedButton)).getSemanticsData();
    expect(btnData.label, 'Skip');
    expect(btnData.hasAction(SemanticsAction.tap), isTrue);
  });

  testWidgets(
      'activateOnPress fires on pointer-down and keeps semantics (#press)',
      (tester) async {
    var pressed = false;
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Tappable(
          onTap: () => pressed = true,
          semanticLabel: 'Add tag',
          activateOnPress: true,
          child: const Text('Java'),
        ),
      ),
    ));

    // Pointer-down alone (no pointer-up) fires the callback — the beat-blur
    // behavior tag suggestion rows in transaction_detail_edit depend on.
    final gesture = await tester.startGesture(tester.getCenter(find.byType(Tappable)));
    expect(pressed, isTrue);
    await gesture.up();

    // Screen readers still get label + tap action via Semantics.onTap.
    final data = tester.getSemantics(find.byType(Tappable)).getSemanticsData();
    expect(data.label, 'Add tag');
    expect(data.hasAction(SemanticsAction.tap), isTrue);
  });

  testWidgets('selected/checked/expanded flags convey state (#state, IGN-300)',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Tappable(
              key: const ValueKey('radio'),
              onTap: () {},
              semanticLabel: 'Option A',
              selected: true,
              child: const SizedBox(),
            ),
            Tappable(
              key: const ValueKey('check'),
              onTap: () {},
              semanticLabel: 'I agree',
              checked: true,
              child: const SizedBox(),
            ),
            Tappable(
              key: const ValueKey('expand'),
              onTap: () {},
              semanticLabel: 'FAQ',
              expanded: true,
              child: const SizedBox(),
            ),
          ],
        ),
      ),
    ));

    final radio =
        tester.getSemantics(find.byKey(const ValueKey('radio'))).getSemanticsData();
    expect(radio.hasFlag(SemanticsFlag.isSelected), isTrue);

    final check = tester
        .getSemantics(find.byKey(const ValueKey('check')))
        .getSemanticsData();
    expect(check.hasFlag(SemanticsFlag.isChecked), isTrue);

    final expand = tester
        .getSemantics(find.byKey(const ValueKey('expand')))
        .getSemanticsData();
    expect(expand.hasFlag(SemanticsFlag.isExpanded), isTrue);
  });
}
