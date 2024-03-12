import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';
import 'package:foma/presentation/widgets/cart_item.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> productsInCarts = [];

  @override
  void initState() {
    productsInCarts = AppConstants.kDummyData;
    Provider.of<CartProvider>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: productsInCarts.length,
        itemBuilder: (context, index) => CartItem(
              onTap: () => Provider.of<CartProvider>(context).remove(productsInCarts[index]),
              image: productsInCarts[index].image,
              name: productsInCarts[index].name,
              price: productsInCarts[index].price,
          ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: MaterialButton(
          onPressed: () {},
          color: AppConstants.kWaterBlue,
          height: 50,
          minWidth: MediaQuery.of(context).size.width * 0.9,
          child: Text(
              'Proceed to Checkout',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
