import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final String id = DateTime.now().toString();
  final String title;
  final String productDesc;
  int quantity;
  final String imgURL;
  final double price;
  bool isFavorite;

  Product({
    required this.title,
    required this.productDesc,
    this.quantity = 0,
    required this.imgURL,
    required this.price,
    this.isFavorite = false,
  });

  void increaseQuantity() {
    quantity += 1;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (quantity > 0) {
      quantity -= 1;
      notifyListeners();
    }
  }

  bool toogleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
    return isFavorite;
  }

  double get totalPrice {
    return quantity * price;
  }
}
