import 'package:all_in_one_d_best_tech/image_assets_names.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_column.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_icon.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/expandable_text_widget.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

////3.20
  @override
  Widget build(BuildContext context) {
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
                        image: AssetImage(
                          GetImages.biryaniImage,
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
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart),
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
                    text: "Hyderabadi Biryani",
                  ),
                  SizedBox(
                    height: Dimensions.height16,
                  ),
                  const BigText(text: "Introduce"),
                  //expandable text widget
                  SizedBox(height: Dimensions.height20,),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "check text length if its more than 50% i.e. 200 words or 300 words etc "
                              "Total Text:  i love flutter and Android with java kotlin and dart."
                              "if its is more than 20 then add then first 30 text in first half."
                              "and if it more than 30 then add the remaining in 2nd halfsdfdsfgdf"
                                  "gf""dhgfhhh efweewf ef wef wf ef w efw few ewfw fe wfwef wef "
                                  "wf wefw ef wf wfe wefwfefwfeef"
                                  "check text length if its more than 50% i.e. 200 words or 300 words etc "
                                  "Total Text:  i love flutter and Android with java kotlin and dart."
                                  "if its is more than 20 then add then first 30 text in first half."
                                  "and if it more than 30 then add the remaining in 2nd halfsdfdsfgdf"
                                  "gf""dhgfhhh efweewf ef wef wf ef w efw few ewfw fe wfwef wef "
                                  "wf wefw ef wf wfe wefwfefwfeef"
                                  "check text length if its more than 50% i.e. 200 words or 300 words etc "
                                  "Total Text:  i love flutter and Android with java kotlin and dart."
                                  "if its is more than 20 then add then first 30 text in first half."
                                  "and if it more than 30 then add the remaining in 2nd halfsdfdsfgdf"
                                  "gf""dhgfhhh efweewf ef wef wf ef w efw few ewfw fe wfwef wef "
                                  "wf wefw ef wf wfe wefwfefwfeef"
                                  "check text length if its more than 50% i.e. 200 words or 300 words etc "
                                  "Total Text:  i love flutter and Android with java kotlin and dart."
                                  "if its is more than 20 then add then first 30 text in first half."
                                  "and if it more than 30 then add the remaining in 2nd halfsdfdsfgdf"
                                  "gf""dhgfhhh efweewf ef wef wf ef w efw few ewfw fe wfwef wef "
                                  "wf wefw ef wf wfe wefwfefwfeef"
                                  "check text length if its more than 50% i.e. 200 words or 300 words etc "
                                  "Total Text:  i love flutter and Android with java kotlin and dart."
                                  "if its is more than 20 then add then first 30 text in first half."
                                  "and if it more than 30 then add the remaining in 2nd halfsdfdsfgdf"
                                  "gf""dhgfhhh efweewf ef wef wf ef w efw few ewfw fe wfwef wef "
                                  "wf wefw ef wf wfe wefwfefwfeef"),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  const Icon(
                    Icons.remove,
                    color: signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  const BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10,
                  ),
                  const Icon(
                    Icons.add,
                    color: signColor,
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
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
