import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/core/components/navigation/top_bar.dart';

void main() {
  group('TopBar rendering', () {
    testWidgets('renders the title', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: TopBar(title: 'Settings'))),
      );
      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('renders actions when provided', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: TopBar(
            title: 'Settings',
            actions: [Icon(Icons.more_vert)],
          ),
        ),
      ));
      expect(find.byIcon(Icons.more_vert), findsOneWidget);
    });

    testWidgets('renders no action when omitted', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: TopBar(title: 'Settings'))),
      );
      expect(find.byIcon(Icons.more_vert), findsNothing);
    });
  });

  group('TopBar back navigation', () {
    testWidgets('calls onBack when provided', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: TopBar(title: 'Detail', onBack: () => tapped = true),
        ),
      ));

      await tester.tap(find.byIcon(Icons.arrow_back));
      expect(tapped, isTrue);
    });

    testWidgets('pops the route via context.pop() when onBack is null',
        (tester) async {
      // Arrange — a two-route router so we can verify a real pop.
      final router = GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (_, __) => const Scaffold(body: Text('home')),
          ),
          GoRoute(
            path: '/detail',
            builder: (_, __) => const Scaffold(body: TopBar(title: 'Detail')),
          ),
        ],
      );
      addTearDown(router.dispose);

      await tester.pumpWidget(MaterialApp.router(routerConfig: router));
      await tester.pumpAndSettle();

      // Navigate to the detail route that owns the TopBar.
      router.push('/detail');
      await tester.pumpAndSettle();
      expect(find.text('Detail'), findsOneWidget);

      // Act — tap back; onBack is null, so TopBar uses context.pop().
      await tester.tap(find.byIcon(Icons.arrow_back));
      await tester.pumpAndSettle();

      // Assert — the detail route is gone (popped back to home).
      expect(find.text('Detail'), findsNothing);
    });
  });
}
