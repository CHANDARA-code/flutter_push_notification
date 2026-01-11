import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:push_notification/model/analytic_model.dart';
import 'package:push_notification/service/analytics_service.dart';

class AdvancedAnalyticsScreen extends StatefulWidget {
  const AdvancedAnalyticsScreen({super.key});

  @override
  State<AdvancedAnalyticsScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<AdvancedAnalyticsScreen> {
  bool _isTrackingEnabled = true;

  void _simulateLogin() {
    // A. Identify the user (Identity)
    AnalyticsEngine().identifyUser('user_999');

    // B. Set a sticky user property (Segmentation)
    // This user will now be counted in the "Premium" audience in Firebase
    AnalyticsEngine().updateUserProperty(
      key: 'subscription_tier',
      value: 'platinum',
    );

    // C. Log the typed event (Taxonomy)
    AnalyticsEngine().log(LoginEvent(method: 'email_password'));

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("User Identified & Logged In")),
    );
  }

  void _simulatePurchase() {
    // Complex event with calculated values
    AnalyticsEngine().log(
      AddToCartEvent(
        productId: 'prod_555',
        productName: 'Super Widget',
        price: 49.99,
        quantity: 2,
      ),
    );

    AnalyticsEngine().log(
      PurchaseCompletedEvent(orderId: 'ORD-2024-888', total: 99.98),
    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Purchase Events Sent")));
  }

  void _togglePrivacy(bool value) {
    setState(() => _isTrackingEnabled = value);
    // D. Handle GDPR/Privacy compliance
    AnalyticsEngine().setConsent(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enterprise Analytics")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Consent Section
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Analytics Consent (GDPR)"),
                  Switch(value: _isTrackingEnabled, onChanged: _togglePrivacy),
                ],
              ),
            ),
            const Divider(height: 40),

            // Actions
            ElevatedButton.icon(
              icon: const Icon(Icons.login),
              label: const Text("Simulate User Login (Set ID + Props)"),
              onPressed: _simulateLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const Text("Simulate E-Commerce Purchase"),
              onPressed: _simulatePurchase,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                AnalyticsEngine().log(
                  ContentSharedEvent(
                    contentType: 'image',
                    contentId: 'img_sunset_01',
                  ),
                );
              },
              child: const Text("Share Content"),
            ),
          ],
        ),
      ),
    );
  }
}
