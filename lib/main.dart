// dart id="ecomcode"
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ecommerce Store")),
      body: Column(
        children: [
          product("Shoes", "₹2000", Icons.shopping_bag, context),
          product("Watch", "₹1500", Icons.watch, context),
          product("Bag", "₹1200", Icons.backpack, context),
        ],
      ),
    );
  }

  Widget product(String name, String price, IconData icon, BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Icon(icon),
        title: Text(name),
        subtitle: Text(price),
        trailing: ElevatedButton(
          child: const Text("Buy"),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("$name added to cart")),
            );
          },
        ),
      ),
    );
  }
}
