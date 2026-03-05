# Project State

## Project Reference

See: .planning/PROJECT.md (updated 2026-02-27)

**Core value:** Beancount account management for mobile with data sovereignty
**Current focus:** Phase 4 — Assets & Liabilities Dashboard

## Current Position

Phase: 4 of 9 (Assets & Liabilities Dashboard - IN PROGRESS)
Plan: 1 of 3 plans (04-01 COMPLETE)
Status: Phase 4 Plan 01 complete, ready for 04-02
Last activity: 2026-03-05 — Completed Phase 4 Plan 01: Assets Data Layer and Aggregation

Progress: ████████████████ 100%

## Performance Metrics

**Velocity:**
- Total plans completed: 14
- Average duration: ~12 min
- Total execution time: ~2.8 hours
- Total plans planned: 14 (Phase 4 in progress)

**By Phase:**

| Phase | Plans | Total | Avg/Plan |
|-------|-------|-------|----------|
| 1. Review Center | 4 | ~60 min | ~15 min |
| 2. Analytics Integration | 3 | ~28 min | ~9 min |
| 2.1. Automated Testing | 1 | ~15 min | ~15 min |
| 2.2. API Path & Region | 2 | ~20 min | ~10 min |
| 3. Bill Import | 3 | ~40 min | ~13 min |
| 4. Assets Dashboard | 1 | ~10 min | ~10 min |

**Recent Trend:**
- Last 5 plans: 10min, 10min, 10min, 10min, 10min
- Trend: Stable

## Accumulated Context

### Decisions

Decisions are logged in PROJECT.md Key Decisions table.
Recent decisions affecting current work:

- [Phase 01]: Reused form patterns consistent with expense entry
- [Phase 01]: Delete requires confirmation dialog
- [Phase 01]: Toast feedback for all actions
- [Phase 01]: Pre-fill form with transaction data on load
- [Phase 02]: Using PostHog for analytics (open-source, self-hostable, Flutter SDK support)
- [Phase 02-01]: Use posthog_flutter: ^5.6.0 (compatible with flutter_test's stack_trace pinning)
- [Phase 02-02]: Use snake_case for route names (better PostHog dashboard display)
- [Phase 02-02]: Include app_version and platform in user identification
- [Phase 02-03]: Use snake_case for event names with feature prefix
- [Phase 02.1]: Use patrol for enhanced UI testing DSL
- [Phase 02.1]: Use Page Object Model pattern for test organization
- [Phase 02.1]: Separate daily and PR workflows for CI/CD
- [Phase 02.2-01]: Use signal pattern for region state management
- [Phase 02.2-01]: Inject region prefix automatically in ApiClient._buildUrl()
- [Phase 02.2-01]: Default region is 'cn'
- [Phase 02.2-01]: baseUrl includes /api prefix (https://api-s.firela.io/api)
- [Phase 02.2-02]: Keep confirmTransaction method name for backward compatibility
- [Phase 02.2-02]: Auth endpoints keep /v1 prefix (AuthManager bypasses _buildUrl)
- [Phase 03-01]: Use bottom sheet for image source selection (mobile UI pattern)
- [Phase 03-01]: OCR method in both OcrService and IgnApiService for flexibility
- [Phase 03-02]: Reuse ConfidenceIndicator from review_center for consistent UI
- [Phase 03-02]: Track edited categories count via analytics for NLP quality measurement
- [Phase 03-03]: Use stepped progress indicator (4 steps) for clearer stage visibility
- [Phase 03-03]: Auto-detect error types from error message content (HTTP codes, keywords)
- [Phase 03-03]: Haptic feedback on successful import completion
- [Phase 04-01]: Use singleton pattern for DashboardAggregationService
- [Phase 04-01]: Immutable domain models with fromJson factories

### Roadmap Evolution

- Phase 2.1 inserted after Phase 2: Automated Testing Infrastructure (URGENT) - COMPLETE
- Phase 2.2 inserted after Phase 2.1: API Path & Region Routing Update (URGENT) - COMPLETE
- Phase 3 complete: Bill Import Enhancement - 3/3 plans
- Phase 4 in progress: Assets & Liabilities Dashboard - 1/3 plans

### Deferred Issues

None yet.

### Blockers/Concerns

None yet.

## Session Continuity

Last session: 2026-03-05
Stopped at: Phase 4 Plan 01 complete, Ready for 04-02
Resume file: None
