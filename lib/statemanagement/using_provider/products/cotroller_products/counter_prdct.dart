import 'package:flutter/material.dart';


import '../model_product/counter.dart';
final List<Product> products = [
  Product(name: '1', price: '400', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiYBcP5mZhv7IL9KQPCe7rxOJRpD0KF9-N8Q&usqp=CAU'),

  Product(name: '2', price: '500', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnL6E-aOQqM8YZZruF9e068VU9ZY9Z-yXdbA&usqp=CAU'),
  Product(name: '3', price: '350', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuVx6D2iiw72djRBXXAkwqtvtt72I5dwjhWQ&usqp=CAU'),
];

class ProductProvider extends ChangeNotifier {
  final List<Product> _products = products;

  List<Product> get product => _products;

  final List<Product> _wishList = [];

  List<Product> get wishListProduct => _wishList;

  void addToWishList(Product selectedProduct) {
    _wishList.add(selectedProduct);
    print(_wishList);
    notifyListeners();
  }

  void removeFromWishList(Product selectedProduct) {
    _wishList.remove(selectedProduct);
    print(_wishList);
    notifyListeners();
  }
}
