# PROJECT: FIREla

**Last Updated:** 2026-02-27

## Core Value

Beancount account management for mobile with **data sovereignty** - your financial data belongs to you, stored in plain text files you control.

## Problem Statement

Traditional finance apps lock your data in proprietary databases. Beancount pioneered data sovereignty through plain text ledger files. FIREla extends this philosophy to mobile, allowing users to manage their Beancount accounts on their phones while keeping full control of their data.

## Target Users

- Beancount users who want mobile access to their financial data
- FIRE (Financial Independence, Retire Early) practitioners
- Users who value data sovereignty and privacy
- Chinese and English speakers (full i18n support)

## Solution Overview

A cross-platform Flutter mobile app that:
- Connects to Beancount SaaS backend for data sync
- Provides mobile-friendly UI for transaction review and management
- Supports offline operation with local caching
- Respects data sovereignty principles

## Technical Context

**Stack:**
- Flutter 3.24.0+ / Dart 3.5+
- State Management: signals + flutter_hooks
- Navigation: go_router
- Storage: Hive (local), REST API (remote)
- i18n: flutter_localizations (en, zh, zh_CN, zh_TW)

**Architecture:** Feature-based Clean Architecture
- `lib/features/` - Vertical feature slices (data/domain/presentation)
- `lib/core/` - Cross-cutting infrastructure
- `lib/shared/` - Reusable components

**Backend:** Beancount SaaS (ign-api)

## Key Features (Current)

- **Account Management** - View and manage Beancount account paths
- **Review Center** - Review pending transactions with confidence indicators
- **Bill Import** - Import bills from various sources
- **Assets & Liabilities** - Track financial positions
- **FIRE Journey** - Financial independence progress tracking

## Constraints & Decisions

| Decision | Rationale | Date |
|----------|-----------|------|
| Flutter over React Native | Single codebase for all platforms, better performance | Project start |
| signals for state management | Simpler than Bloc, reactive like Riverpod | Project start |
| go_router for navigation | Declarative routing, deep linking support | Project start |
| Hive for local storage | NoSQL, fast, Flutter-native | Project start |
| Feature-based architecture | Scalability, team autonomy | Project start |

## Non-Goals

- Desktop-only features (mobile-first)
- Proprietary data formats
- Vendor lock-in mechanisms
- Real-time collaboration

## Success Metrics

- Users can review and manage transactions offline
- Data syncs reliably with Beancount backend
- App supports Chinese and English users
- Core financial workflows complete in <3 taps

## References

- GitHub: https://github.com/fire-la/firela
- Beancount: http://furius.ca/beancount/
- billclaw (sibling project): https://github.com/fire-la/billclaw
