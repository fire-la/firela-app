# Codebase Concerns

**Analysis Date:** 2026-02-26

## Tech Debt

**Unused Exception/Failure Classes:**
- Issue: Two parallel error handling systems defined but not used in production
- Files: `lib/core/errors/exceptions.dart`, `lib/core/errors/failures.dart`
- Why: Likely created during initial architecture setup
- Impact: Confusion about which error system to use
- Fix approach: Remove unused classes or integrate them into actual error handling

**Mock Data Source in Production Code:**
- Issue: Unused mock data source remains in codebase
- Files: `lib/features/accounts/data/datasources/account_mock_datasource.dart`
- Why: Likely for early development/testing
- Impact: Dead code, confusion about data sources
- Fix approach: Remove if unused, or move to test fixtures

**Hardcoded UI Strings:**
- Issue: Hardcoded Chinese strings not internationalized
- Files:
  - `lib/features/settings/presentation/pages/settings_page.dart` (lines 154, 192, 213-218, 439, 443, 452)
  - `lib/features/fire_journey/presentation/pages/fire_journey_page.dart` (lines 218-230, 256-264, 280)
  - `lib/features/assets/presentation/pages/assets_tabs_page.dart` (line 301)
  - `lib/features/expense/presentation/pages/bill_import_page.dart` (lines 103-109, 138)
  - `lib/core/network/auth_manager.dart` (line 102)
- Why: Rapid development, i18n deferred
- Impact: Inconsistent localization, harder to translate
- Fix approach: Move all strings to ARB files

## Known Bugs

**None explicitly documented.** No TODO/FIXME comments found in codebase.

## Security Considerations

**Token Storage:**
- Risk: JWT tokens stored in unencrypted Hive storage
- Files: `lib/core/network/auth_manager.dart`
- Current mitigation: Hive is reasonably secure for local storage
- Recommendations: Consider `flutter_secure_storage` for financial app

**Verbose Logging:**
- Risk: Logs sensitive information including auth tokens
- Files: `lib/core/network/api_client.dart` (lines 139-142, 232)
- Current mitigation: None
- Recommendations: Add logging levels, disable verbose logs in production

**Cloudflare Turnstile Site Key:**
- Risk: Hardcoded in code
- Files: `lib/core/constants/api_constants.dart` (line 88)
- Current mitigation: Turnstile site keys are designed to be public
- Recommendations: No action needed, but be aware

## Performance Bottlenecks

**IndexedStack Pre-loading:**
- Problem: All pages kept in memory
- Files: `lib/features/main/presentation/pages/main_page.dart` (lines 48-52)
- Measurement: 3 pages always in memory
- Cause: IndexedStack keeps all children alive
- Improvement path: Consider lazy loading or PageView with keepAlive: false

**No Pagination:**
- Problem: No visible pagination for transaction lists
- Files: `lib/core/services/ign_api_service.dart`
- Cause: API supports params but no client-side pagination
- Improvement path: Add pagination for large datasets

## Fragile Areas

**Main Page (533 lines):**
- Why fragile: Multiple responsibilities in single file
- Files: `lib/features/main/presentation/pages/main_page.dart`
- Common failures: Changes to one area may affect others
- Safe modification: Extract NLP logic to separate service/hook
- Test coverage: None

**Duplicate Error Handling:**
- Why fragile: Same error patterns repeated in multiple files
- Files:
  - `lib/features/main/presentation/pages/main_page.dart` (lines 214-262, 361-440)
  - `lib/features/expense/presentation/pages/bill_import_page.dart` (lines 451-470)
- Safe modification: Extract to shared error handling utility
- Test coverage: None

## Missing Critical Features

**Test Coverage:**
- Problem: Only 1 basic test exists
- Current workaround: Manual testing
- Blocks: Confidence in refactoring, CI/CD reliability
- Implementation complexity: Medium (add test infrastructure)

## Test Coverage Gaps

**All Critical Services:**
- What's not tested: AuthManager, ApiClient, IgnApiService, Validators, Formatters
- Risk: Bugs may go undetected
- Priority: High
- Difficulty to test: Medium (need mock infrastructure)

**Widget Interactions:**
- What's not tested: Page navigation, form submissions
- Risk: UI regressions
- Priority: Medium
- Difficulty to test: Low (widget tests straightforward)

## Documentation Gaps

**No Feature READMEs:**
- What's missing: Documentation for each feature module
- Impact: Harder for new developers to understand codebase
- Priority: Low

**API Response Schemas:**
- What's missing: Documentation of API response formats
- Impact: Harder to debug API issues
- Priority: Medium

---

*Concerns audit: 2026-02-26*
*Update as issues are fixed or new ones discovered*
