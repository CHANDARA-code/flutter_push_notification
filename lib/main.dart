import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:learn1/service/fcm_service.dart';
import 'package:learn1/service/local_notification_service.dart';
import 'package:learn1/week8/my_app.dart';

import 'firebase_options.dart';

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