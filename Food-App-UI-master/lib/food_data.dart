import 'package:flutter/material.dart';
import 'food_model.dart';


List<Coffee> _coffee_list = [
  Coffee(
    name: "Lazania Pizza",
    image: "assets/images/espresso.png",
    backgroundColor: Colors.amberAccent,
    price: 5,
  ),
  Coffee(
    name: "Fingers",
    image: "assets/images/Caffe_Mocha.png",
    backgroundColor: Colors.indigoAccent,
    price: 11,
  ),
  Coffee(
    name: "Zinger Burger",
    image: "assets/images/Caramel_Macchiato.png",
    backgroundColor: Color(0xffFF9839),
    price: 7,
  ),
  Coffee(
    name: "French Fries",
    image: "assets/images/turkish_Coffee.png",
    backgroundColor: Color(0xffB68456),
    price: 4,
  ),
  Coffee(
    name: "Cold Drink",
    image: "assets/images/cappuccino.png",
    backgroundColor: Color(0xffE74343),
    price: 9,
  ),
  Coffee(
    name: "Seekh Kebab",
    image: "assets/images/cortadoo.png",
    backgroundColor: Color(0xff8D5FDC),
    price: 8,
  ),
  Coffee(
    name: "Chicken Nuguts",
    image: "assets/images/cafe_cubano.png",
    backgroundColor: Colors.orangeAccent,
    price: 15,
  ),
  Coffee(
    name: "Zinger Puratha",
    image: "assets/images/burrito.png",
    backgroundColor: Colors.red,
    price: 11,
  ),
];

List<Coffee> get coffee_list {
  return [..._coffee_list];
}
