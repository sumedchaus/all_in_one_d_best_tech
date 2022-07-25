import 'dart:math';

import 'package:all_in_one_d_best_tech/core/data/repository/popular_product_repo.dart';
import 'package:all_in_one_d_best_tech/core/data/repository/recommended_product_repo.dart';
import 'package:all_in_one_d_best_tech/core/models/product_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;

  bool isLoaded = false;

  RecommendedProductController({required this.recommendedProductRepo});

  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList => _recommendedProductList;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();

    if(response.statusCode == 200){
      print("got Recommended Products");
      // print(response.bodyString!);
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      isLoaded = true;
      update();
    } else{

    }
  }
}
