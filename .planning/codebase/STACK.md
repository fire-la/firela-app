# Technology Stack

**Analysis Date:** 2026-02-26

## Languages

**Primary:**
- Dart 3.5+ - All application code (`pubspec.yaml`)

**Secondary:**
- Not applicable - Dart is the sole application language

## Runtime

**Environment:**
- Flutter SDK 3.24.0+ - Cross-platform framework
- Dart VM - Runtime for Flutter applications

**Package Manager:**
- Pub - Dart package manager
- Lockfile: `pubspec.lock` present

## Frameworks

**Core:**
- Flutter 3.24.0+ - UI framework for all platforms

**State Management:**
- signals ^6.3.0 - Reactive state management
- signals_flutter ^6.3.0 - Flutter bindings
- flutter_hooks ^0.20.5 - React-like hooks

**Navigation:**
- go_router ^14.6.2 - Declarative routing (`lib/core/router/app_router.dart`)

**Internationalization:**
- flutter_localizations (SDK)
- intl ^0.19.0 - Internationalization support

**Build:**
- build_runner ^2.4.8 - Code generation
- hive_generator ^2.0.1 - Hive type adapters

**Testing:**
- flutter_test (SDK) - Widget and unit testing
- flutter_lints ^3.0.1 - Lint rules

## Key Dependencies

**Critical:**
- http ^1.6.0 - HTTP client for API communication
- hive ^2.2.3 - NoSQL local database
- hive_flutter ^1.1.0 - Flutter Hive integration
- logger ^2.6.2 - Structured logging

**Infrastructure:**
- cloudflare_turnstile ^3.3.1 - Bot protection/CAPTCHA alternative
- web_socket_channel ^2.4.0 - WebSocket support

**UI:**
- fl_chart ^0.70.2 - Charts and data visualization
- percent_indicator ^4.2.5 - Progress indicators
- file_picker ^8.3.7 - File selection
- image_picker ^1.1.2 - Image selection

**Utilities:**
- uuid ^4.5.2 - UUID generation
- path_provider ^2.1.5 - File system paths

## Configuration

**Environment:**
- Compile-time variables via `--dart-define` flags
- Key configs: `ENABLE_TURNSTILE`, `TURNSTILE_SITE_KEY`, `IGN_BASE_URL`
- Configuration in `lib/core/constants/api_constants.dart`

**Build:**
- `pubspec.yaml` - Dependencies and metadata
- `analysis_options.yaml` - Linting rules
- `l10n.yaml` - Localization configuration

## Platform Requirements

**Development:**
- Flutter SDK 3.24.0+
- Dart SDK 3.5.0+
- Android Studio / Xcode / VS Code

**Production:**
- Android API 21+
- iOS 12.0+
- Modern web browsers
- macOS 10.14+
- Windows 10+
- Linux (modern distributions)

---

*Stack analysis: 2026-02-26*
*Update after major dependency changes*
