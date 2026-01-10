// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

// {
// "id": "1",
// "name": "Performance Laptop",
// "description": "A high-end laptop for professionals and gamers, featuring the latest CPU and GPU for unparalleled performance.",
// "price": 1499.99,
// "imageUrl": "https://cdn.mos.cms.futurecdn.net/FUi2wwNdyFSwShZZ7LaqWf.jpg",
// "stock": 7
// },

/*
4/3

1024 / 768


**/

class ProductWidget extends StatelessWidget {
  final ProductModel product;
  final Function(ProductModel product) onTap;
  const ProductWidget({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap(product);
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => ProductDetailScreen(productId: product.id),
            //   ),
            // );
          },
          child: Container(
            decoration: _buildBoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 170,
                  child: Image.network(product.image, fit: BoxFit.contain),
                ),

                Text(product.title, overflow: TextOverflow.clip, maxLines: 1),
                Text("Price: ${product.price}"),
                _buildBtnAddToCart(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBtnAddToCart() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12), // Clip ripple to match corners
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.add_shopping_cart, size: 18),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(255, 255, 255, 0.1),
          blurRadius: 1,
          spreadRadius: 0,
          offset: Offset(0, 1),
        ),
        BoxShadow(
          color: Color.fromRGBO(50, 50, 93, 0.25),
          blurRadius: 100,
          spreadRadius: -20,
          offset: Offset(0, 50),
        ),
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.3),
          blurRadius: 60,
          spreadRadius: -30,
          offset: Offset(0, 30),
        ),
      ],
    );
  }
}
