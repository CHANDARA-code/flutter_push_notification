import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final int productId;
  const ProductDetailScreen({super.key, required this.productId});
  // https://fakestoreapi.com/products/1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product ID: $productId")),
      body: Column(children: [Text("hello product detial")]),
    );
  }
}
