import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ResolveResultDto
void main() {
  final instance = ResolveResultDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ResolveResultDto, () {
    // Whether resolution was successful
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // i18n message key for result message (e.g., review.payee.result.mapped)
    // String messageKey
    test('to test the property `messageKey`', () async {
      // TODO
    });

    // Parameters for message interpolation (e.g., { name: \"PayeeName\" })
    // BuiltMap<String, String> messageParams
    test('to test the property `messageParams`', () async {
      // TODO
    });

    // Resolution ID for undo. Absent when the resolver rejected the decision (review stayed PENDING).
    // String resolutionId
    test('to test the property `resolutionId`', () async {
      // TODO
    });

    // Whether this decision can be undone
    // bool canUndo
    test('to test the property `canUndo`', () async {
      // TODO
    });

    // Deadline for undo (24h from resolution)
    // DateTime undoDeadline
    test('to test the property `undoDeadline`', () async {
      // TODO
    });

    // Rule ID if learning was triggered (ACCEPT_AND_LEARN actions). Use this to deep-link to the rule management page.
    // String learnedRuleId
    test('to test the property `learnedRuleId`', () async {
      // TODO
    });

  });
}
