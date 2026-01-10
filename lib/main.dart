import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
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
  runApp(const MyApp());
}
