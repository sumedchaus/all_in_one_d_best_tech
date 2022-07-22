import 'package:all_in_one_d_best_tech/ui/widgets/big_text.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/small_text.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("current height is :"+ MediaQuery.of(context).size.height.toString());
    print("height using getx " + Get.height.toString());
    print("Width using getx " + Get.width.toString());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width16,
                right: Dimensions.width16,
                top: Dimensions.height16,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      BigText(
                        text: "India",
                        color: mainColor,
                      ),
                      SmallText(
                        text: "Maharashtra",
                      )
                    ],
                  ),
                  Container(
                      width: Dimensions.width44,
                      height: Dimensions.height44,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius:
                              BorderRadius.circular(Dimensions.height10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: Dimensions.height24,
                          )))
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: SingleChildScrollView(child: FoodPageBody())),
          ],
        ),
      ),
    );
  }
}
