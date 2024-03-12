import 'package:flutter/material.dart';
import 'package:foma/presentation/cart.dart';
import 'package:foma/provider/product_provider.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foma',
        home: Cart(),
      ),
    );
  }
}
