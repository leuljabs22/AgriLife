import 'product.dart';
import 'package:flutter/material.dart';

class shop extends ChangeNotifier {
 final List <Product> _products = [
   Product(
    name: "Tractor",
    description:
        "Exence the power of modern farming with our robust tractor. Whether you're tending to vast fields or small plots, this versatile machine ensures efficiency and precision. Its ergonomic design and advanced features make it a must-have for any farmer.",
    image: '/C:/vsRepo/Agrilife/assets/tractor.jpg',
    price: 377.00,
    unit: 'day(s)',
    rating: 4.35,
  ),


   Product(
    name: "Juicy Tomatoes",
    description:
        "Add a pop of color and flavor to your dishes with our juicy tomatoes. Grown with care, these plump and succulent tomatoes are a kitchen staple. Whether you're making sauces, salads, or sandwiches, these tomatoes are the key to culinary delight.",
    image: '/C:/vsRepo/Agrilife/assets/tomato.jpg',
    price: 6.84,
    unit: 'kg',
    rating: 3.22,
  ),
];

List <Product> _cart = [];

List <Product> get products =>_products;
List <Product> get cart =>_cart;

void addToCart( Product cartItem, int quantity ){
for(int i = 0;i < quantity;i++){
  _cart.add(cartItem);
}
notifyListeners();
}


void RemoveFromCart( Product Product){
  _cart.remove(Product);
  notifyListeners();


}

}