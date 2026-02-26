# Testing Standards

**Purpose:** Define testing patterns for this Flutter project.

## Quick Reference

| Dimension | Standard |
|-----------|----------|
| **Framework** | flutter_test (SDK) |
| **Location** | `test/` directory at project root |
| **Naming** | `*_test.dart` suffix |
| **Structure** | Arrange-Act-Assert (AAA) pattern |
| **Mocking** | Not configured (add mocktail) |

## Core Rules

### 1. Test File Location

```bash
# Current structure
test/
└── widget_test.dart

# Recommended structure
test/
├── unit/
│   ├── core/
│   │   ├── network/
│   │   │   ├── api_client_test.dart
│   │   │   └── auth_manager_test.dart
│   │   └── services/
│   │       └── ign_api_service_test.dart
│   └── utils/
│       ├── validators_test.dart
│       └── formatters_test.dart
├── widgets/
│   └── shared/
│       └── loading_indicator_test.dart
└── integration/
    └── expense_flow_test.dart
```

### 2. Widget Test Pattern

```dart
void main() {
  testWidgets('Widget displays correctly', (WidgetTester tester) async {
    // Arrange
    await tester.pumpWidget(const MyWidget(param: 'value'));

    // Act
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Assert
    expect(find.text('Expected Text'), findsOneWidget);
  });
}
```

### 3. Unit Test Pattern (AAA)

```dart
void main() {
  group('Validators', () {
    group('isValidEmail', () {
      test('should return true for valid email', () {
        // Arrange
        const email = 'test@example.com';

        // Act
        final result = Validators.isValidEmail(email);

        // Assert
        expect(result, isTrue);
      });

      test('should return false for invalid email', () {
        // Arrange
        const email = 'invalid-email';

        // Act
        final result = Validators.isValidEmail(email);

        // Assert
        expect(result, isFalse);
      });
    });
  });
}
```

### 4. Descriptive Test Names

```dart
// ✅ Describes behavior
test('should throw ApiException when status code is 401', () {});

// ❌ Vague
test('handles error', () {});
```

### 5. Mock External Dependencies

```dart
// TODO: Add mocktail package
// Recommended pattern with mocktail:

// class MockApiClient extends Mock implements ApiClient {}

// void main() {
//   late MockApiClient mockApiClient;
//
//   setUp(() {
//     mockApiClient = MockApiClient();
//   });
//
//   test('should return transactions', () async {
//     // Arrange
//     when(() => mockApiClient.get(any()))
//         .thenAnswer((_) async => [{'id': '1'}]);
//
//     // Act
//     final result = await service.getTransactions();
//
//     // Assert
//     expect(result, hasLength(1));
//   });
// }
```

### 6. Test Categories

```dart
group('AuthManager', () {
  group('loginWithAccessToken', () {
    test('should store token on successful login', () {});
    test('should throw on invalid token', () {});
    test('should clear existing token before login', () {});
  });

  group('ensureLoggedIn', () {
    test('should return true when valid token exists', () {});
    test('should prompt login when token expired', () {});
  });
});
```

### 7. Avoid Test Interdependence

```dart
// ✅ Each test is independent
setUp(() {
  // Reset state before each test
});

// ❌ Tests depend on each other
late String createdId;

test('creates resource', () {
  createdId = '123'; // Shared state
});

test('updates resource', () {
  update(createdId); // Depends on previous test
});
```

## Run Commands

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/unit/utils/validators_test.dart

# Run with coverage
flutter test --coverage

# Run specific test by name
flutter test --name "should return true for valid email"
```

## Priority Test Areas

Based on codebase analysis, these areas need tests:

| Priority | Area | File |
|----------|------|------|
| High | AuthManager | `lib/core/network/auth_manager.dart` |
| High | ApiClient | `lib/core/network/api_client.dart` |
| High | IgnApiService | `lib/core/services/ign_api_service.dart` |
| Medium | Validators | `lib/core/utils/validators.dart` |
| Medium | Formatters | `lib/core/utils/formatters.dart` |
| Medium | AuthService | `lib/core/services/auth_service.dart` |
| Low | Shared widgets | `lib/shared/widgets/` |

## Checklist

- [ ] Test files follow `*_test.dart` naming
- [ ] Tests use AAA pattern
- [ ] Test names describe expected behavior
- [ ] External dependencies are mocked
- [ ] Tests are independent
- [ ] Edge cases are covered

---

*Standard adapted for Flutter/Dart project*
