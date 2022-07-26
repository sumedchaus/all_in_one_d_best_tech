import 'dart:math';

import 'package:all_in_one_d_best_tech/core/controllers/cart_controller.dart';
import 'package:all_in_one_d_best_tech/core/data/repository/popular_product_repo.dart';
import 'package:all_in_one_d_best_tech/core/models/product_model.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});

  List<ProductModel> _popularProductList = [];

  List<ProductModel> get popularProductList => _popularProductList;
  late CartController _cart;

  bool isLoaded = false;

  int _quantity = 0;

  int get quantity => _quantity;
  int _inCartItem = 0;

  int get inCartItem => _inCartItem + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {
      print("got Products");
      // print(response.bodyString!);
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      isLoaded = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_inCartItem+quantity) < 0) {
      Get.snackbar("Item Count", "You cant reduce more!",
          backgroundColor: mainColor, colorText: Colors.white);
      return 0;
    } else if ((_inCartItem+quantity) > 20) {
      Get.snackbar("Item Count", "You cant add more!",
          backgroundColor: mainColor, colorText: Colors.white);
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product,CartController cart) {
    _quantity = 0;
    _inCartItem = 0;

    _cart = cart;
    var exist = false;
    exist = _cart.existInCart(product);

    /// if exist
    ///get from storage _inCartItems = 3
    if(exist){
      _inCartItem = _cart.getQuantity(product);
    }
    print( _inCartItem.toString() + "is quantity");
  }

  void addItem(ProductModel product) {
    // if (_quantity > 0) {
      _cart.addItem(product, _quantity);
      _quantity = 0;
      _inCartItem = _cart.getQuantity(product);
      _cart.items.forEach((key, value) {
        print(
            "The id is ${value.id.toString()} The quantity is ${value.quantity.toString()}");
      });
  update();
  }

  int get totalItems{
    return _cart.totalItems;
  }
}
