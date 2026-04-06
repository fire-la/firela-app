import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for CommodityApi
void main() {
  final instance = FirelaApi().getCommodityApi();

  group(CommodityApi, () {
    // Bulk create commodities
    //
    // Create multiple commodities at once
    //
    //Future<CommodityListResponse> bulkCreateCommodities(String region, BulkCreateCommoditiesRequest bulkCreateCommoditiesRequest) async
    test('test bulkCreateCommodities', () async {
      // TODO
    });

    // Create commodity
    //
    // Create a new commodity/currency definition
    //
    //Future<CommodityResponse> createCommodity(String region, CreateCommodityRequest createCommodityRequest) async
    test('test createCommodity', () async {
      // TODO
    });

    // Delete commodity
    //
    // Delete a commodity definition
    //
    //Future deleteCommodity(String region, String symbol) async
    test('test deleteCommodity', () async {
      // TODO
    });

    // Get or create commodity
    //
    // Get existing commodity or create if not exists
    //
    //Future<CommodityResponse> ensureCommodity(String region, String symbol, EnsureCommodityRequest ensureCommodityRequest) async
    test('test ensureCommodity', () async {
      // TODO
    });

    // Get commodity
    //
    // Retrieve a specific commodity by symbol
    //
    //Future<CommodityResponse> getCommodity(String region, String symbol) async
    test('test getCommodity', () async {
      // TODO
    });

    // List commodities
    //
    // Retrieve all commodity definitions for the region
    //
    //Future<CommodityListResponse> listCommodities(String region) async
    test('test listCommodities', () async {
      // TODO
    });

    // Update commodity
    //
    // Update commodity properties
    //
    //Future<CommodityResponse> updateCommodity(String region, String symbol, UpdateCommodityRequest updateCommodityRequest) async
    test('test updateCommodity', () async {
      // TODO
    });
  });
}
