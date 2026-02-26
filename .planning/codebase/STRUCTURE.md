# Codebase Structure

**Analysis Date:** 2026-02-26

## Directory Layout

```
firela/
├── lib/                   # Application source code
├── test/                  # Test files
├── android/               # Android platform code
├── ios/                   # iOS platform code
├── web/                   # Web platform code
├── macos/                 # macOS platform code
├── linux/                 # Linux platform code
├── windows/               # Windows platform code
├── pubspec.yaml           # Dependencies and metadata
├── analysis_options.yaml  # Linting configuration
└── l10n.yaml              # Localization configuration
```

## lib/ Directory Structure

```
lib/
├── main.dart                    # App bootstrap (Hive, AuthManager init)
├── app.dart                     # Root widget (FirelaApp)
│
├── core/                        # Cross-cutting infrastructure
│   ├── constants/              # Static configuration
│   │   ├── api_constants.dart  # API endpoints, timeouts
│   │   ├── app_constants.dart  # General app constants
│   │   └── storage_keys.dart   # Hive storage key names
│   │
│   ├── errors/                 # Error types
│   │   ├── exceptions.dart     # AppException hierarchy
│   │   └── failures.dart       # Failure types
│   │
│   ├── network/                # Networking layer
│   │   ├── api_client.dart     # Singleton HTTP client
│   │   └── auth_manager.dart   # JWT token management
│   │
│   ├── router/                 # Navigation
│   │   ├── app_router.dart     # GoRouter configuration
│   │   └── route_names.dart    # Route path constants
│   │
│   ├── services/               # Business services
│   │   ├── auth_service.dart   # Auth UI orchestration
│   │   └── ign_api_service.dart # Beancount API methods
│   │
│   ├── theme/                  # Theming
│   │   ├── app_theme.dart      # Light/dark ThemeData
│   │   ├── colors.dart         # Color constants
│   │   └── text_styles.dart    # Text styles
│   │
│   └── utils/                  # Utilities
│       ├── formatters.dart     # Currency, date formatters
│       ├── logger.dart         # App-wide logger
│       └── validators.dart     # Input validation
│
├── features/                    # Feature modules
│   ├── accounts/               # Account management
│   ├── assets/                 # Assets & liabilities
│   ├── expense/                # Expense tracking / bill import
│   ├── fire_journey/           # FIRE journey tracking
│   ├── home/                   # Home screen
│   ├── main/                   # Main shell (bottom nav)
│   └── settings/               # Settings
│
├── shared/                     # Shared across features
│   ├── hooks/                  # use_debounce.dart
│   ├── signals/                # theme_signal.dart, locale_signal.dart
│   └── widgets/                # Reusable UI components
│
└── l10n/                       # Internationalization
    ├── app_en.arb              # English (template)
    ├── app_zh.arb              # Chinese fallback
    ├── app_zh_CN.arb           # Simplified Chinese
    └── app_zh_TW.arb           # Traditional Chinese
```

## Directory Purposes

**lib/core/:**
- Purpose: Cross-cutting infrastructure and utilities
- Contains: Network layer, auth, routing, theming, constants
- Key files: `network/api_client.dart`, `services/ign_api_service.dart`

**lib/features/:**
- Purpose: Feature modules (vertical slices)
- Contains: Self-contained feature implementations
- Structure: Each feature has data/, domain/, presentation/

**lib/shared/:**
- Purpose: Components shared across features
- Contains: Common widgets, hooks, signals
- Key files: `widgets/loading_indicator.dart`, `signals/theme_signal.dart`

**lib/l10n/:**
- Purpose: Internationalization resources
- Contains: ARB translation files
- Template: `app_en.arb`

## Key File Locations

**Entry Points:**
- `lib/main.dart`: App bootstrap
- `lib/app.dart`: Root widget

**Configuration:**
- `pubspec.yaml`: Dependencies
- `analysis_options.yaml`: Linting rules
- `l10n.yaml`: i18n configuration
- `lib/core/constants/api_constants.dart`: API config

**Core Logic:**
- `lib/core/network/api_client.dart`: HTTP client
- `lib/core/network/auth_manager.dart`: Authentication
- `lib/core/services/ign_api_service.dart`: API methods

**Routing:**
- `lib/core/router/app_router.dart`: Route definitions
- `lib/core/router/route_names.dart`: Route constants

**Testing:**
- `test/widget_test.dart`: Single test file

## Naming Conventions

**Files:**
- snake_case.dart: All Dart files
- *_page.dart: Full-screen widgets
- *_card.dart: Card components
- *_view.dart: View components
- use_*.dart: Custom hooks
- *_service.dart: Service classes
- *_constants.dart: Constant classes
- *_signal.dart: Signal definitions

**Directories:**
- snake_case: All directories
- Feature names: accounts, fire_journey, expense
- Layer names: presentation, domain, data

**Classes:**
- PascalCase: All classes
- Descriptive suffixes: Page, Card, View, Service

## Where to Add New Code

**New Feature:**
- Primary code: `lib/features/{feature_name}/`
- Structure: Create data/, domain/, presentation/ subdirectories
- Tests: `test/{feature_name}/`

**New API Endpoint:**
- Service method: `lib/core/services/ign_api_service.dart`
- Constants: `lib/core/constants/api_constants.dart`

**New Shared Widget:**
- Implementation: `lib/shared/widgets/`
- Export from: Use directly via import

**New Route:**
- Definition: `lib/core/router/app_router.dart`
- Name constant: `lib/core/router/route_names.dart`

**New Localization:**
- Add key to: `lib/l10n/app_en.arb` (template)
- Translations: `lib/l10n/app_zh.arb`, etc.

## Special Directories

**Platform Directories:**
- android/, ios/, web/, macos/, linux/, windows/
- Source: Generated by Flutter
- Committed: Yes

**.dart_tool/:**
- Purpose: Dart tooling cache
- Source: Auto-generated
- Committed: No (in .gitignore)

---

*Structure analysis: 2026-02-26*
*Update when directory structure changes*
