import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max 270',
        price: '150',
        imagePath: 'lib/images/first.png',
        description:
            'Elevate your style and comfort with the iconic Air Max 270'),
    Shoe(
        name: 'Nike Run Flyknit',
        price: '150',
        imagePath: 'lib/images/fifth.png',
        description:
            'Run smarter, longer, and injury-free with React Infinity'),
    Shoe(
        name: ' Nike Air Force 1',
        price: '150',
        imagePath: 'lib/images/third.png',
        description: 'Step into timeless style with the classic Air Force 1'),
    Shoe(
        name: 'Nike ZoomX ',
        price: '150',
        imagePath: 'lib/images/forth.png',
        description:
            'Unleash your speed and break barriers with the ZoomX Vaporfly NEXT'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
