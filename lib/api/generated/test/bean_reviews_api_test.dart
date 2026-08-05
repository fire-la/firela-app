import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BeanReviewsApi
void main() {
  final instance = FirelaApi().getBeanReviewsApi();

  group(BeanReviewsApi, () {
    // Batch resolve multiple reviews
    //
    //Future<BatchResolveResultDto> reviewControllerBatchResolve(String region, BatchResolveDto batchResolveDto) async
    test('test reviewControllerBatchResolve', () async {
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

    // Resolve a review item
    //
    //Future<ResolveResultDto> reviewControllerResolve(String id, String region, ResolveReviewDto resolveReviewDto) async
    test('test reviewControllerResolve', () async {
      // TODO
    });

    // Undo a resolution (within 24h)
    //
    //Future<UndoResultDto> reviewControllerUndo(String id, String region) async
    test('test reviewControllerUndo', () async {
      // TODO
    });

  });
}
