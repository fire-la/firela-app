# Roadmap: FIREla

## Milestones

- ✅ **v1.0 MVP** — Phases 1-7 (shipped 2026-03-06)
- 📋 **v1.1 Polish** — Phases 8+ (planned)

## Phases

<details>
<summary>✅ v1.0 MVP (Phases 1-7) — SHIPPED 2026-03-06</summary>

### Phase 1: Review Center ✅
**Goal**: Complete pending transaction review system with confidence indicators
**Plans**: 4 plans (COMPLETE)

Plans:
- [x] 01-01: Data layer (models, datasource, repository)
- [x] 01-02: Entry point + badge widget + routes
- [x] 01-03: List page with 4 tabs and infinite scroll
- [x] 01-04: Detail page with edit form and i18n

### Phase 2: Analytics Integration ✅
**Goal**: Integrate PostHog analytics
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 02-01: PostHog SDK setup and initialization
- [x] 02-02: Screen tracking and user identification
- [x] 02-03: Event capture for key user actions

### Phase 2.1: Automated Testing ✅
**Goal**: Integration tests with CI/CD
**Plans**: 1 plan (COMPLETE)

Plans:
- [x] 02.1-01: Patrol integration tests with CI/CD

### Phase 2.2: API Path & Region ✅
**Goal**: Update API paths and add region routing
**Plans**: 2 plans (COMPLETE)

Plans:
- [x] 02.2-01: Update API paths and add region routing
- [x] 02.2-02: Update feature datasources with endpoints

### Phase 3: Bill Import Enhancement ✅
**Goal**: Enhanced bill import with OCR/NLP
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 03-01: OCR/receipt scanning integration
- [x] 03-02: NLP expense categorization
- [x] 03-03: Bill import workflow improvements

### Phase 4: Assets & Liabilities ✅
**Goal**: Visual dashboard for tracking financial positions
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 04-01: Assets data layer and aggregation
- [x] 04-02: Liabilities tracking implementation
- [x] 04-03: Dashboard visualization with charts

### Phase 5: FIRE Journey ✅
**Goal**: Track progress toward financial independence
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 05-01: FIRE calculation engine
- [x] 05-02: Progress tracking and milestones
- [x] 05-03: Projection visualizations

### Phase 6: Settings & Sync ✅
**Goal**: Complete settings page with offline sync
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 06-01: Settings page implementation
- [x] 06-02: Account management and sync
- [x] 06-03: Offline mode and conflict resolution

### Phase 7: Home Dashboard ✅
**Goal**: Summary dashboard with quick actions
**Plans**: 3 plans (COMPLETE)

Plans:
- [x] 07-01: Dashboard layout and summary widgets
- [x] 07-02: Quick actions and shortcuts
- [x] 07-03: Insights and recommendations

</details>

---

## 📋 v1.1 Polish (Planned)

### Phase 8: OpenAPI Types Integration 🔧
**Goal**: Integrate OpenAPI type generation for type-safe API calls
**Plans**: 2 plans (Not started)

- [ ] 08-01: Setup openapi-generator and generate types
- [ ] 08-02: Migrate datasources to use generated types

**Context**: [08-CONTEXT.md](phases/08-openapi-types-integration/08-CONTEXT.md)

**Context**: [08-CONTEXT.md](phases/08-openapi-types-integration/08-CONTEXT.md)

### Future Enhancements
- Performance optimization
- Accessibility improvements
- Additional test coverage
- User feedback incorporation

## Progress

| Phase | Milestone | Plans Complete | Status | Completed |
|-------|-----------|----------------|--------|-----------|
| 1. Review Center | v1.0 | 4/4 | Complete | 2026-02-26 |
| 2. Analytics | v1.0 | 3/3 | Complete | 2026-02-27 |
| 2.1. Testing | v1.0 | 1/1 | Complete | 2026-03-02 |
| 2.2. API Region | v1.0 | 2/2 | Complete | 2026-03-02 |
| 3. Bill Import | v1.0 | 3/3 | Complete | 2026-03-05 |
| 4. Assets | v1.0 | 3/3 | Complete | 2026-03-05 |
| 5. FIRE Journey | v1.0 | 3/3 | Complete | 2026-03-05 |
| 6. Settings | v1.0 | 3/3 | Complete | 2026-03-06 |
| 7. Home Dashboard | v1.0 | 3/3 | Complete | 2026-03-06 |
| 8. OpenAPI Types | v1.1 | 0/3 | Not started | - |

**v1.0: 9 phases, 25 plans, 100% complete | v1.1: In progress**

---

*v1.0 MVP shipped: 2026-03-06*
*See [milestones/v1.0-mvp.md](milestones/v1.0-mvp.md) for full archive*
