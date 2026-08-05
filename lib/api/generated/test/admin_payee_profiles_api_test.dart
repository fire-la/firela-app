import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for AdminPayeeProfilesApi
void main() {
  final instance = FirelaApi().getAdminPayeeProfilesApi();

  group(AdminPayeeProfilesApi, () {
    // Create payee profile (Admin only)
    //
    // Creates a new global payee profile. The canonical name must be unique (case-insensitive).
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerCreate(CreatePayeeProfileDto createPayeeProfileDto) async
    test('test payeeProfileAdminControllerCreate', () async {
      // TODO
    });

    // Soft delete payee profile (Admin only)
    //
    // Marks a payee profile as inactive (soft delete). The profile cannot be deleted if it is referenced by user payees.
    //
    //Future payeeProfileAdminControllerDelete(String id) async
    test('test payeeProfileAdminControllerDelete', () async {
      // TODO
    });

    // List payee profiles (Admin only)
    //
    // Returns all payee profiles with optional filtering by category, country, verification status, etc.
    //
    //Future<PayeeProfileListResponseDto> payeeProfileAdminControllerFindAll({ String search, String category, String country, bool isActive, bool verified, String dataSource }) async
    test('test payeeProfileAdminControllerFindAll', () async {
      // TODO
    });

    // Get payee profile by ID (Admin only)
    //
    // Returns a single payee profile by its ID.
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerFindOne(String id) async
    test('test payeeProfileAdminControllerFindOne', () async {
      // TODO
    });

    // Unverify payee profile (Admin only)
    //
    // Removes verification status by setting verifiedAt to null.
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerUnverify(String id) async
    test('test payeeProfileAdminControllerUnverify', () async {
      // TODO
    });

    // Update payee profile (Admin only)
    //
    // Updates an existing payee profile. The canonical name cannot be changed.
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerUpdate(String id, UpdatePayeeProfileDto updatePayeeProfileDto) async
    test('test payeeProfileAdminControllerUpdate', () async {
      // TODO
    });

    // Verify payee profile (Admin only)
    //
    // Marks a payee profile as verified by setting verifiedAt to current timestamp.
    //
    //Future<PayeeProfileResponseDto> payeeProfileAdminControllerVerify(String id) async
    test('test payeeProfileAdminControllerVerify', () async {
      // TODO
    });

  });
}
