# Roadmap: FIREla

## Overview

Build a complete Beancount mobile companion app, starting with transaction review, then analytics integration, bill import, asset tracking, FIRE journey progress, and home dashboard.

## Domain Expertise

None - Flutter mobile development follows standard patterns documented in codebase analysis.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [x] **Phase 1: Review Center** - Pending transaction review with confidence indicators
- [x] **Phase 2: Analytics Integration** - PostHog analytics for data monitoring and optimization
- [x] **Phase 2.1: Automated Testing Infrastructure** (INSERTED) - Integration tests, CI/CD, daily runs, report generation
- [ ] **Phase 2.2: API Path & Region Routing Update** (INSERTED) - Update API paths per latest docs, add region routing support
- [ ] **Phase 3: Bill Import Enhancement** - OCR/NLP expense recognition and parsing
- [ ] **Phase 4: Assets & Liabilities Dashboard** - Visualization and position tracking
- [ ] **Phase 5: FIRE Journey Tracker** - Progress tracking and projections
- [ ] **Phase 6: Settings & Sync** - Account management and offline sync
- [ ] **Phase 7: Home Dashboard** - Summary widgets and quick actions

## Phase Details

### Phase 1: Review Center ✅
**Goal**: Complete pending transaction review system with confidence indicators
**Depends on**: Nothing (first phase)
**Research**: Unlikely (established patterns)
**Plans**: 4 plans (COMPLETE)

Plans:
- [x] 01-01: Data layer (models, datasource, repository)
- [x] 01-02: Entry point + badge widget + routes
- [x] 01-03: List page with 4 tabs and infinite scroll
- [x] 01-04: Detail page with edit form and i18n

### Phase 2: Analytics Integration ✅
**Goal**: Integrate PostHog analytics for user behavior tracking, screen view analytics, feature flags, and data-driven optimization
**Depends on**: Nothing (infrastructure layer)
**Research**: Unlikely (well-documented PostHog Flutter SDK)
**Research topics**: PostHog Flutter SDK, go_router observer pattern, event taxonomy
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 02-01: PostHog SDK setup and initialization
- [x] 02-02: Screen tracking and user identification
- [x] 02-03: Event capture for key user actions

### Phase 2.2: API Path & Region Routing Update (INSERTED)
**Goal**: Update API paths according to latest API documentation and implement region-aware routing
**Depends on**: Phase 2 (infrastructure)
**Research**: Unlikely (clear documentation available)
**Plans**: 1-2 plans (PLANNED)

**Key Changes:**
- Review Center: `/v1/bean/pending-transactions` → `/api/v1/{region}/bean/review-center`
- Add region routing support (cn, us, eu-core, de)
- Update ApiClient to inject region prefix for Bean module endpoints
- Add region selection UI (settings)

Plans:
- [x] 02.2-01: Update API paths and add region routing infrastructure
- [ ] 02.2-02: Update feature datasources with correct endpoints

### Phase 3: Bill Import Enhancement
**Goal**: Enhanced bill import with OCR/NLP recognition, better parsing, and expense categorization
**Depends on**: Phase 1 (transaction patterns)
**Research**: Likely (OCR/NLP integration, receipt parsing APIs)
**Research topics**: OCR libraries for Flutter, receipt parsing services, NLP expense categorization
**Plans**: 3 plans (PLANNED)

Plans:
- [ ] 03-01: OCR/receipt scanning integration
- [ ] 03-02: NLP expense categorization enhancement
- [ ] 03-03: Bill import workflow improvements

### Phase 4: Assets & Liabilities Dashboard
**Goal**: Visual dashboard for tracking assets, liabilities, and net worth over time
**Depends on**: Phase 1 (data patterns)
**Research**: Likely (charting library optimization, data aggregation patterns)
**Research topics**: fl_chart advanced usage, time-series data visualization, net worth calculation
**Plans**: TBD

Plans:
- [ ] 04-01: Assets data layer and aggregation
- [ ] 04-02: Liabilities tracking implementation
- [ ] 04-03: Dashboard visualization with charts

### Phase 5: FIRE Journey Tracker
**Goal**: Track progress toward financial independence with projections and goal setting
**Depends on**: Phase 4 (asset/liability data)
**Research**: Likely (FIRE calculation algorithms, projection models)
**Research topics**: FIRE number calculation, safe withdrawal rate models, projection visualizations
**Plans**: TBD

Plans:
- [ ] 05-01: FIRE calculation engine
- [ ] 05-02: Progress tracking and milestones
- [ ] 05-03: Projection visualizations

### Phase 6: Settings & Sync
**Goal**: Complete settings page with account management, preferences, and offline sync
**Depends on**: Phase 1 (auth patterns)
**Research**: Unlikely (internal patterns, existing auth flow)
**Plans**: TBD

Plans:
- [ ] 06-01: Settings page implementation
- [ ] 06-02: Account management and sync
- [ ] 06-03: Offline mode and conflict resolution

### Phase 7: Home Dashboard
**Goal**: Summary dashboard with quick actions, insights, and navigation shortcuts
**Depends on**: Phases 1-5 (all feature data)
**Research**: Unlikely (internal patterns)
**Plans**: TBD

Plans:
- [ ] 07-01: Dashboard layout and summary widgets
- [ ] 07-02: Quick actions and shortcuts
- [ ] 07-03: Insights and recommendations

## Progress

**Execution Order:**
Phases execute in numeric order: 1 → 2 → 2.1 → 2.2 → 3 → 3.1 → 4

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 1. Review Center | 4/4 | Complete | 2026-02-26 |
| 2. Analytics Integration | 3/3 | Complete | 2026-02-27 |
| 2.1. Automated Testing | 1/1 | Complete | 2026-03-02 |
| 2.2. API Path & Region | 1/2 | In Progress | 2026-03-02 |
| 3. Bill Import | 0/3 | Planned | - |
| 4. Assets Dashboard | 0/3 | Not started | - |
| 5. FIRE Journey | 0/3 | Not started | - |
| 6. Settings & Sync | 0/3 | Not started | - |
| 7. Home Dashboard | 0/3 | Not started | - |
