import 'package:flutter/material.dart';
import 'package:push_notification/my_app.dart';
import 'package:push_notification/screens/product_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // 1. Get the URL/Path
    // settings.name will be the full link (e.g., "myapp://product/123" or "/product/123")
    final uri = Uri.parse(settings.name ?? '/');

    // 2. Handle Home Route ("/" or empty)
    if (uri.path == '/' || uri.path.isEmpty) {
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    }

    // 3. Handle "/product/:id"
    // Checks if the first segment is 'product' and allows for a second segment (ID)
    if (uri.pathSegments.length == 2 && uri.pathSegments.first == 'product') {
      final id = uri.pathSegments[1];
      return MaterialPageRoute(builder: (_) => ProductScreen(productId: id));
    }

    // 4. Fallback / 404
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),
    );
  }
}
