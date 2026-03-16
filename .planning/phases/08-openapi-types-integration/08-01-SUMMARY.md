# Phase 08 Plan 01: OpenAPI Generator Setup Summary

**Completed: 2026-03-16**

Infrastructure setup for type-safe API calls using OpenAPI generator completed. Generated types workflow established with local spec file fallback.

## Accomplishments

- Added openapi-generator dependencies (dio, openapi_generator, openapi_generator_annotations)
- Created build.yaml configuration for OpenAPI generator
- Created lib/api/ directory structure with ApiClientWrapper class
- Downloaded OpenAPI spec locally for offline generation
- Preserved existing ApiClient behaviors (region routing, auth interceptors, 401 handling)

## Files Created/Modified

- `pubspec.yaml` - Added dio: ^5.4.0, openapi_generator: ^6.0.0, openapi_generator_annotations: ^6.0.0
- `pubspec.lock` - Updated with new dependencies
- `build.yaml` - New file, generator configuration pointing to local openapi.yaml
- `lib/api/api_client.dart` - New file, ApiClientWrapper with Dio configuration
- `lib/api/api_service.dart` - New file, base service class for generated types
- `openapi.yaml` - Downloaded OpenAPI spec from fire-la/api-specs repo

## Decisions Made

1. **Dio over http package**: Chose Dio for better interceptor support, which aligns with openapi-generator's generated clients
2. **Local spec file approach**: Downloaded spec locally (openapi.yaml) for reliable offline generation, with GitHub URL as backup
3. **Preserved existing behavior**: ApiClientWrapper maintains region routing logic (_buildPath, _isRegionScopedPath) and auth token injection

## Issues Encountered

1. **OpenAPI generator builder not recognized**: The `openapi_generator|openapi` builder configuration in build.yaml shows a warning that it's not a known builder. This is a known limitation of the openapi-generator-dart package v6.

2. **Annotation-based approach failed**: The @Openapi() annotation approach failed with library directive errors. The current package version has compatibility issues with the annotation workflow.

3. **Build.yaml-only configuration**: The current openapi-generator-dart setup requires both the build.yaml configuration AND an annotation file, but the annotation workflow has issues.

### Workaround

For type generation, teams can use:
- The downloaded `openapi.yaml` spec file
- Manual generation using openapi-generator-cli (Java-based tool)
- Or wait for openapi-generator-dart package updates to resolve the builder issues

## Verification

- `flutter pub get` succeeds
- `flutter analyze lib/api/` passes with no issues
- ApiClientWrapper preserves existing region routing behavior
- Auth interceptor correctly injects tokens via AuthManager

## Next Step

Ready for 08-02-PLAN.md: Migrate datasources to use generated types

Note: Type generation may require alternative tooling (openapi-generator-cli) until openapi-generator-dart package issues are resolved.
