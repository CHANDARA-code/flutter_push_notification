import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:push_notification/utils/app_print/app_print.dart';
import 'local_notification_service.dart';
import 'background_handler.dart';

class FCMService {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static Future<void> initialize() async {
    // 1. Request Permissions (Critical for iOS)
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      AppPrint.info('User granted permission');
    } else {
      AppPrint.info('User declined or has not accepted permission');
      return;
    }

    // 2. Set Background Handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    // 3. Handle Foreground Messages
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      AppPrint.info('Got a message whilst in the foreground!');
      AppPrint.info('Message data: ${message.data}');

      if (message.notification != null) {
        AppPrint.info(
          'Message also contained a notification: ${message.notification}',
        );

        // Show local notification so the user sees a banner
        LocalNotificationService.display(message);
      }
    });

    // 4. Handle when App is opened from a terminated state
    FirebaseMessaging.instance.getInitialMessage().then((
      RemoteMessage? message,
    ) {
      if (message != null) {
        AppPrint.info("App opened from terminated state by notification");
        // Navigate to specific screen if needed
      }
    });

    // 5. Handle when App is opened from background state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      AppPrint.info("App opened from background by notification");
      // Navigate to specific screen if needed
    });
  }

  static Future<String?> getToken() async {
    try {
      String? token = await _firebaseMessaging.getToken(); // FCM Token 
      if (kDebugMode) {
        AppPrint.info("FCM Token: $token");
      }
      return token;
    } catch (e) {
      AppPrint.info("Error getting token: $e");
      return null;
    }
  }
}
