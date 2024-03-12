import 'package:flutter/material.dart';
import 'package:foma/presentation/cart.dart';
import 'package:foma/presentation/checkout.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foma',
      theme: ThemeData(fontFamily: 'One UI Sans'),
      initialRoute: '/cartScreen',
      routes: {
        '/cartScreen': (context) => CartScreen(),
        '/checkout': (context) => Checkout(),
      },
    );
  }
}
