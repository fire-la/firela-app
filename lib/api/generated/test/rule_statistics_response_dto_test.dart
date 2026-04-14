import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for RuleStatisticsResponseDto
void main() {
  final instance = RuleStatisticsResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(RuleStatisticsResponseDto, () {
    // Statistics time period
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Total number of rules
    // num totalRules
    test('to test the property `totalRules`', () async {
      // TODO
    });

    // Number of rules with at least one match
    // num rulesWithMatches
    test('to test the property `rulesWithMatches`', () async {
      // TODO
    });

    // Total number of matches across all rules
    // num totalMatches
    test('to test the property `totalMatches`', () async {
      // TODO
    });

    // Average confidence score across all matches
    // num averageConfidence
    test('to test the property `averageConfidence`', () async {
      // TODO
    });

    // Per-rule statistics
    // BuiltList<RuleStatisticsResponseDtoRuleStatsInner> ruleStats
    test('to test the property `ruleStats`', () async {
      // TODO
    });
  });
}
