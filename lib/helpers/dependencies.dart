import 'package:all_in_one_d_best_tech/core/controllers/popular_product_controller.dart';
import 'package:all_in_one_d_best_tech/core/controllers/recommended_product_controller.dart';
import 'package:all_in_one_d_best_tech/core/data/api/api_client.dart';
import 'package:all_in_one_d_best_tech/core/data/repository/popular_product_repo.dart';
import 'package:all_in_one_d_best_tech/utils/constants.dart';
import 'package:get/get.dart';

import '../core/data/repository/recommended_product_repo.dart';

Future<void> init() async {

  /// api client
  Get.lazyPut(() => ApiClient(appBaseUrl: Constants.BASE_URL));

 ///repositories
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() =>RecommendedProductRepo(apiClient: Get.find()));

 ///controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepo: Get.find()));
}
