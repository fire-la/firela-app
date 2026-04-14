import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for UsersApi
void main() {
  final instance = FirelaApi().getUsersApi();

  group(UsersApi, () {
    // Delete own user account
    //
    //Future userControllerDeleteOwnUser(String region, DeleteOwnUserDto deleteOwnUserDto) async
    test('test userControllerDeleteOwnUser', () async {
      // TODO
    });

    // Delete user by ID (admin only)
    //
    //Future userControllerDeleteUser(String id, String region) async
    test('test userControllerDeleteUser', () async {
      // TODO
    });

    // Get all user settings paginated (admin only)
    //
    //Future userControllerGetAllUserSettingsByPage(num pageNo, num pageSize, String region) async
    test('test userControllerGetAllUserSettingsByPage', () async {
      // TODO
    });

    // Get asset and liability summary for current user
    //
    //Future userControllerGetAssetLiabilitySummary(String region) async
    test('test userControllerGetAssetLiabilitySummary', () async {
      // TODO
    });

    // Get current authenticated user
    //
    //Future userControllerGetUser(String acceptLanguage, String region) async
    test('test userControllerGetUser', () async {
      // TODO
    });

    // Get user info by user ID
    //
    //Future userControllerGetUserInfo(String id, String region) async
    test('test userControllerGetUserInfo', () async {
      // TODO
    });

    // Sign up new user
    //
    // Create a new account with auto-generated access token. Protected by Cloudflare Turnstile to prevent automated signup (when enabled).
    //
    //Future userControllerSignupUser(String region, SignupDto signupDto) async
    test('test userControllerSignupUser', () async {
      // TODO
    });

    // Update user settings
    //
    //Future userControllerUpdateUserSetting(String region, UpdateUserSettingDto updateUserSettingDto) async
    test('test userControllerUpdateUserSetting', () async {
      // TODO
    });
  });
}
