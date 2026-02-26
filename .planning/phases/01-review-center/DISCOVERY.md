# Review Center Feature Discovery

**Date:** 2026-02-26

## Feature Overview

审核中心 (Review Center) - A feature for managing pending review transactions imported from bill files that have low confidence scores and require manual user confirmation.

## Business Context

- **Scene:** After importing bill files, some transactions have low confidence scores and need user verification
- **Entry Point:** Icon in assets page Tab area with red badge showing pending count
- **Goal:** Allow users to confirm, edit, or delete pending transactions

## Requirements Summary

### Entry Point
- Location: Right side of Tab bar in AssetsTabsPage
- Badge: Number badge showing pending count (backend-provided)
- Visibility: Always visible to all users

### List Page
- **Tabs (4 fixed):**
  - 全部 (All)
  - 高置信度 (HIGH ≥85%)
  - 需确认 (MEDIUM 60-84%)
  - 建议核对 (LOW <60%)
- **Tab Display:** Show count on each tab (e.g., "需确认(12)")
- **Sorting:** Transaction time descending (most recent first)
- **Pagination:** Infinite scroll
- **Refresh:** Pull-to-refresh + auto-refresh on page entry
- **Empty State:** Show empty state with prompt

### List Item (Card)
- **Display:** Account name, merchant name, amount, transaction time, confidence indicator (icon/color)
- **Actions:**
  - 删除 (Delete) button
  - 保留这笔 (Keep) button
  - Click card → Navigate to detail page

### Detail/Edit Page
- **Data Source:** Request detail API by ID
- **Edit:** Full edit form (complete editing, same as expense entry)
- **Delete:** Delete button available
- **Save:** Return to list after save

### Actions
| Action | Flow | Feedback |
|--------|------|----------|
| 保留这笔 (Confirm) | Direct API confirm → record transaction | Toast + remove from list |
| 删除 (Delete) | Show confirmation dialog → API delete | Toast + remove from list |
| 编辑 (Edit) | Navigate to detail → edit → save → API update | Return to list |

### Error Handling
- **Network Error:** Toast notification
- **API Failure:** Toast with error message
- **Empty State:** Display empty state UI

### Technical Decisions
- **Offline:** Not supported
- **i18n:** Follow existing conventions (ARB files)
- **Batch Operations:** Not supported in this phase

## API Endpoints (To be explored)

Based on API documentation at https://api-s.firela.io/api/docs#/

Expected endpoints:
- GET pending transactions list with filtering
- GET pending transaction detail
- POST confirm transaction
- PUT/DIRECT update transaction
- DELETE pending transaction
- GET pending count for badge

## Confidence Level Definitions

| Level | Code | Range | Description |
|-------|------|-------|-------------|
| 高置信度 | HIGH | ≥85% | High confidence, likely correct |
| 需确认 | MEDIUM | 60-84% | Needs user verification |
| 建议核对 | LOW | <60% | Low confidence, recommend review |

## Files to Create/Modify

### New Files (Feature Module)
```
lib/features/review_center/
├── data/
│   ├── datasources/
│   │   └── review_center_remote_datasource.dart
│   ├── models/
│   │   ├── pending_transaction_model.dart
│   │   └── confidence_level.dart
│   └── repositories/
│       └── review_center_repository.dart
├── domain/
│   ├── entities/
│   │   └── pending_transaction.dart
│   └── repositories/
│       └── review_center_repository_interface.dart
└── presentation/
    ├── pages/
    │   ├── review_center_page.dart
    │   └── review_detail_page.dart
    ├── widgets/
    │   ├── pending_transaction_card.dart
    │   ├── confidence_indicator.dart
    │   └── review_center_badge.dart
    └── providers/
        └── review_center_provider.dart
```

### Modified Files
```
lib/features/assets/presentation/pages/assets_tabs_page.dart  # Add entry badge
lib/core/router/app_router.dart  # Add routes
lib/l10n/app_en.arb  # i18n strings
lib/l10n/app_zh.arb  # i18n strings
lib/core/services/ign_api_service.dart  # Add API methods (if needed)
```

## UI Reference

See product design image for:
- List page layout
- Card design
- Detail page layout
- Badge style

## Questions Resolved

All business and technical questions resolved through interview process.
