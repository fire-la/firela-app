// Openapi Generator last run: : 2026-03-17T11:59:22.522691
// ignore: unused_import
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

/// OpenAPI Generator Configuration
///
/// Usage:
///   flutter pub run build_runner build --delete-conflicting-outputs
///
/// This will generate types in lib/api/generated/ based on openapi.yaml
@Openapi(
  additionalProperties: AdditionalProperties(
    pubName: 'firela_api',
    pubAuthor: 'Firela Team',
    useEnumExtension: true,
    enumUnknownDefaultCase: true,
  ),
  // Use local spec file with InputSpec
  inputSpec: InputSpec(path: 'openapi.yaml'),
  // Generate Dio-based client
  generatorName: Generator.dio,
  outputDirectory: 'lib/api/generated',
  // Always regenerate when spec changes
  forceAlwaysRun: true,
  skipIfSpecIsUnchanged: true,
  fetchDependencies: true,
  // Disable nested build_runner to speed up generation
  runSourceGenOnOutput: false,
)
class ApiConfig {}