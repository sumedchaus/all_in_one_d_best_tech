import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  final double size;

  final TextOverflow overflow;

  const BigText({
    required this.text,
      this.color = Colors.black,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'NunitoSans',
          fontWeight: FontWeight.w400,
          color: color,
          fontSize: size == 0 ? Dimensions.height20 : size),
    );
  }
}
