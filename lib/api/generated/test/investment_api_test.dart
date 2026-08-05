import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for InvestmentApi
void main() {
  final instance = FirelaApi().getInvestmentApi();

  group(InvestmentApi, () {
    // Get per-holding unrealized + realized P&L
    //
    // Average-cost unrealized P&L per account × commodity, plus cumulative realized P&L on sold lots (method = FIFO | average, default average).
    //
    //Future<HoldingPnlResponseDto> holdingPnlControllerGetHoldingPnl(String region, { String asOf, String accountId, String method }) async
    test('test holdingPnlControllerGetHoldingPnl', () async {
      // TODO
    });

  });
}
