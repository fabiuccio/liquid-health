import 'package:google_generative_ai/google_generative_ai.dart';

import '../core/constants/api_keys.dart';
import '../core/errors/app_exceptions.dart';
import '../models/user_profile.dart';

/// Google Gemini API wrapper for plan generation and coaching prompts.
///
/// All network/model failures surface as [GeminiServiceException].
class GeminiService {
  GeminiService()
      : _model = GenerativeModel(
          model: 'gemini-1.5-flash',
          apiKey: ApiKeys.geminiApiKey,
          generationConfig: GenerationConfig(
            responseMimeType: 'application/json',
          ),
        );

  final GenerativeModel _model;

  /// Placeholder for adaptive plan generation from a [UserProfile].
  ///
  /// Implement prompt construction and JSON parsing in a later phase.
  Future<String> generatePlanPlaceholder(UserProfile profile) async {
    try {
      final List<Content> content = <Content>[
        Content.text(
          'Acknowledge this profile JSON for a future training plan: '
          '${profile.toJson()}',
        ),
      ];
      final GenerateContentResponse response = await _model.generateContent(
        content,
      );
      final String? text = response.text;
      if (text == null || text.isEmpty) {
        throw GeminiServiceException('Gemini returned empty text');
      }
      return text;
    } on GenerativeAIException catch (e, st) {
      throw GeminiServiceException(e.message, e, st);
    } on Object catch (e, st) {
      throw GeminiServiceException('Gemini request failed', e, st);
    }
  }
}
