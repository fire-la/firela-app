import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanCommoditiesApi
void main() {
  final instance = FirelaApi().getBeanCommoditiesApi();

  group(BeanCommoditiesApi, () {
    //Future commodityController(String region) async
    test('test commodityController', () async {
      // TODO
    });

    // List user commodities
    //
    // Returns all commodity definitions for the authenticated user with optional filtering
    //
    //Future<CommodityListResponseDto> commodityControllerFindAll(String region, { String search, String symbol }) async
    test('test commodityControllerFindAll', () async {
      // TODO
    });

    // Get commodity by symbol
    //
    // Returns a specific commodity definition by its symbol
    //
    //Future<CommodityResponseDto> commodityControllerFindOne(String symbol, String region) async
    test('test commodityControllerFindOne', () async {
      // TODO
    });

    //Future commodityController_0(String region) async
    test('test commodityController_0', () async {
      // TODO
    });

    //Future commodityController_1(String region) async
    test('test commodityController_1', () async {
      // TODO
    });

    //Future commodityController_2(String region) async
    test('test commodityController_2', () async {
      // TODO
    });

    //Future commodityController_3(String region) async
    test('test commodityController_3', () async {
      // TODO
    });
  });
}
