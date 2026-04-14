import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for NlpResponseDto
void main() {
  final instance = NlpResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(NlpResponseDto, () {
    // Response status
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Action taken or requested
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields.
    // String intent
    test('to test the property `intent`', () async {
      // TODO
    });

    // Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render.
    // String assetSubType
    test('to test the property `assetSubType`', () async {
      // TODO
    });

    // Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities).
    // String liabilitySubType
    test('to test the property `liabilitySubType`', () async {
      // TODO
    });

    // Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction.
    // String equitySubType
    test('to test the property `equitySubType`', () async {
      // TODO
    });

    // Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\".
    // String paymentSource
    test('to test the property `paymentSource`', () async {
      // TODO
    });

    // Liability account type hint for credit card/BNPL spending (v6.1). Only present when paymentSource is \"liability\". Values: CreditCard, Huabei, Baitiao
    // String liabilityHint
    test('to test the property `liabilityHint`', () async {
      // TODO
    });

    // Human-readable message (for ask or error actions). Deprecated: Use messageKey for i18n support.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // i18n message key for frontend translation. Use this instead of message for internationalization support.
    // String messageKey
    test('to test the property `messageKey`', () async {
      // TODO
    });

    // Parameters for message interpolation. Used with messageKey for dynamic values in translated messages.
    // JsonObject messageParams
    test('to test the property `messageParams`', () async {
      // TODO
    });

    // Session ID for multi-turn dialogue. Must be included in subsequent requests to continue the conversation.
    // String sessionId
    test('to test the property `sessionId`', () async {
      // TODO
    });

    // Which slot is waiting for user input
    // String waitingFor
    test('to test the property `waitingFor`', () async {
      // TODO
    });

    // NlpTransactionInfoDto transaction
    test('to test the property `transaction`', () async {
      // TODO
    });

    // NlpParsedDataDto parsedData
    test('to test the property `parsedData`', () async {
      // TODO
    });

    // NlpDuplicateConfirmationDataDto duplicateData
    test('to test the property `duplicateData`', () async {
      // TODO
    });

    // NlpRuleConfirmationDataDto ruleData
    test('to test the property `ruleData`', () async {
      // TODO
    });

    // NlpAccountConfirmationDataDto accountData
    test('to test the property `accountData`', () async {
      // TODO
    });

    // NlpPayeeConfirmationDataDto payeeData
    test('to test the property `payeeData`', () async {
      // TODO
    });

    // Overall confidence score (0-1)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // Confidence threshold for automatic creation (default: 0.75). When confidence < threshold, action will be \"confirm\" requiring user verification.
    // num confidenceThreshold
    test('to test the property `confidenceThreshold`', () async {
      // TODO
    });

    // RecurringMatchInfoDto recurringMatch
    test('to test the property `recurringMatch`', () async {
      // TODO
    });

    // RecurringSuggestionDto recurringSuggestion
    test('to test the property `recurringSuggestion`', () async {
      // TODO
    });

    // NlpSuggestedAccountsDto suggestedAccounts
    test('to test the property `suggestedAccounts`', () async {
      // TODO
    });

    // NlpDefaultAccountsDto defaultAccounts
    test('to test the property `defaultAccounts`', () async {
      // TODO
    });
  });
}
