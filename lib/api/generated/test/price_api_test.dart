import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for PriceApi
void main() {
  final instance = FirelaApi().getPriceApi();

  group(PriceApi, () {
    // Bulk create prices
    //
    // Create multiple price quotes at once
    //
    //Future<PriceListResponse> bulkCreatePrices(String region, BulkCreatePricesRequest bulkCreatePricesRequest) async
    test('test bulkCreatePrices', () async {
      // TODO
    });

    // Create price
    //
    // Create a new price quote
    //
    //Future<PriceResponse> createPrice(String region, CreatePriceRequest createPriceRequest) async
    test('test createPrice', () async {
      // TODO
    });

    // Delete price
    //
    // Delete a price quote
    //
    //Future deletePrice(String region, String id) async
    test('test deletePrice', () async {
      // TODO
    });

    // Get price
    //
    // Retrieve a specific price quote by ID
    //
    //Future<PriceResponse> getPrice(String region, String id) async
    test('test getPrice', () async {
      // TODO
    });

    // List prices
    //
    // Retrieve all price quotes for the region
    //
    //Future<PriceListResponse> listPrices(String region) async
    test('test listPrices', () async {
      // TODO
    });

    // Update price
    //
    // Update a price quote
    //
    //Future<PriceResponse> updatePrice(String region, String id, UpdatePriceRequest updatePriceRequest) async
    test('test updatePrice', () async {
      // TODO
    });
  });
}
