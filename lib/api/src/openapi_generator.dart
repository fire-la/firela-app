// Openapi Generator last run: : 2026-04-14T03:12:40.117360
/// OpenAPI Generator entry point.
///
/// This class triggers code generation via `build_runner`.
/// The generated Dart API client will be placed in `lib/api/generated/`.
///
/// Usage:
///   flutter pub run build_runner build --delete-conflicting-outputs
///
/// The `build.yaml` provides additional properties (nullableFields,
/// useEnumExtension, enumUnknownDefaultCase) as builder defaults.
library;

import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'firela_api',
  ),
  inputSpec: InputSpec(path: 'lib/api/spec/openapi.yaml'),
  generatorName: Generator.dio,
  outputDirectory: 'lib/api/generated',
  skipSpecValidation: true,
)
class OpenApiConfig {}