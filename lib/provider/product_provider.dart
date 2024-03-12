
import 'package:flutter/material.dart';
import 'package:foma/core/app_constants.dart';

import '../model/product.dart';

class ProductProvider extends ChangeNotifier {

  List<Product> products = [];

  // initialize products
  void initProducts() => products = AppConstants.kDummyData;

  // get products
  List<Product> getAllProducts() => products;

  void add(Product product) {
    products.add(product);
    notifyListeners();
  }

  void delete(Product product){
    products.remove(product);
    notifyListeners();
  }

  void clear() {
    products.clear();
    notifyListeners();
  }
}