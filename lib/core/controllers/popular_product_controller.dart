import 'dart:math';

import 'package:all_in_one_d_best_tech/core/data/repository/popular_product_repo.dart';
import 'package:all_in_one_d_best_tech/core/models/product_model.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  bool isLoaded = false;

  int quantity = 0;

  PopularProductController({required this.popularProductRepo});

  List<ProductModel> _popularProductList = [];

  List<ProductModel> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if (response.statusCode == 200) {
      isLoaded = true;
      print("got Products");
      // print(response.bodyString!);
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      quantity = checkQuantity( quantity+1);
    } else{
      quantity = checkQuantity( quantity-1);
    }
    update();
  }
  int checkQuantity(int quantity){
    if(quantity <0 ){
      Get.snackbar("Item Count", "You cant reduce more!",
      backgroundColor: mainColor,
      colorText: Colors.white);
      return 0;
    } else if(quantity > 20){
      Get.snackbar("Item Count", "You cant add more!",
          backgroundColor: mainColor,
          colorText: Colors.white);
      return 20;
    } else{
      return quantity;
    }
  }

  void initProduct(){
    quantity = 0;
  }
}
