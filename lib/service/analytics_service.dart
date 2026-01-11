import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:push_notification/model/analytic_model.dart';

class AnalyticsEngine {
  // Singleton instance
  static final AnalyticsEngine _instance = AnalyticsEngine._internal();
  factory AnalyticsEngine() => _instance;
  AnalyticsEngine._internal();

  final FirebaseAnalytics _firebase = FirebaseAnalytics.instance;

  /// 1. Initialization with Global Defaults
  /// Call this when the app starts to set baseline data (e.g., App Version, Platform)
  Future<void> initialize() async {
    // Set default parameters that are sent with EVERY event
    // Useful for filtering dashboard by build number or custom release streams
    await _firebase.setDefaultEventParameters({
      'platform_os': defaultTargetPlatform.name,
      'app_version': '1.0.2', // dynamic in real apps
      'build_number': 45,
    });
  }

  /// 2. The Core Logging Method
  /// Notice it accepts our abstract 'AppEvent' class, not random strings.
  Future<void> log(AppEvent event) async {
    try {
      await _firebase.logEvent(name: event.name, parameters: event.parameters);
      debugPrint('📊 ANALYTICS: ${event.name} params: ${event.parameters}');
    } catch (e) {
      debugPrint('🔴 ANALYTICS ERROR: $e');
    }
  }

  /// 3. User Segmentation (User Properties)
  /// These are sticky tags attached to the user, not just a single event.
  /// Example: 'tier': 'premium', 'favorite_genre': 'sci-fi'
  Future<void> updateUserProperty({
    required String key,
    required String? value,
  }) async {
    await _firebase.setUserProperty(name: key, value: value);
  }

  /// 4. Identity Management
  Future<void> identifyUser(String userId) async {
    await _firebase.setUserId(id: userId);
  }

  Future<void> logout() async {
    await _firebase.setUserId(id: null);
    await _firebase.setUserProperty(name: 'user_type', value: null);
  }

  /// 5. Privacy & Consent (GDPR/CCPA)
  /// If a user declines tracking, we disable analytics collection immediately.
  Future<void> setConsent(bool granted) async {
    await _firebase.setAnalyticsCollectionEnabled(granted);
    debugPrint('🔒 Analytics Consent set to: $granted');
  }

  // Expose observer for Navigator
  FirebaseAnalyticsObserver get observer =>
      FirebaseAnalyticsObserver(analytics: _firebase);
}
