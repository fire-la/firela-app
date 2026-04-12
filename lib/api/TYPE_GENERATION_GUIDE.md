# Flutter API Integration Guide

## Overview

The firela Flutter app uses **manual Dio HTTP wrappers** to communicate with the firela-vlt backend API. API types are defined manually in Dart.

## Current Architecture

```
┌─────────────────────────────────────────┐
│   firela Flutter App                    │
│                                         │
│   api/src/api_client.dart  — Dio HTTP client │
│   api/api.dart     — API services barrel   │
│   api/src/region_types.dart — Region types  │
│                                         │
│   (No generated types currently)        │
└─────────────────────────────────────────┘
         │
         ▼
┌─────────────────────────────────────────┐
│   firela-vlt Backend (NestJS)            │
│   OpenAPI spec: libs/api-types/openapi.yaml │
│   npm package: @firela/api-types         │
└─────────────────────────────────────────┘
```

## API Files

| File | Purpose |
|------|---------|
| `api.dart` | API service classes barrel (Account, Transaction, etc.) |
| `src/api_client.dart` | Dio HTTP client singleton with env-based URL config |
| `src/region_types.dart` | RegionConfig and related data types |

## Environment Configuration

### Development

```bash
flutter run --dart-define=API_URL=http://localhost:3334/api/v1
```

### Production

```bash
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

## Adding New API Endpoints

1. Add the route to the firela-vlt backend OpenAPI spec (`libs/api-types/openapi.yaml`)
2. Rebuild `@firela/api-types` npm package (`npm run build` in `libs/api-types/`)
3. Manually add the corresponding Dart method in `api.dart`
4. Define any new Dart types in `src/region_types.dart` or create a new types file in `src/`

## Planned: OpenAPI Code Generation

The following are configured but **not yet in use**:

- `pubspec.yaml`: `openapi_generator` and `openapi_generator_annotations` dependencies
- `build.yaml`: Configured for `dart-dio` generator with output to `lib/api/generated/`

When ready to enable code generation:

1. Run `flutter pub run build_runner build --delete-conflicting-outputs`
2. Generated types will appear in `lib/api/generated/`
3. Replace manual wrappers with generated types
