import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/my_app.dart';
import 'package:push_notification/utils/app_print/app_print.dart';
import 'service/fcm_serivice.dart';
import 'package:push_notification/service/local_notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  LocalNotificationService.initialize();
  await FCMService.initialize();

  runApp(const MyApp());
}
