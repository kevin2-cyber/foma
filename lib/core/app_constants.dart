import 'package:flutter/material.dart';

import 'package:foma/model/product.dart';

class AppConstants {
  // images
  static const controller = 'assets/images/controller.jpg';
  static const playstation = 'assets/images/playstation.jpg';
  static const jblFlip = 'assets/images/JBL-Flip-5.jpg';
  static const ps = 'assets/images/ps.jpg';
  static const jblGo = 'assets/images/speaker-jblgo2.jpg';
  static const jblBoomBox = 'assets/images/jbl-boombox2.jpg';

  // colors
  static const kWaterBlue = Color(0xFF0F96BB);
  
  static const kDummyData = <Product>[
    Product(id: 0,image: controller, name: 'Wireless Controller', price: 69.99),
    Product(id: 1, image: playstation, name: 'Wireless Controller', price: 69.99),
    Product(id: 2, image: ps, name: 'Wireless Controller', price: 69.99),
    Product(id: 3, image: jblBoomBox, name: 'JBL Boom Box 2', price: 69.99),
    Product(id: 4, image: jblGo, name: 'JBL GO 2', price: 69.99),
    Product(id: 5, image: jblFlip, name: 'JBL Flip 5 speaker', price: 69.99),
  ];


}