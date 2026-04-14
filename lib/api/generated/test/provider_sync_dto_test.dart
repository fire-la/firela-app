import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ProviderSyncDto
void main() {
  final instance = ProviderSyncDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ProviderSyncDto, () {
    // ProviderSyncConfigDto config
    test('to test the property `config`', () async {
      // TODO
    });

    // Raw transactions from provider
    // BuiltList transactions
    test('to test the property `transactions`', () async {
      // TODO
    });

    // Provider name (already in URL path, optional here for reference)
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // Unique sync identifier for idempotency
    // String syncId
    test('to test the property `syncId`', () async {
      // TODO
    });
  });
}
