import 'package:all_in_one_d_best_tech/ui/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

   const AppColumn({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         BigText(
          text: text,
           size: Dimensions.height24,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            //to draw same thing again and again
            Wrap(
                children: List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: mainColor,
                          size: 15,
                        ))),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(
              text: "4.5",
              size: Dimensions.height12,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            const SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.width10,
            ),
            const SmallText(text: "Comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndText(
                text: "Normal", icon: Icons.circle, iconColor: iconColor1),
            IconAndText(
                text: "1.7 Km", icon: Icons.location_on, iconColor: mainColor),
            IconAndText(
                text: "27 min", icon: Icons.timer, iconColor: iconColor2),
          ],
        )
      ],
    );
  }
}
