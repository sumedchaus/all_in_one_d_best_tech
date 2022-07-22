import 'package:all_in_one_d_best_tech/core/data/api/api_client.dart';
import 'package:get/get.dart';

/// when u load data from internet use GetxService
class PopularProductRepo extends GetxService {

  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async{
    return await apiClient.get("end point url");

  }


}
