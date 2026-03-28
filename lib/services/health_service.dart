import 'package:flutter/foundation.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

import '../core/errors/app_exceptions.dart';

/// Health Connect (Android) / HealthKit (iOS) read access.
///
/// Permission and read failures throw [HealthServiceException].
class HealthService {
  HealthService() : _health = Health();

  final Health _health;

  static final List<HealthDataType> _types = <HealthDataType>[
    HealthDataType.STEPS,
    HealthDataType.HEART_RATE,
    HealthDataType.SLEEP_ASLEEP,
    HealthDataType.SLEEP_AWAKE,
    HealthDataType.SLEEP_REM,
    HealthDataType.SLEEP_DEEP,
    HealthDataType.SLEEP_LIGHT,
    HealthDataType.ACTIVE_ENERGY_BURNED,
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataType.BASAL_ENERGY_BURNED,
    HealthDataType.WORKOUT,
  ];

  /// Requests authorization for the configured [HealthDataType] set.
  ///
  /// Returns `true` when authorization is granted, `false` when denied without
  /// a platform error. Throws [HealthServiceException] on unexpected failures.
  Future<bool> requestPermissions() async {
    try {
      if (defaultTargetPlatform == TargetPlatform.android) {
        await Permission.activityRecognition.request();
      }
      await _health.configure();
      final bool granted = await _health.requestAuthorization(_types);
      if (granted && defaultTargetPlatform == TargetPlatform.android) {
        try {
          await _health.requestHealthDataHistoryAuthorization();
        } on Object catch (e, st) {
          throw HealthServiceException(
            'Health Connect history authorization failed',
            e,
            st,
          );
        }
      }
      return granted;
    } on HealthServiceException {
      rethrow;
    } on Object catch (e, st) {
      throw HealthServiceException('Health permission request failed', e, st);
    }
  }

  /// Fetches HRV samples for the last seven days.
  Future<List<HealthDataPoint>> fetchHrvLastWeek() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime start = now.subtract(const Duration(days: 7));
      return _health.getHealthDataFromTypes(
        startTime: start,
        endTime: now,
        types: <HealthDataType>[HealthDataType.HEART_RATE_VARIABILITY_RMSSD],
      );
    } on Object catch (e, st) {
      throw HealthServiceException('Failed to read HRV', e, st);
    }
  }

  /// Fetches sleep segments for the last 24 hours.
  Future<List<HealthDataPoint>> fetchSleepLastDay() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime start = now.subtract(const Duration(days: 1));
      return _health.getHealthDataFromTypes(
        startTime: start,
        endTime: now,
        types: <HealthDataType>[
          HealthDataType.SLEEP_ASLEEP,
          HealthDataType.SLEEP_AWAKE,
          HealthDataType.SLEEP_REM,
          HealthDataType.SLEEP_DEEP,
          HealthDataType.SLEEP_LIGHT,
        ],
      );
    } on Object catch (e, st) {
      throw HealthServiceException('Failed to read sleep', e, st);
    }
  }

  /// Total steps for today, or `null` if unavailable.
  Future<int?> fetchTodaySteps() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime start = DateTime(now.year, now.month, now.day);
      return _health.getTotalStepsInInterval(start, now);
    } on Object catch (e, st) {
      throw HealthServiceException('Failed to read steps', e, st);
    }
  }

  /// Sums active and total energy for today (best-effort).
  Future<double> fetchTodayCalories() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime start = DateTime(now.year, now.month, now.day);
      final List<HealthDataPoint> data = await _health.getHealthDataFromTypes(
        startTime: start,
        endTime: now,
        types: <HealthDataType>[
          HealthDataType.ACTIVE_ENERGY_BURNED,
          HealthDataType.TOTAL_CALORIES_BURNED,
          HealthDataType.BASAL_ENERGY_BURNED,
        ],
      );
      double total = 0;
      for (final HealthDataPoint point in data) {
        final HealthValue value = point.value;
        if (value is NumericHealthValue) {
          total += value.numericValue.toDouble();
        }
      }
      return total;
    } on Object catch (e, st) {
      throw HealthServiceException('Failed to read calories', e, st);
    }
  }

  /// Workout activities from the last seven days.
  Future<List<HealthDataPoint>> fetchRecentWorkouts() async {
    try {
      final DateTime now = DateTime.now();
      final DateTime start = now.subtract(const Duration(days: 7));
      return _health.getHealthDataFromTypes(
        startTime: start,
        endTime: now,
        types: <HealthDataType>[HealthDataType.WORKOUT],
      );
    } on Object catch (e, st) {
      throw HealthServiceException('Failed to read workouts', e, st);
    }
  }
}
