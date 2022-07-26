import 'package:all_in_one_d_best_tech/core/data/repository/cart_repo.dart';
import 'package:all_in_one_d_best_tech/core/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

//9.30 if error occures while adding files
  CartController({required this.cartRepo});

  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    // print("length of the item is ${_items.length.toString()}");

    var totalQuantity = 0;
    if (_items.containsKey(product.id!)) {
      /// to update
      _items.update(product.id!, (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
          id: value.id,
          img: value.img,
          name: value.name,
          price: value.price,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
      if (totalQuantity <= 0) {
        _items.remove(product.id);
      }
    } else {
      if (quantity > 0) {
        /// to add new
        _items.putIfAbsent(product.id!, () {
          return CartModel(
            id: product.id,
            img: product.img,
            name: product.name,
            price: product.price,
            quantity: quantity,
            isExist: true,
            time: DateTime.now().toString(),
          );
        });
      } else {
        Get.snackbar("Item Count", "Add atleast 1 item!",
            backgroundColor: mainColor, colorText: Colors.white);
      }
    }
  }

  bool existInCart(ProductModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id)) {
      _items.forEach((key, value) {
        if (key == product.id) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems {
    var totalQuantity = 0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity!;
    });
    return totalQuantity;
  }
}
