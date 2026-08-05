# firela_api.model.NlpResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Response status | 
**action** | **String** | Action taken or requested | 
**intent** | **String** | Transaction intent detected by EntityRouter (v6.0: 5 core intents). Frontend uses this to render scenario-specific form fields. | [optional] 
**assetSubType** | **String** | Asset sub-type (only present when intent is \"asset\"). Determines which asset-related form to render. | [optional] 
**liabilitySubType** | **String** | Liability sub-type (only present when intent is \"liability\"). borrow: borrowing money (Liabilities → Assets), repay: repaying debt (Assets → Liabilities). | [optional] 
**equitySubType** | **String** | Equity sub-type (only present when intent is \"equity\"). opening: account opening balance (Equity → Assets), adjustment: balance correction. | [optional] 
**paymentSource** | **String** | Payment source for expense transactions (v6.1). Indicates whether payment comes from asset or liability account. Only present when intent is \"expense\". | [optional] 
**liabilityHint** | **String** | Liability account type hint for credit card/BNPL spending (v6.1). Only present when paymentSource is \"liability\". Values: CreditCard, Huabei, Baitiao | [optional] 
**message** | **String** | Human-readable message (for ask or error actions). Deprecated: Use messageKey for i18n support. | [optional] 
**messageKey** | **String** | i18n message key for frontend translation. Use this instead of message for internationalization support. | [optional] 
**messageParams** | [**JsonObject**](.md) | Parameters for message interpolation. Used with messageKey for dynamic values in translated messages. | [optional] 
**sessionId** | **String** | Session ID for multi-turn dialogue. Must be included in subsequent requests to continue the conversation. | [optional] 
**waitingFor** | **String** | Which slot is waiting for user input | [optional] 
**transaction** | [**NlpTransactionInfoDto**](NlpTransactionInfoDto.md) |  | [optional] 
**parsedData** | [**NlpParsedDataDto**](NlpParsedDataDto.md) |  | [optional] 
**duplicateData** | [**NlpDuplicateConfirmationDataDto**](NlpDuplicateConfirmationDataDto.md) |  | [optional] 
**ruleData** | [**NlpRuleConfirmationDataDto**](NlpRuleConfirmationDataDto.md) |  | [optional] 
**accountData** | [**NlpAccountConfirmationDataDto**](NlpAccountConfirmationDataDto.md) |  | [optional] 
**payeeData** | [**NlpPayeeConfirmationDataDto**](NlpPayeeConfirmationDataDto.md) |  | [optional] 
**confidence** | **num** | Overall confidence score (0-1) | [optional] 
**confidenceThreshold** | **num** | Confidence threshold for automatic creation (default: 0.75). When confidence < threshold, action will be \"confirm\" requiring user verification. | [optional] 
**recurringMatch** | [**RecurringMatchInfoDto**](RecurringMatchInfoDto.md) |  | [optional] 
**recurringSuggestion** | [**RecurringSuggestionDto**](RecurringSuggestionDto.md) |  | [optional] 
**suggestedAccounts** | [**NlpSuggestedAccountsDto**](NlpSuggestedAccountsDto.md) |  | [optional] 
**defaultAccounts** | [**NlpDefaultAccountsDto**](NlpDefaultAccountsDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


