# firela_api.model.ProcessNlpDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Natural language text describing a transaction (Chinese) | 
**sessionId** | **String** | Session ID for multi-turn conversation (auto-generated if not provided) | [optional] 
**parsedData** | [**JsonObject**](.md) | Parsed data from previous NLP response for session recovery. Send back the parsedData received in confirm_payee/confirm responses. | [optional] 
**selectedRuleId** | **String** | confirm_rule echo-back: rule id selected from the prior confirm_rule response (matchedRule.id or alternatives[i].ruleId). Applied directly when the session is confirming_rule — no NL re-parse. | [optional] 
**selectedAccount** | **String** | confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i], or a typed path). Applied directly when the session is confirming_account — no NL re-parse. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


