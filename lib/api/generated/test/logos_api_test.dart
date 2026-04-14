import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for LogosApi
void main() {
  final instance = FirelaApi().getLogosApi();

  group(LogosApi, () {
    // Get asset logo by data source and symbol
    //
    //Future logoControllerGetLogoByDataSourceAndSymbol(String dataSource, String symbol, String region) async
    test('test logoControllerGetLogoByDataSourceAndSymbol', () async {
      // TODO
    });

    // Get website favicon by URL
    //
    //Future logoControllerGetLogoByUrl(String url, String region) async
    test('test logoControllerGetLogoByUrl', () async {
      // TODO
    });
  });
}
