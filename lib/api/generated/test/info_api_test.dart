import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for InfoApi
void main() {
  final instance = FirelaApi().getInfoApi();

  group(InfoApi, () {
    // Get system information
    //
    //Future infoControllerGetInfo() async
    test('test infoControllerGetInfo', () async {
      // TODO
    });

  });
}
