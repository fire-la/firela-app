# Flutter API Integration Guide

## Overview

The firela Flutter app uses **manual Dio HTTP wrappers** to communicate with the IGN backend API. API types are defined manually in Dart.

## Current Architecture

```
┌─────────────────────────────────────────┐
│   firela Flutter App                    │
│                                         │
│   api/api_client.dart  — Dio HTTP client │
│   api/ign_api.dart     — API services   │
│   api/region_types.dart — Region types  │
│                                         │
│   (No generated types currently)        │
└─────────────────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────────┐
│   IGN Backend (NestJS)                  │
│   OpenAPI spec: libs/api-types/openapi.yaml │
│   npm package: @firela/api-types         │
└─────────────────────────────────────────┘
```

## API Files

| File | Purpose |
|------|---------|
| `api_client.dart` | Dio HTTP client singleton with env-based URL config |
| `ign_api.dart` | Manual API service classes (Account, Transaction, etc.) |
| `region_types.dart` | RegionConfig and related data types |

## Environment Configuration

### Development

```bash
# Run with local backend
flutter run --dart-define=API_URL=http://localhost:3334/api/v1
```

### Production

```bash
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

## Adding New API Endpoints

1. Add the route to the IGN backend OpenAPI spec (`libs/api-types/openapi.yaml`)
2. Rebuild `@firela/api-types` npm package (`npm run build` in `libs/api-types/`)
3. Manually add the corresponding Dart method in `ign_api.dart`
4. Define any new Dart types in `region_types.dart` or create a new types file

## Planned: OpenAPI Code Generation

The following are configured but **not yet in use**:

- `pubspec.yaml`: `openapi_generator` and `openapi_generator_annotations` dependencies
- `build.yaml`: Configured for `dart-dio` generator with output to `lib/api/generated/`

When ready to enable code generation:

1. Run `flutter pub run build_runner build --delete-conflicting-outputs`
2. Generated types will appear in `lib/api/generated/`
3. Replace manual wrappers with generated types
