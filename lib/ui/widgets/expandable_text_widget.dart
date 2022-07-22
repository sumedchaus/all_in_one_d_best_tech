import 'package:all_in_one_d_best_tech/ui/widgets/small_text.dart';
import 'package:all_in_one_d_best_tech/utils/colors.dart';
import 'package:all_in_one_d_best_tech/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  ExpandableTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  /// to count the text length
  double textHeight = Dimensions.screenHeight / 5.7;

  @override
  void initState() {
    super.initState();
    /**
     * check text length if its more than 50% i.e. 200 words or 300 words etc
        Total Text:  i love flutter and Android with java kotlin and dart.
        if its is more than 20 then add then first 30 text in first half.
        and if it more than 30 then add the remaining in 2nd half
     */
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              size: Dimensions.height14,
              text: firstHalf,
            )
          : Column(
              children: [
                SmallText(
                    size: Dimensions.height14,
                    text: hiddenText
                        ? (firstHalf + "...")
                        : (firstHalf + secondHalf)),
                InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: hiddenText ? "Show more" : "Show Less",
                          color: mainColor,
                        ),
                        Icon(
                          hiddenText
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                          color: mainColor,
                        )
                      ],
                    ))
              ],
            ),
    );
  }
}
