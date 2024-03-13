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
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, provider, child) => Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.60,
              child: ListView.builder(
                itemCount: provider.items.length,
                itemBuilder: (context, index) {
                  Product product = provider.items[index];
                  return Card(
                    margin: const EdgeInsets.only(left: 16, right: 16, top: 10),
                    child: ListTile(
                      leading: Image.asset(
                        product.image,
                        height: 120,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      title: Text(product.name),
                      titleAlignment: ListTileTitleAlignment.top,
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('${product.price}\$'),
                        ],
                      ),
                      trailing: MaterialButton(
                        onPressed: () => provider.remove(product),
                        height: 20,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        shape: CircleBorder(
                          side:
                              BorderSide(color: Theme.of(context).primaryColor),
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
