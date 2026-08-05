import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for ExternalAccountLinksApi
void main() {
  final instance = FirelaApi().getExternalAccountLinksApi();

  group(ExternalAccountLinksApi, () {
    // Create an external account → BeanAccount mapping (ADR-0113)
    //
    //Future<ExternalAccountLinkResponseDto> externalAccountLinkControllerCreate(String region, CreateExternalAccountLinkDto createExternalAccountLinkDto) async
    test('test externalAccountLinkControllerCreate', () async {
      // TODO
    });

    // List the user's active external account links
    //
    //Future<ExternalAccountLinkListResponseDto> externalAccountLinkControllerFindAll(String provider, String region) async
    test('test externalAccountLinkControllerFindAll', () async {
      // TODO
    });

    // Get a single external account link
    //
    //Future<ExternalAccountLinkResponseDto> externalAccountLinkControllerFindOne(String id, String region) async
    test('test externalAccountLinkControllerFindOne', () async {
      // TODO
    });

    // Soft-delete (disconnect) an external account link
    //
    //Future externalAccountLinkControllerRemove(String id, String region) async
    test('test externalAccountLinkControllerRemove', () async {
      // TODO
    });

  });
}
