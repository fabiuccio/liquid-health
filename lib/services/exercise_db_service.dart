import 'dart:convert';

import 'package:http/http.dart' as http;

import '../core/constants/api_keys.dart';
import '../core/errors/app_exceptions.dart';
import '../models/exercise_db_entry.dart';

/// ExerciseDB (RapidAPI) client.
///
/// HTTP failures and invalid JSON throw [ExerciseDbException].
class ExerciseDbService {
  ExerciseDbService();

  static const String _host = 'exercisedb.p.rapidapi.com';

  Map<String, String> get _headers => <String, String>{
        'x-rapidapi-host': _host,
        'x-rapidapi-key': ApiKeys.exerciseDbApiKey,
      };

  /// Fetches up to [limit] exercises from the catalog.
  Future<List<ExerciseDbEntry>> fetchAll({int limit = 1300}) async {
    final Uri url = Uri.https(_host, '/exercises', <String, String>{
      'limit': '$limit',
    });
    try {
      final http.Response response = await http.get(url, headers: _headers);
      if (response.statusCode != 200) {
        throw ExerciseDbException(
          'ExerciseDB list failed: HTTP ${response.statusCode}',
        );
      }
      final Object? decoded = json.decode(response.body);
      if (decoded is! List<Object?>) {
        throw ExerciseDbException('ExerciseDB list: expected JSON array');
      }
      return decoded
          .map(
            (Object? e) => ExerciseDbEntry.fromJson(
              Map<String, dynamic>.from(e! as Map<Object?, Object?>),
            ),
          )
          .toList();
    } on ExerciseDbException {
      rethrow;
    } on Object catch (e, st) {
      throw ExerciseDbException('ExerciseDB list request failed', e, st);
    }
  }

  /// Searches exercises by name substring.
  Future<List<ExerciseDbEntry>> searchByName(String name) async {
    final Uri url = Uri.https(
      _host,
      '/exercises/name/${Uri.encodeComponent(name)}',
    );
    try {
      final http.Response response = await http.get(url, headers: _headers);
      if (response.statusCode != 200) {
        throw ExerciseDbException(
          'ExerciseDB search failed: HTTP ${response.statusCode}',
        );
      }
      final Object? decoded = json.decode(response.body);
      if (decoded is! List<Object?>) {
        throw ExerciseDbException('ExerciseDB search: expected JSON array');
      }
      return decoded
          .map(
            (Object? e) => ExerciseDbEntry.fromJson(
              Map<String, dynamic>.from(e! as Map<Object?, Object?>),
            ),
          )
          .toList();
    } on ExerciseDbException {
      rethrow;
    } on Object catch (e, st) {
      throw ExerciseDbException('ExerciseDB search request failed', e, st);
    }
  }

  /// Streaming GIF URL for a given ExerciseDB id (requires RapidAPI headers).
  String gifUrlForId(String id) {
    return 'https://$_host/image?exerciseId=$id&resolution=360';
  }
}
