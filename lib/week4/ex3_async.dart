// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// Future<void> main() async {
//   print("___ 🧺 Reading Items… ___\n");
//
//   // API links
//   final urls = [
//     "https://fakestoreapi.com/products/1",
//     "https://fakestoreapi.com/products/5",
//     "https://fakestoreapi.com/products/10",
//   ];
//
//   double grandTotal = 0.0;
//   List<Map<String, dynamic>> items = [];
//
//   // Fetch and decode each product
//   for (var url in urls) {
//     final response = await http.get(Uri.parse(url));
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//
//       final title = data['title'];
//       final price = (data['price'] as num).toDouble();
//
//       items.add({"title": title, "price": price});
//       grandTotal += price;
//     } else {
//       print("Failed to load: $url");
//     }
//   }
//
//   // Print Cart
//   print("___ 🧺 YOUR CART ___\n");
//
//   for (var item in items) {
//     print("- ${item['title']}");
//     print("  Price: \$${item['price']}\n");
//   }
//
//   print("------------------------------");
//   print("✅ CHECKOUT COMPLETE");
//   print("💰 GRAND TOTAL: \$${grandTotal.toStringAsFixed(2)}");
// }


