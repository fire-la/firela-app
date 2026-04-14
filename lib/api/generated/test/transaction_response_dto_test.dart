import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for TransactionResponseDto
void main() {
  final instance = TransactionResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(TransactionResponseDto, () {
    // Database transaction ID
    // String transactionId
    test('to test the property `transactionId`', () async {
      // TODO
    });

    // Transaction date
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Transaction narration
    // String narration
    test('to test the property `narration`', () async {
      // TODO
    });

    // Transaction postings
    // BuiltList<PostingResponseDto> postings
    test('to test the property `postings`', () async {
      // TODO
    });

    // Whether interpolation was applied to balance the transaction
    // bool interpolated
    test('to test the property `interpolated`', () async {
      // TODO
    });

    // Whether booking (cost resolution) was applied
    // bool booked
    test('to test the property `booked`', () async {
      // TODO
    });

    // Account IDs auto-created for this transaction (empty for API source)
    // BuiltList<String> createdAccountIds
    test('to test the property `createdAccountIds`', () async {
      // TODO
    });

    // Idempotency key if provided during creation
    // String idempotencyKey
    test('to test the property `idempotencyKey`', () async {
      // TODO
    });

    // Transaction flag
    // String flag
    test('to test the property `flag`', () async {
      // TODO
    });

    // Payee name
    // String payee
    test('to test the property `payee`', () async {
      // TODO
    });

    // Non-blocking warnings from pipeline processing
    // BuiltList<String> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

    // RecurringSuggestionDto recurringSuggestion
    test('to test the property `recurringSuggestion`', () async {
      // TODO
    });
  });
}
