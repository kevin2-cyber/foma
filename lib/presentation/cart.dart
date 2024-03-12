import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';
import 'package:foma/presentation/widgets/cart_item.dart';
import 'package:foma/provider/product_provider.dart';
import 'package:provider/provider.dart';

import '../model/product.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Product> productsInCarts = [];

  @override
  void initState() {
    Provider.of<ProductProvider>(context,listen: false).initProducts();
    productsInCarts = AppConstants.kDummyData;
    super.initState();
  }

  void delete(int index) {
    setState(() {
      productsInCarts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: ListView.builder(
        itemCount: productsInCarts.length,
        itemBuilder: (context, index) {
          return CartItem(
              image: productsInCarts[index].image,
              name: productsInCarts[index].name,
              price: productsInCarts[index].price,
            onTap: () => delete,
          );
        },
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
