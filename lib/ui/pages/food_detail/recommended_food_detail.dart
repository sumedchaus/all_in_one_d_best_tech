import 'package:all_in_one_d_best_tech/core/controllers/recommended_product_controller.dart';
import 'package:all_in_one_d_best_tech/image_assets_names.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_icon.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/big_text.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/expandable_text_widget.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:all_in_one_d_best_tech/utils/constants.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;

  const RecommendedFoodDetail({Key? key, required this.pageId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<RecommendedProductController>().recommendedProductList[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: AppIcon(icon: Icons.clear)),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height40),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height5, bottom: Dimensions.height10),
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.height20),
                    topRight: Radius.circular(Dimensions.height20),
                  ),
                ),
                child: Center(
                    child: BigText(
                  text: product.name!,
                )),
              ),
            ),
            pinned: true,
            expandedHeight: Dimensions.height300,
            backgroundColor: yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "${Constants.BASE_URL}${Constants.UPLOAD_URL}${product.img}",
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: ExpandableTextWidget(text: product.description!),
                ),
                SizedBox(
                  height: Dimensions.height10,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.width20,
              vertical: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
               const AppIcon(
                    icon: Icons.remove,
                    iconColor: Colors.white,
                    backgroundColor: mainColor),
                BigText(text: "\$ ${product.price} " " x " " 0"),
               const AppIcon(
                    icon: Icons.add,
                    iconColor: Colors.white,
                    backgroundColor: mainColor),
              ],
            ),
          ),
          Container(
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
                  child: Icon(Icons.favorite, color: mainColor),
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
                    text: "\$10 | Add to cart",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
