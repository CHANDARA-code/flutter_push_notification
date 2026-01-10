import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/my_app.dart';
import 'package:push_notification/service/fcm_service.dart';
import 'package:push_notification/service/local_notification_service.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // 2. Initialize Local Notifications (for foreground display)
  LocalNotificationService.initialize();

  // 3. Initialize FCM Service
  await FCMService.initialize();

  // 2. Catch Flutter Framework Errors (Fatal)
  // This catches errors in the widget tree (e.g., layout overflows, render errors).
  // These are often fatal to the specific widget rendering.
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // 3. Catch Asynchronous Errors (Fatal)
  // This catches errors outside the widget tree (e.g., inside onPressed, Futures, Streams).
  // We use PlatformDispatcher because runZonedGuarded is deprecated for this purpose in newer Flutter versions.
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true; // Return true to indicate the error has been handled
  };
  runApp(const MyApp());
}
