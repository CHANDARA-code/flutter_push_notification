import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<List<ProductModel>?> productNotifier =
      ValueNotifier<List<ProductModel>?>(null);

  ValueNotifier<bool> isLoadingNotifier = ValueNotifier<bool>(true);

  ValueNotifier<int> countPlusNotifier = ValueNotifier(0);
  int count = 0;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  /*

- handle loading
- handle success 
- handle error 
- handle success => result empty 

**/
  _fetchProducts() async {
    print(" _fetchProducts => ${DateTime.now()}");
    //Initial State:

    isLoadingNotifier.value = true;
    productNotifier.value = null;

    // Calling API
    final uri = Uri.parse("https://fakestoreapi.com/products");
    final response = await http.get(uri);
    if (response.statusCode != 200) return;

    //Mapping Data from API
    isLoadingNotifier.value = false;
    final result = jsonDecode(response.body) as List<dynamic>;

    final listProduct = result.map((e) => ProductModel.fromMap(e)).toList();

    // Evaluate to state communicate with UI
    productNotifier.value = listProduct;
  }

  @override
  Widget build(BuildContext context) {
    print(" build() => ${DateTime.now()}");
    return Material(
      color: Colors.transparent,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ecommerce-Store"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),

        body: ValueListenableBuilder(
          valueListenable: isLoadingNotifier,
          builder: (context, isLoading, child) {
            if (isLoading) {
              return _buildLoadingWidget();
            }
            return _buildGridView();
          },
        ),
      ),
    );
  }

  Widget _buildGridView() {
    return ValueListenableBuilder(
      valueListenable: productNotifier,
      builder: (context, products, child) {
        if (products == null || products.isEmpty)
          return const Center(child: Text("Product Empty"));
        return GridView.builder(
          itemCount: products.length,
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisExtent: 250,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final productItem = products[index];
            return ProductWidget(
              product: productItem,
              onTap: _goToProductDetial,
            );
          },
        );
      },
    );
  }

  _goToProductDetial(ProductModel product) {
    // final list = productNotifier.value;
    // productNotifier.value = [product, ...list!];
    // print("product: $product");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductDetailScreen(productId: product.id),
      ),
    );
  }

  Widget _buildLoadingWidget() {
    return GridView.builder(
      itemCount: 12,
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisExtent: 230,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return ProductLoadingWidget();
      },
    );
  }
}
