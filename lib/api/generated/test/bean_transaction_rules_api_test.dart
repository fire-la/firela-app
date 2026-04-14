import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanTransactionRulesApi
void main() {
  final instance = FirelaApi().getBeanTransactionRulesApi();

  group(BeanTransactionRulesApi, () {
    //Future transactionRuleController(String region) async
    test('test transactionRuleController', () async {
      // TODO
    });

    // Export transaction rules
    //
    //Future<ExportRulesResponseDto> transactionRuleControllerExport(String format, String region) async
    test('test transactionRuleControllerExport', () async {
      // TODO
    });

    // Get transaction rule detail
    //
    //Future<TransactionRuleResponseDto> transactionRuleControllerGetDetail(String ruleId, String region) async
    test('test transactionRuleControllerGetDetail', () async {
      // TODO
    });

    // Get transaction rule statistics
    //
    //Future<RuleStatisticsResponseDto> transactionRuleControllerGetStatistics(String period, String region) async
    test('test transactionRuleControllerGetStatistics', () async {
      // TODO
    });

    // Get all transaction rules for user
    //
    //Future<TransactionRuleListResponseDto> transactionRuleControllerList(String region, { num limit, num offset, bool enabled, String learningSource, bool autoApplyEnabled }) async
    test('test transactionRuleControllerList', () async {
      // TODO
    });

    // Test rule matching
    //
    //Future<TestRuleResponseDto> transactionRuleControllerTest(String ruleId, String region, TestRuleDto testRuleDto) async
    test('test transactionRuleControllerTest', () async {
      // TODO
    });

    // Validate transaction rule configuration
    //
    //Future<ValidateRuleResponseDto> transactionRuleControllerValidate(String region, ValidateRuleDto validateRuleDto) async
    test('test transactionRuleControllerValidate', () async {
      // TODO
    });

    //Future transactionRuleController_0(String region) async
    test('test transactionRuleController_0', () async {
      // TODO
    });

    //Future transactionRuleController_1(String region) async
    test('test transactionRuleController_1', () async {
      // TODO
    });

    //Future transactionRuleController_2(String region) async
    test('test transactionRuleController_2', () async {
      // TODO
    });
  });
}
