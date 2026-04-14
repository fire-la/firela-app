import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for AdminPayeeProfilesApi
void main() {
  final instance = FirelaApi().getAdminPayeeProfilesApi();

  group(AdminPayeeProfilesApi, () {
    //Future payeeProfileAdminController(String region) async
    test('test payeeProfileAdminController', () async {
      // TODO
    });

    // List payee profiles (Admin only)
    //
    // Returns all payee profiles with optional filtering by category, country, verification status, etc.
    //
    //Future<PayeeProfileListResponseDto> payeeProfileAdminControllerFindAll(String region, { String search, String category, String country, bool isActive, bool verified, String dataSource }) async
    test('test payeeProfileAdminControllerFindAll', () async {
      // TODO
    });

    // Get payee profile by ID (Admin only)
    //
    // Returns a single payee profile by its ID.
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerFindOne(String id, String region) async
    test('test payeeProfileAdminControllerFindOne', () async {
      // TODO
    });

    //Future payeeProfileAdminController_0(String region) async
    test('test payeeProfileAdminController_0', () async {
      // TODO
    });

    //Future payeeProfileAdminController_1(String region) async
    test('test payeeProfileAdminController_1', () async {
      // TODO
    });

    //Future payeeProfileAdminController_2(String region) async
    test('test payeeProfileAdminController_2', () async {
      // TODO
    });

    //Future payeeProfileAdminController_3(String region) async
    test('test payeeProfileAdminController_3', () async {
      // TODO
    });
  });
}
