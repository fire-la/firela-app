# Testing Patterns

**Analysis Date:** 2026-02-26

## Test Framework

**Runner:**
- Flutter test framework (flutter_test)
- Config: Built into Flutter SDK

**Assertion Library:**
- Built-in expect() function
- Matchers: findsOneWidget, findsNothing, isTrue, equals, etc.

**Run Commands:**
```bash
flutter test                          # Run all tests
flutter test test/widget_test.dart    # Single file
flutter test --coverage               # With coverage
```

## Test File Organization

**Location:**
- test/ directory at project root
- Currently only one test file exists

**Naming:**
- *_test.dart suffix for test files
- Pattern: {module}_test.dart

**Current State:**
```
test/
└── widget_test.dart    # Single basic widget test
```

## Test Structure

**Suite Organization:**
```dart
void main() {
  testWidgets('App initializes correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const FirelaApp());

    // Verify that app starts without errors
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
```

**Patterns:**
- testWidgets() for widget tests
- test() for unit tests
- group() for organizing related tests

## Mocking

**Framework:**
- Not configured - no mock library installed

**Missing:**
- mockito or mocktail packages
- No mock setup patterns defined

## Fixtures and Factories

**Test Data:**
- Not configured
- No fixture files or factory functions defined

## Coverage

**Requirements:**
- No coverage target defined
- Coverage not enforced in CI

**Configuration:**
- Can run: `flutter test --coverage`
- No coverage thresholds configured

**Current State:**
- Minimal - only 1 test exists
- Critical services untested (AuthManager, ApiClient, IgnApiService)

## Test Types

**Unit Tests:**
- Not implemented
- Critical services need tests:
  - AuthManager (authentication logic)
  - ApiClient (network layer)
  - IgnApiService (API methods)
  - Validators utility
  - Formatters utility

**Widget Tests:**
- Basic widget test exists (widget_test.dart)
- Need tests for:
  - Page widgets
  - Shared widgets
  - Form interactions

**Integration Tests:**
- Not configured
- No integration_test package
- Critical flows need testing:
  - Expense entry flow
  - NLP processing
  - Authentication flow

## Common Patterns

**Widget Testing:**
```dart
testWidgets('Widget test description', (WidgetTester tester) async {
  await tester.pumpWidget(const MyWidget());

  expect(find.text('Expected Text'), findsOneWidget);
  await tester.tap(find.byType(ElevatedButton));
  await tester.pump();
});
```

**Async Testing:**
```dart
test('Async test', () async {
  final result = await asyncFunction();
  expect(result, equals(expectedValue));
});
```

## Recommendations

**Priority Additions:**

1. **Unit Tests for Services:**
   - AuthManager token handling
   - ApiClient HTTP methods
   - IgnApiService API calls
   - Validators utility functions

2. **Widget Tests:**
   - Main navigation flow
   - Settings page interactions
   - Form validation UI

3. **Integration Tests:**
   - Add integration_test package
   - Test expense entry E2E
   - Test authentication flow

4. **Test Infrastructure:**
   - Add mocktail package
   - Create test fixtures/factories
   - Configure coverage thresholds

---

*Testing analysis: 2026-02-26*
*Update when test patterns change*
