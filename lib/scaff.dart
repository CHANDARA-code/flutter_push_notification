import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductGridDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductGridDemo extends StatelessWidget {
  final List<Product> products = [
    Product('Laptop', '\$999', Icons.laptop, Colors.blue),
    Product('Phone', '\$699', Icons.phone_android, Colors.green),
    Product('Tablet', '\$499', Icons.tablet, Colors.orange),
    Product('Watch', '\$299', Icons.watch, Colors.purple),
    Product('Headphones', '\$199', Icons.headphones, Colors.red),
    Product('Camera', '\$799', Icons.camera_alt, Colors.teal),
    Product('Speaker', '\$399', Icons.speaker, Colors.pink),
    Product('Monitor', '\$599', Icons.monitor, Colors.indigo),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catalog - GridView.extent'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Explanation banner
          // GridView.extent
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 200,    // Max tile width: 200px
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 16,        // horizontal spacing
              mainAxisSpacing: 16,         // vertical spacing
              childAspectRatio: 0.75,      // width:height ratio (portrait)
              children: products.map((product) {
                return ProductCard(product: product);
              }).toList(),
            ),
            ),
        ],
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final IconData icon;
  final Color color;

  Product(this.name, this.price, this.icon, this.color);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            product.icon,
            size: 60,
            color: product.color,
          ),
          SizedBox(height: 12),
          Text(
            product.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            product.price,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green[700],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}