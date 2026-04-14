import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanNLPApi
void main() {
  final instance = FirelaApi().getBeanNLPApi();

  group(BeanNLPApi, () {
    // Clear dialogue session
    //
    // Clear the current NLP dialogue session. Use this to cancel an ongoing multi-turn dialogue.
    //
    //Future nlpControllerClearSession(String region, { String sessionId }) async
    test('test nlpControllerClearSession', () async {
      // TODO
    });

    // Get current session state
    //
    // Get the current NLP dialogue session state. Useful for debugging and displaying session context in UI.
    //
    //Future nlpControllerGetSession(String region, { String sessionId }) async
    test('test nlpControllerGetSession', () async {
      // TODO
    });

    // Process natural language input
    //
    // Parse natural language text (Chinese/English) describing a transaction. Supports multi-turn dialogue for collecting missing information. When confidence < 0.75, returns \"confirm\" action requiring user verification. User can reply with confirmation words (确认/yes/ok) or provide corrections. Examples: \"yesterday Starbucks spent 35 yuan\", \"today lunch 28 yuan\", \"spent $50 at Walmart\"
    //
    //Future<NlpResponseDto> nlpControllerProcessNaturalLanguage(String region, ProcessNlpDto processNlpDto) async
    test('test nlpControllerProcessNaturalLanguage', () async {
      // TODO
    });
  });
}
