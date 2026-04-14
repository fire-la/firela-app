import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for ProviderSyncApi
void main() {
  final instance = FirelaApi().getProviderSyncApi();

  group(ProviderSyncApi, () {
    // Get supported providers
    //
    // Returns a list of all providers supported by the sync endpoint.
    //
    //Future<SupportedProvidersResponseDto> providerSyncControllerGetSupportedProviders(String region) async
    test('test providerSyncControllerGetSupportedProviders', () async {
      // TODO
    });

    // Check if provider is supported
    //
    // Returns whether a specific provider is supported.
    //
    //Future providerSyncControllerIsProviderSupported(String providerName, String region) async
    test('test providerSyncControllerIsProviderSupported', () async {
      // TODO
    });

    // Sync transactions from financial data provider
    //
    //  Accepts raw transactions from external financial data providers, transforms them to Beancount format, and processes them through the ingestion pipeline.  **Supported Providers:** - **plaid**: Plaid API (US, Canada, Europe) - **teller**: Teller API (US) - **truelayer**: TrueLayer Open Banking (UK, Europe) - **gocardless**: GoCardless Bank Account Data (Europe) - **simplefin**: SimpleFIN (Self-hosted) - **yodlee**: Yodlee (Global) - **beancount-direct**: Beancount format transactions  **Processing Flow:** 1. Transform raw data via provider adapter 2. Validate transaction format 3. Deduplicate using originalId 4. Classify using rule engine 5. Route low-confidence to Review Center 6. Persist validated transactions
    //
    //Future<ProviderSyncResponseDto> providerSyncControllerSync(String providerName, JsonObject region, ProviderSyncDto providerSyncDto) async
    test('test providerSyncControllerSync', () async {
      // TODO
    });
  });
}
