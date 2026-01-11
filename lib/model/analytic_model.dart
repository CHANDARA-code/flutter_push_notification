/// Base class for all analytics events
abstract class AppEvent {
  String get name;
  Map<String, Object>? get parameters;
}

// ==========================================
// 1. Authentication Events
// ==========================================

class LoginEvent extends AppEvent {
  final String method; // e.g., 'email', 'google', 'apple'

  LoginEvent({required this.method});

  @override
  String get name => 'login_success';

  @override
  Map<String, Object> get parameters => {
    'method': method,
    'timestamp': DateTime.now().toIso8601String(),
  };
}

// ==========================================
// 2. E-Commerce / Conversion Events
// ==========================================

class AddToCartEvent extends AppEvent {
  final String productId;
  final String productName;
  final double price;
  final int quantity;

  AddToCartEvent({
    required this.productId,
    required this.productName,
    required this.price,
    required this.quantity,
  });

  @override
  String get name => 'add_to_cart';

  @override
  Map<String, Object> get parameters => {
    'item_id': productId,
    'item_name': productName,
    'value': price * quantity,
    'currency': 'USD',
    'quantity': quantity,
  };
}

class PurchaseCompletedEvent extends AppEvent {
  final String orderId;
  final double total;

  PurchaseCompletedEvent({required this.orderId, required this.total});

  @override
  String get name => 'purchase';

  @override
  Map<String, Object> get parameters => {
    'transaction_id': orderId,
    'value': total,
    'currency': 'USD',
  };
}

// ==========================================
// 3. User Behavior Events
// ==========================================

class ContentSharedEvent extends AppEvent {
  final String contentType; // 'article', 'image'
  final String contentId;

  ContentSharedEvent({required this.contentType, required this.contentId});

  @override
  String get name => 'share';

  @override
  Map<String, Object> get parameters => {
    'content_type': contentType,
    'item_id': contentId,
  };
}
