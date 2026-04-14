import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for DefaultApi
void main() {
  final instance = FirelaApi().getDefaultApi();

  group(DefaultApi, () {
    //Future cacheControllerFlushCache(String region) async
    test('test cacheControllerFlushCache', () async {
      // TODO
    });
  });
}
