import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';
import 'package:foma/presentation/screens/cart.dart';
import 'package:foma/presentation/screens/checkout.dart';
import 'package:foma/presentation/screens/display_info.dart';
import 'package:foma/presentation/screens/products.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foma',
      theme: ThemeData(fontFamily: AppConstants.kFont),
      initialRoute: AppConstants.kProducts,
      routes: {
        AppConstants.kProducts: (context) => const ProductScreen(),
        AppConstants.kCarts: (context) => const CartScreen(),
        AppConstants.kCheckout: (context) => const Checkout(),
        AppConstants.kDisplayInfo: (context) => const DisplayInfo(),
      },
    );
  }
}
