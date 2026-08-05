import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for OnboardingApi
void main() {
  final instance = FirelaApi().getOnboardingApi();

  group(OnboardingApi, () {
    // Bootstrap core accounts + register asset accounts with opening balances (ADR-0113)
    //
    //Future onboardingControllerBootstrap(String region, OnboardingDto onboardingDto) async
    test('test onboardingControllerBootstrap', () async {
      // TODO
    });

  });
}
