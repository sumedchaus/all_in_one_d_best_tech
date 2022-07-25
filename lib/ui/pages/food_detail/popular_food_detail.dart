import 'package:all_in_one_d_best_tech/core/controllers/popular_product_controller.dart';
import 'package:all_in_one_d_best_tech/image_assets_names.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_column.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_icon.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/expandable_text_widget.dart';
import 'package:all_in_one_d_best_tech/utils/constants.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;

  const PopularFoodDetail({Key? key, required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
    Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background Image
          Positioned(
              // used to set position to container
              left: 0,
              right: 0,
              child: Container(
                height: Dimensions.height300,
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "${Constants.BASE_URL}${Constants.UPLOAD_URL}${product.img}",
                        ),
                        fit: BoxFit.fill)),
              )),
          //icon Widgets
          Positioned(
              top: Dimensions.height44,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const AppIcon(icon: Icons.arrow_back_ios)),
                  const AppIcon(icon: Icons.shopping_cart),
                ],
              )),
          //Introduction of Food
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: Dimensions.height300 - Dimensions.height24,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                  vertical: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.height20),
                    topLeft: Radius.circular(Dimensions.height20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: product.name!,
                  ),
                  SizedBox(
                    height: Dimensions.height16,
                  ),
                  const BigText(text: "Introduce"),
                  //expandable text widget
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description!),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct) {
          return Container(
            height: Dimensions.height100,
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.height24, horizontal: Dimensions.width20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.height24),
                  topRight: Radius.circular(Dimensions.height24),
                ),
                color: Colors.blueGrey.shade100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height16,
                      bottom: Dimensions.height16,
                      left: Dimensions.width16,
                      right: Dimensions.width16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.height16),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(false);
                        },
                        child: Icon(
                          Icons.remove,
                          color: signColor,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                       BigText(text: "${popularProduct.quantity}"),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                      GestureDetector(
                        onTap: () {
                          popularProduct.setQuantity(true);
                        },
                        child: Icon(
                          Icons.add,
                          color: signColor,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height16,
                      bottom: Dimensions.height16,
                      left: Dimensions.width16,
                      right: Dimensions.width16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      color: mainColor),
                  child: BigText(
                    text: "\$ ${product.price} | Add to cart",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
