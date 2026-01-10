import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:push_notification/model/push_notification_model.dart';
import 'package:push_notification/service/fcm_service.dart';
import 'package:push_notification/utils/app_print/app_print.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _token = "Fetching token...";
  final List<PushNotification> _notifications = [];

  @override
  void initState() {
    super.initState();
    _setupToken();

    // Listen for incoming messages to update UI list
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        AppPrint.info("data:${message.data} ");
        setState(() {
          _notifications.insert(
            0,
            PushNotification(
              title: message.notification?.title,
              body: message.notification?.body,
              data: message.data,
            ),
          );
        });
      }
    });
  }

  Future<void> _setupToken() async {
    String? token = await FCMService.getToken();
    setState(() {
      _token = token ?? "Error fetching token";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Push Notifications")),
      body: Column(
        children: [
          _buildTokenSection(),
          const Divider(),
          Expanded(child: _buildNotificationList()),
        ],
      ),
    );
  }

  Widget _buildTokenSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Device Token:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SelectableText(_token),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: _token));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Token copied to clipboard")),
              );
            },
            icon: const Icon(Icons.copy),
            label: const Text("Copy Token"),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationList() {
    if (_notifications.isEmpty) {
      return const Center(child: Text("No notifications received yet."));
    }

    return ListView.builder(
      itemCount: _notifications.length,
      itemBuilder: (context, index) {
        final notification = _notifications[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: const Icon(
              Icons.notifications_active,
              color: Colors.deepPurple,
            ),
            title: Text(notification.title ?? "No Title"),
            subtitle: Text(notification.body ?? "No Body"),
          ),
        );
      },
    );
  }
}


/**
 * 
 * Push Notification via :
 * - FCM token 
 * - Group FCM 
 * - Topic 
*/