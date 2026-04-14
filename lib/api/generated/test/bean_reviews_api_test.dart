import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanReviewsApi
void main() {
  final instance = FirelaApi().getBeanReviewsApi();

  group(BeanReviewsApi, () {
    //Future reviewController(String region) async
    test('test reviewController', () async {
      // TODO
    });

    // List pending reviews
    //
    //Future<ReviewListResponseDto> reviewControllerFindAll(String region, { String type, String confidenceLevel, String sortBy, num page, num limit }) async
    test('test reviewControllerFindAll', () async {
      // TODO
    });

    // Get review by ID
    //
    //Future<ReviewDetailDto> reviewControllerFindOne(String id, String region) async
    test('test reviewControllerFindOne', () async {
      // TODO
    });

    // Get review statistics
    //
    //Future<ReviewStatsDto> reviewControllerGetStats(String region) async
    test('test reviewControllerGetStats', () async {
      // TODO
    });

    //Future reviewController_0(String region) async
    test('test reviewController_0', () async {
      // TODO
    });

    //Future reviewController_1(String region) async
    test('test reviewController_1', () async {
      // TODO
    });
  });
}
