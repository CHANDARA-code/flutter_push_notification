import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:learn1/app_print.dart';
import '../firebase_options.dart';

// This must be a top-level function (not inside a class)
// It runs in a separate isolate when the app is terminated.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  AppPrint.info("Handling a background message: ${message.messageId}");

  // NOTE: You cannot update UI here directly.
  // You can schedule local notifications or perform data syncing.
}