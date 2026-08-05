import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BeanTransactionRulesApi
void main() {
  final instance = FirelaApi().getBeanTransactionRulesApi();

  group(BeanTransactionRulesApi, () {
    // Bulk create transaction rules
    //
    //Future<BulkCreateRulesResponseDto> transactionRuleControllerBulkCreate(String region, BulkCreateRulesDto bulkCreateRulesDto) async
    test('test transactionRuleControllerBulkCreate', () async {
      // TODO
    });

    // Create a new transaction rule (or upsert if upsertByPayee=true)
    //
    // Creates a new rule. If upsertByPayee=true, updates existing rule matching payeeKeywords[0] instead of creating duplicate.
    //
    //Future<TransactionRuleResponseDto> transactionRuleControllerCreate(String region, CreateTransactionRuleDto createTransactionRuleDto) async
    test('test transactionRuleControllerCreate', () async {
      // TODO
    });

    // Delete a transaction rule
    //
    //Future transactionRuleControllerDelete(String ruleId, String region) async
    test('test transactionRuleControllerDelete', () async {
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

    // Update a transaction rule
    //
    //Future<TransactionRuleResponseDto> transactionRuleControllerUpdate(String ruleId, String region, UpdateTransactionRuleDto updateTransactionRuleDto) async
    test('test transactionRuleControllerUpdate', () async {
      // TODO
    });

    // Validate transaction rule configuration
    //
    //Future<ValidateRuleResponseDto> transactionRuleControllerValidate(String region, ValidateRuleDto validateRuleDto) async
    test('test transactionRuleControllerValidate', () async {
      // TODO
    });

  });
}
