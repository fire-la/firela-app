# Roadmap: FIREla

## Overview

Build a complete Beancount mobile companion app, starting with transaction review, then expanding to bill import, asset tracking, FIRE journey progress, and home dashboard.

## Domain Expertise

None - Flutter mobile development follows standard patterns documented in codebase analysis.

## Phases

**Phase Numbering:**
- Integer phases (1, 2, 3): Planned milestone work
- Decimal phases (2.1, 2.2): Urgent insertions (marked with INSERTED)

Decimal phases appear between their surrounding integers in numeric order.

- [x] **Phase 1: Review Center** - Pending transaction review with confidence indicators
- [ ] **Phase 2: Bill Import Enhancement** - OCR/NLP expense recognition and parsing
- [ ] **Phase 3: Assets & Liabilities Dashboard** - Visualization and position tracking
- [ ] **Phase 4: FIRE Journey Tracker** - Progress tracking and projections
- [ ] **Phase 5: Settings & Sync** - Account management and offline sync
- [ ] **Phase 6: Home Dashboard** - Summary widgets and quick actions

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

### Phase 2: Bill Import Enhancement
**Goal**: Enhanced bill import with OCR/NLP recognition, better parsing, and expense categorization
**Depends on**: Phase 1 (transaction patterns)
**Research**: Likely (OCR/NLP integration, receipt parsing APIs)
**Research topics**: OCR libraries for Flutter, receipt parsing services, NLP expense categorization
**Plans**: TBD

Plans:
- [ ] 02-01: OCR/receipt scanning integration
- [ ] 02-02: NLP expense categorization enhancement
- [ ] 02-03: Bill import workflow improvements

### Phase 3: Assets & Liabilities Dashboard
**Goal**: Visual dashboard for tracking assets, liabilities, and net worth over time
**Depends on**: Phase 1 (data patterns)
**Research**: Likely (charting library optimization, data aggregation patterns)
**Research topics**: fl_chart advanced usage, time-series data visualization, net worth calculation
**Plans**: TBD

Plans:
- [ ] 03-01: Assets data layer and aggregation
- [ ] 03-02: Liabilities tracking implementation
- [ ] 03-03: Dashboard visualization with charts

### Phase 4: FIRE Journey Tracker
**Goal**: Track progress toward financial independence with projections and goal setting
**Depends on**: Phase 3 (asset/liability data)
**Research**: Likely (FIRE calculation algorithms, projection models)
**Research topics**: FIRE number calculation, safe withdrawal rate models, projection visualizations
**Plans**: TBD

Plans:
- [ ] 04-01: FIRE calculation engine
- [ ] 04-02: Progress tracking and milestones
- [ ] 04-03: Projection visualizations

### Phase 5: Settings & Sync
**Goal**: Complete settings page with account management, preferences, and offline sync
**Depends on**: Phase 1 (auth patterns)
**Research**: Unlikely (internal patterns, existing auth flow)
**Plans**: TBD

Plans:
- [ ] 05-01: Settings page implementation
- [ ] 05-02: Account management and sync
- [ ] 05-03: Offline mode and conflict resolution

### Phase 6: Home Dashboard
**Goal**: Summary dashboard with quick actions, insights, and navigation shortcuts
**Depends on**: Phases 1-4 (all feature data)
**Research**: Unlikely (internal patterns)
**Plans**: TBD

Plans:
- [ ] 06-01: Dashboard layout and summary widgets
- [ ] 06-02: Quick actions and shortcuts
- [ ] 06-03: Insights and recommendations

## Progress

**Execution Order:**
Phases execute in numeric order: 1 → 2 → 2.1 → 2.2 → 3 → 3.1 → 4

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 1. Review Center | 4/4 | Complete | 2026-02-26 |
| 2. Bill Import | 0/3 | Not started | - |
| 3. Assets Dashboard | 0/3 | Not started | - |
| 4. FIRE Journey | 0/3 | Not started | - |
| 5. Settings & Sync | 0/3 | Not started | - |
| 6. Home Dashboard | 0/3 | Not started | - |
