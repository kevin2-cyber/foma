import 'package:flutter/material.dart';
import 'package:foma/model/product.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../core/app_constants.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, AppConstants.kCarts),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: AppConstants.kDummyData.length,
        itemBuilder: (context, index) {
          Product product = AppConstants.kDummyData[index];
          return ListTile(
            leading: Image.asset(
              product.image,
              height: 24,
              width: 24,
              fit: BoxFit.fill,
            ),
            title: Text(product.name),
            trailing: Checkbox(
              value: cartProvider.items.contains(product),
              onChanged: (value) {
                if (value == true) {
                  cartProvider.add(product);
                } else {
                  cartProvider.remove(product);
                }
              },
            ),
          );
        },
      ),
    );
  }
}
