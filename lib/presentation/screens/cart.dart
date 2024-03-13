import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

import '../../model/product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) {
          return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  itemCount: provider.items.length,
                  itemBuilder: (context, index) {
                    Product product = provider.items[index];
                    return Container(
                      height: MediaQuery.of(context).size. height * 0.1,
                      margin: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(24)),
                        backgroundBlendMode: BlendMode.colorDodge
                      ),
                      child: ListTile(
                        isThreeLine: true,
                        leading: Image.asset(
                          product.image,
                          height: 120,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                        title: Text(product.name),
                        titleAlignment: ListTileTitleAlignment.threeLine,
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('${product.price}\$'),
                          ],
                        ),
                        trailing: MaterialButton(
                          onPressed: () => provider.remove(product),
                          height: 20,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: CircleBorder(
                            side: BorderSide(
                                color: Theme.of(context).primaryColor),
                          ),
                          child: const Icon(
                            Icons.clear,
                            size: 16,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Text("Cart Total: \$${provider.getCartTotal()}"),
            ],
          ),
        );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, AppConstants.kCheckout);
          },
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
