import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanAccountStandardsApi
void main() {
  final instance = FirelaApi().getBeanAccountStandardsApi();

  group(BeanAccountStandardsApi, () {
    // Get available regions with hierarchy
    //
    // Returns supported regions with inheritance metadata
    //
    //Future<RegionsMetadataResponseDto> accountStandardsControllerGetRegions(String region) async
    test('test accountStandardsControllerGetRegions', () async {
      // TODO
    });

    // Get account templates
    //
    // Returns predefined account templates for a region. Supports filtering by account type and search term.
    //
    //Future<AccountStandardListResponseDto> accountStandardsControllerGetTemplates(String region, { String type, String search }) async
    test('test accountStandardsControllerGetTemplates', () async {
      // TODO
    });
  });
}
