import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  final Color? greenTitleColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      style: TextStyle(
        fontSize: textSize,
      ),
      children: [
        TextSpan(
            text: 'Green',
            style: TextStyle(
              color: greenTitleColor ?? CustomColors.customSwatchColor,
            )),
        TextSpan(
          text: 'grocer',
          style: TextStyle(
            color: CustomColors.customContrastColor,
          ),
        ),
      ],
    ));
  }
}
