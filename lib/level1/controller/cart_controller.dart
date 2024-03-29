import 'package:flutter_palworld/level1/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  double get totalPrice => cartItems.fold(0, (e, item) => e + item.price);
  int get count => cartItems.length;

  void addToItem(Product product) {
    cartItems.add(product);
  }
}
