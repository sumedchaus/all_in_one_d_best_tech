import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color? splashColor;
  final Color iconColor;
  final double size;
  final void Function()? onTap;

  const AppIcon({
   required this.icon,
  this.iconColor = const Color(0xFF756d54),
  this.size = 0,
  this.backgroundColor = const Color(0xFFfcf4e4),
    this.onTap,
    this.splashColor,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ==0? Dimensions.width40: size,
      height: size ==0? Dimensions.height40: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.height20),
        color: backgroundColor,
      ),
      child: IconButton(
        splashColor:splashColor ,
        onPressed: onTap,
        icon: Icon(icon,
        color: iconColor,
        size: size ==0? Dimensions.height16: size,
        ),
      ),
    );
  }
}
