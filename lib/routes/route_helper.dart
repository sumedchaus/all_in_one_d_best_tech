import 'package:all_in_one_d_best_tech/ui/pages/food_detail/popular_food_detail.dart';
import 'package:all_in_one_d_best_tech/ui/pages/food_detail/recommended_food_detail.dart';
import 'package:all_in_one_d_best_tech/ui/pages/home/main_food_page.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popularFood";
  static const String recommendedFood = "/recommendedFood";

  static String getInitial() => initial;

  static String getPopularFood(int pageId) => "$popularFood?pageId=$pageId";

  static String getRecommendedFood(int pageId) => "$recommendedFood?pageId=$pageId";


  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => MainFoodPage(),
        transition: Transition.cupertino),
    GetPage(
        name: popularFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularFoodDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.cupertino),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecommendedFoodDetail(pageId: int.parse(pageId!));
  } ,
        transition: Transition.cupertino),
  ];
}
