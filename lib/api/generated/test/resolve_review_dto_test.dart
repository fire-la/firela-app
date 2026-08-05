import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ResolveReviewDto
void main() {
  final instance = ResolveReviewDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ResolveReviewDto, () {
    // Decision action. Valid actions vary by review type — see DecisionOptionDto.value returned by the review detail endpoint.
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // Additional data for the decision (e.g., selected account ID)
    // JsonObject data
    test('to test the property `data`', () async {
      // TODO
    });

  });
}
