import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for AuthApi
void main() {
  final instance = FirelaApi().getAuthApi();

  group(AuthApi, () {
    // Anonymous login with access token
    //
    //Future authControllerAccessTokenLogin(String region, AnonymousLoginDto anonymousLoginDto) async
    test('test authControllerAccessTokenLogin', () async {
      // TODO
    });
  });
}
