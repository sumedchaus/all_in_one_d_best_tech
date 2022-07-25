import 'package:all_in_one_d_best_tech/core/data/api/api_client.dart';
import 'package:all_in_one_d_best_tech/utils/constants.dart';
import 'package:get/get.dart';

/// when u load data from internet use GetService
class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;

  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient
        .get(Constants.RECOMMENDED_PRODUCT_URI);
  }
}
