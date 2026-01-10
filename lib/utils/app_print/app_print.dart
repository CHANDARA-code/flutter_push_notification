import 'package:flutter/foundation.dart';

class AppPrint {
  static void success(String message) {
    if (kDebugMode) {
      print("🍀🍀🍀 $message");
    }
  }

  static void error(String message) {
    if (kDebugMode) {
      print("💥💥💥 $message");
    }
  }

  static void info(String message) {
    if (kDebugMode) {
      print("🧠🧠🧠 $message");
    }
  }
}
