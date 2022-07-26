import 'package:all_in_one_d_best_tech/core/controllers/cart_controller.dart';
import 'package:all_in_one_d_best_tech/core/controllers/popular_product_controller.dart';
import 'package:all_in_one_d_best_tech/core/controllers/recommended_product_controller.dart';
import 'package:all_in_one_d_best_tech/routes/route_helper.dart';
import 'package:all_in_one_d_best_tech/ui/pages/food_detail/popular_food_detail.dart';
import 'package:all_in_one_d_best_tech/ui/pages/food_detail/recommended_food_detail.dart';
import 'package:all_in_one_d_best_tech/ui/pages/home/food_page_body.dart';
import 'package:all_in_one_d_best_tech/ui/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'helpers/dependencies.dart' as dep;

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    Get.find<CartController>();
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      theme: ThemeData(
        fontFamily: 'NunitoSans',
        primarySwatch: Colors.blue,
      ),
      // home: MainFoodPage(),
    );
  }
}
