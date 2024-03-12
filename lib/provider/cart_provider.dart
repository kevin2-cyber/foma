import 'package:flutter/material.dart';

import '../model/product.dart';

class CartProvider extends ChangeNotifier {

  final List<Product> _items = [];

  List<Product> get items => _items;

  void add(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Product item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

  double getCartTotal() => _items.fold(0, (previousValue, item) => previousValue + item.price);
}