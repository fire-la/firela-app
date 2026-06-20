# Phase 05 Plan 01: FIRE Calculation Engine Summary

**FIRE calculation engine with goal models, calculation service, and offline-capable storage for financial independence tracking.**

## Accomplishments

- Created immutable domain models for FIRE goals, progress, and milestones with fromJson/toJson serialization
- Implemented comprehensive FireCalculationService with standard FIRE formulas (4% rule, compound interest projections)
- Added API endpoint and local storage with Hive caching for offline support
- Added i18n keys for FIRE-related labels in all supported locales (en, zh_CN, zh_TW)

## Files Created/Modified

- `lib/features/fire_journey/domain/models/fire_goal.dart` - FIRE goal model with target amount, withdrawal rate, timestamps
- `lib/features/fire_journey/domain/models/fire_progress.dart` - Progress tracking model with net worth, years to FIRE, savings rate
- `lib/features/fire_journey/domain/models/fire_milestone.dart` - Milestone model for achievement tracking
- `lib/features/fire_journey/data/services/fire_calculation_service.dart` - Singleton service with FIRE calculation methods
- `lib/features/fire_journey/data/services/fire_goal_storage.dart` - Storage service with Hive caching and offline support
- `lib/core/services/ign_api_service.dart` - Added getFireGoal() and saveFireGoal() methods
- `lib/core/constants/api_constants.dart` - Added fireGoalEndpoint constant
- `lib/l10n/app_en.arb` - Added fireGoal, fireNumber, savingsRate, yearsToFire keys
- `lib/l10n/app_zh_CN.arb` - Added Chinese Simplified translations
- `lib/l10n/app_zh_TW.arb` - Added Chinese Traditional translations

## Decisions Made

- Used 4% rule as default withdrawal rate (standard FIRE formula)
- Used 7% default annual return rate for compound interest calculations
- Implemented iterative calculation for years-to-FIRE with monthly contributions (more accurate than closed-form formula)
- FireGoalStorage handles offline scenarios by caching locally and syncing when online

## Issues Encountered

- Initial type error in FireGoal.fromJson due to nullable DateTime parsing - resolved by creating separate nullable and non-nullable parse methods

## Next Step

Ready for 05-02-PLAN.md (Progress tracking and milestones)
