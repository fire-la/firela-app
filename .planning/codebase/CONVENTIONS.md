# Coding Conventions

**Analysis Date:** 2026-02-26

## Naming Patterns

**Files:**
- snake_case for all files (account_card.dart, use_accounts.dart)
- *_page.dart for full-screen widgets
- *_card.dart, *_view.dart for components
- use_*.dart for custom hooks
- *_service.dart for services

**Functions:**
- camelCase for all functions
- Private methods prefixed with underscore (_handleNlpSubmit)
- Hook functions prefixed with use (useAccounts, useDebounce)

**Variables:**
- camelCase for variables (currentIndex, nlpSessionId)
- Final for immutable references
- Private members with underscore prefix

**Types:**
- PascalCase for classes and enums
- No I prefix for interfaces (User, not IUser)
- camelCase for enum values (AccountType.checking)

**Constants:**
- camelCase for constant names (appName, defaultCurrency)
- Static const in classes with private constructors

## Code Style

**Formatting:**
- 2-space indentation (Dart standard)
- Single quotes for strings (prefer_single_quotes rule)
- Semicolons required
- Trailing commas for multi-line arguments

**Linting:**
- Tool: flutter_lints package
- Config: `analysis_options.yaml`
- Key rules:
  - prefer_const_constructors
  - prefer_const_declarations
  - avoid_print
  - prefer_single_quotes
  - use_key_in_widget_constructors

## Import Organization

**Order:**
1. Dart SDK imports (dart:async, dart:io)
2. Flutter SDK imports (package:flutter/...)
3. External packages (package:go_router/...)
4. Internal packages (relative paths)

**Pattern:**
```dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../constants/api_constants.dart';
import '../utils/logger.dart';
```

## Error Handling

**Patterns:**
- Throw exceptions for unexpected errors
- ApiException for HTTP errors (defined in api_client.dart)
- Try/catch at service boundaries

**Error Classes:**
- `lib/core/errors/exceptions.dart` - Exception hierarchy
- `lib/core/errors/failures.dart` - Failure types

**Note:** Exception classes in lib/core/errors/ are defined but not actively used in the codebase. The ApiClient uses its own inline ApiException.

## Logging

**Framework:**
- `logger` package - Structured logging
- Levels: debug, info, warning, error

**Patterns:**
```dart
logger.i('[ClassName] Info message');
logger.e('[ClassName] Error: $error');
```

**Usage:**
- Log at service boundaries
- Include class name prefix for tracing
- Verbose logging in development (caution: logs sensitive data)

## Comments

**When to Comment:**
- Explain why, not what
- Document business rules and edge cases
- API method documentation

**Doc Comments:**
- Triple-slash (///) for public APIs
- Use @param, @returns tags

**TODO Comments:**
- Format: `// TODO: description`
- Link to issue when applicable

**Language:**
- Code comments: Mixed English/Chinese
- All documentation should be English

## Function Design

**Size:**
- Keep functions focused and concise
- Extract complex logic to helper methods

**Parameters:**
- Max 3-4 parameters
- Use named parameters for clarity

**Return Values:**
- Explicit return types
- Return early for guard clauses

## Class Design

**Singleton Pattern:**
```dart
class MyService {
  MyService._();
  static final MyService instance = MyService._();
}
```

**Immutability:**
- Use final for fields
- Provide copyWith() methods for entities
- Use const constructors where possible

**Utility Classes:**
- Private constructor
- Static methods only

## Widget Design

**State Management:**
- Use signals for global state
- Use flutter_hooks for local state
- Use Watch() widget for reactive updates

**Pattern:**
```dart
class MyWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final data = useMyData();
    return Watch((context) {
      final count = counterSignal.value;
      return Text('$count');
    });
  }
}
```

---

*Convention analysis: 2026-02-26*
*Update when patterns change*
