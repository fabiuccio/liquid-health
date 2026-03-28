import 'package:json_annotation/json_annotation.dart';

import 'json_map.dart';

/// Converts arbitrary JSON objects from API/DB into [JsonMap].
Object? jsonMapFromJson(Object? json) {
  if (json == null) {
    return null;
  }
  if (json is Map) {
    return json.map<String, Object?>(
      (Object? key, Object? value) =>
          MapEntry(key.toString(), _jsonValueFromJson(value)),
    );
  }
  throw FormatException('Expected JSON object, got ${json.runtimeType}');
}

Object? jsonMapToJson(Object? object) {
  if (object == null) {
    return null;
  }
  if (object is Map<String, Object?>) {
    return object.map<String, Object?>(
      (String key, Object? value) => MapEntry(key, _jsonValueToJson(value)),
    );
  }
  throw FormatException('Expected JsonMap, got ${object.runtimeType}');
}

Object? _jsonValueFromJson(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is Map) {
    return value.map<String, Object?>(
      (Object? k, Object? v) => MapEntry(k.toString(), _jsonValueFromJson(v)),
    );
  }
  if (value is List) {
    return value.map<Object?>(_jsonValueFromJson).toList();
  }
  if (value is num || value is String || value is bool) {
    return value;
  }
  return value.toString();
}

Object? _jsonValueToJson(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is Map<String, Object?>) {
    return value.map<String, Object?>(
      (String k, Object? v) => MapEntry(k, _jsonValueToJson(v)),
    );
  }
  if (value is List) {
    return value.map<Object?>((Object? e) => _jsonValueToJson(e)).toList();
  }
  if (value is num || value is String || value is bool) {
    return value;
  }
  return value.toString();
}

List<String> stringListFromJson(Object? json) {
  if (json == null) {
    return <String>[];
  }
  if (json is List) {
    return json.map((Object? e) => e.toString()).toList();
  }
  throw FormatException('Expected JSON array of strings');
}

Object? stringListToJson(List<String>? list) {
  return list;
}

DateTime? dateTimeFromJson(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null;
}

Object? dateTimeToJson(DateTime? value) {
  return value?.toIso8601String();
}

DateTime? dateOnlyFromJson(Object? value) {
  if (value == null) {
    return null;
  }
  if (value is String) {
    return DateTime.tryParse(value);
  }
  return null;
}

Object? dateOnlyToJson(DateTime? value) {
  if (value == null) {
    return null;
  }
  return '${value.year.toString().padLeft(4, '0')}-'
      '${value.month.toString().padLeft(2, '0')}-'
      '${value.day.toString().padLeft(2, '0')}';
}

/// json_serializable helper: [JsonMap] column.
class JsonMapConverter implements JsonConverter<JsonMap?, Object?> {
  const JsonMapConverter();

  @override
  JsonMap? fromJson(Object? json) {
    if (json == null) {
      return null;
    }
    final Object? converted = jsonMapFromJson(json);
    if (converted is JsonMap) {
      return converted;
    }
    if (converted is Map<String, Object?>) {
      return converted;
    }
    throw FormatException('Invalid JsonMap');
  }

  @override
  Object? toJson(JsonMap? object) => jsonMapToJson(object);
}
