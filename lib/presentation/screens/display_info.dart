import 'package:flutter/material.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class DisplayInfo extends StatelessWidget {
  final String? name;
  final String? cardNumber;
  final String? dateTime;
  final String? cvc;
  const DisplayInfo({super.key, this.name, this.cardNumber, this.dateTime, this.cvc});

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<CartProvider>(
          builder: (context, provider, _) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      name!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                      cardNumber!,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(dateTime!),
                  Text(cvc!),
                  Text(provider.items[index].name),
                  Text('Your total amount is: \$${provider.getCartTotal()}')
                ],
              ),
            );
          },
      ),
    );
  }
}
