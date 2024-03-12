import 'package:flutter/material.dart';
import 'package:foma/app.dart';
import 'package:foma/provider/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      ChangeNotifierProvider(
      create: (_) => CartProvider(),
          child: const App()
  )
  );
}
