import 'package:all_in_one_d_best_tech/image_assets_names.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_icon.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/big_text.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/expandable_text_widget.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.clear),
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
                child: const Center(
                    child: BigText(
                  text: "The Delicious Slide",
                )),
              ),
            ),
            pinned: true,
            expandedHeight: Dimensions.height300,
            backgroundColor: yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                GetImages.foodImageYellow,
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
                  child: ExpandableTextWidget(
                      text:
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "dogfish effete ef wef wf ef w efw few few fe fief wef "
                          "wf weft ef wf wfe werewolf"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "dogfish effete ef wef wf ef w efw few few fe fief wef "
                          "wf weft ef wf wfe werewolf"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "dogfish effete ef wef wf ef w efw few few fe fief wef "
                          "wf weft ef wf wfe werewolf"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "dogfish effete ef wef wf ef w efw few halftones fe halftones wef "
                          "wf weft ef wf wfe werewolf"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe halftones"
                          "check text length if its more than 50% i.e. 200 words or 300 words etc "
                          "Total Text:  i love flutter and Android with java kotlin and dart."
                          "if its is more than 20 then add then first 30 text in first half."
                          "and if it more than 30 then add the remaining in 2nd halftones"
                          "gf"
                          "halftones halftones ef wef wf ef w efw few halftones fe halftones wef "
                          "wf halftones ef wf wfe werewolf"),
                ),
                SizedBox(height: Dimensions.height10,)
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
            padding:  EdgeInsets.symmetric(
              horizontal: Dimensions.width20,
              vertical: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                AppIcon(
                    icon: Icons.remove,
                    iconColor: Colors.white,
                    backgroundColor: mainColor),
                BigText(text: "\$ 12.88 " " x " " 0"),
                AppIcon(
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
                  child: Icon(Icons.favorite,
                  color: mainColor),
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
