import 'package:all_in_one_d_best_tech/image_assets_names.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/app_column.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/big_text.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/icon_and_text.dart';
import 'package:all_in_one_d_best_tech/ui/widgets/small_text.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currentPageValue = 0.0;
  final _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section
        SizedBox(
          // color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return buildPageItem(position);
              }),
        ),
        //dot indicator section
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
              color: Colors.black87,
              // Inactive color
              activeColor: mainColor,
              size: Size.square(Dimensions.height8),
              activeSize: Size(Dimensions.width16, Dimensions.height10),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimensions.height5))),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        //Popular Item Section
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              BigText(text: "Popular  "),
              SmallText(text: ".  Food Pairing")
            ],
          ),
        ),
        // popular images section
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    top: Dimensions.height8,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height8),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions.width100,
                      height: Dimensions.height100,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height16),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                GetImages.foodImage2,
                              ))),
                    ),
                    //wrap it with expanded to take full width or to take all the available space
                    Expanded(
                      child: Container(
                        height: Dimensions.height80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.height16),
                              bottomRight:
                                  Radius.circular(Dimensions.height16),
                            ),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(
                                text: "Neutrinos fruit meal in India",
                                size: Dimensions.height18,
                              ),
                              SizedBox(
                                height: Dimensions.height5,
                              ),
                              const SmallText(
                                  text: "With indian characteristics"),
                              SizedBox(
                                height: Dimensions.height5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  IconAndText(
                                      text: "Normal",
                                      icon: Icons.circle,
                                      iconColor: iconColor1),
                                  IconAndText(
                                      text: "1.7 Km",
                                      icon: Icons.location_on,
                                      iconColor: mainColor),
                                  IconAndText(
                                      text: "27 min",
                                      icon: Icons.timer,
                                      iconColor: iconColor2),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget buildPageItem(int index) {
    //Returns the greatest integer no greater than this number.
    //ex : print(1.99999.floor()); // print(2.0.floor());// print(2.99999.floor()); // 2
    // it returns 3 coordinates. used for animation of zooming
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTrans = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTrans, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: _height,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.height24),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(GetImages.foodImage1))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.height20),
                  color: Colors.white,

                  //imp : how to add or removes shadows from all the sides : time 1: 55 min
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.width16,
                    right: Dimensions.width16),
                child: AppColumn(text: "Indian Dish"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
