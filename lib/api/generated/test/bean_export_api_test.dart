import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BeanExportApi
void main() {
  final instance = FirelaApi().getBeanExportApi();

  group(BeanExportApi, () {
    // Export Beancount ledger as ZIP
    //
    // Export all user Beancount data as a ZIP file containing ledger.beancount and yearly files in community format.
    //
    //Future exportControllerExportBeancount() async
    test('test exportControllerExportBeancount', () async {
      // TODO
    });

  });
}
