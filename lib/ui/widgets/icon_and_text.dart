import 'dart:ffi';

import 'package:all_in_one_d_best_tech/ui/widgets/small_text.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final double iconSize;

  const IconAndText(
      {required this.text,
      required this.icon,
      required this.iconColor,
         this.iconSize = 0,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize==0? Dimensions.height20: iconSize,
          color: iconColor,
        ),
         SizedBox(
          width: Dimensions.width5,
        ),
        SmallText(
          text: text,
        )
      ],
    );
  }
}
