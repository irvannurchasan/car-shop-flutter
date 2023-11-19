import 'package:flutter/material.dart';

import 'car.dart';

class Cart extends ChangeNotifier {
  // list of car for sale
  List<Car> carShop = [
    Car(
      name: 'Porsche 911',
      price: '2.720.000.000', 
      description: 'an updated version of the outgoing model that sees better performance, updated visuals and more', 
     imagePath: 'lib/images/Porsche911.jpeg'
     ),
    
    Car(
      name: 'Porsche 911',
      price: '2.720.000.000', 
      description: 'an updated version of the outgoing model that sees better performance, updated visuals and more', 
     imagePath: 'lib/images/Porsche911.jpeg'
     ),

    Car(
      name: 'Porsche 911',
      price: '2.720.000.000', 
      description: 'an updated version of the outgoing model that sees better performance, updated visuals and more', 
     imagePath: 'lib/images/Porsche911.jpeg'
     ),

    Car(
      name: 'Porsche 911',
      price: '2.720.000.000', 
      description: 'an updated version of the outgoing model that sees better performance, updated visuals and more', 
     imagePath: 'lib/images/Porsche911.jpeg'
     ),
  ];
  // list of item in cart 
  List<Car> userCart = [];

  // get list of cart for sale
  List<Car> getCarList() {
    return carShop;
  }

  // get cart
  List<Car> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart (Car car) {
    userCart.add(car);
    notifyListeners();
  }

  // remove item from cart 
  void removeItemFromCart (Car car) {
    userCart.remove(car);
    notifyListeners();
  }
}