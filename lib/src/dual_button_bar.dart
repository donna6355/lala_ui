import 'package:flutter/material.dart';
import './square_button.dart';

class DualButtonBar extends StatelessWidget {
  const DualButtonBar({
    required this.leftLabel,
    required this.rightLabel,
    required this.leftFunction,
    required this.rightFunction,
    this.forSmallDialog = true,
    this.buttonWidth = 711.5,
    this.buttonHeight = 115,
    this.fontSize = 40,
    super.key,
  });

  final String leftLabel;
  final String rightLabel;
  final void Function()? leftFunction;
  final void Function()? rightFunction;
  final bool forSmallDialog;
  final double buttonWidth;
  final double buttonHeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0xff4E515A),
        ),
        Row(
          children: [
            SquareButton(
              onPressed: leftFunction,
              label: leftLabel,
              forLight: true,
              width: buttonWidth,
              height: buttonHeight,
              fontSize: fontSize,
            ),
            Container(
              width: 1,
              height: 115,
              color: const Color(0xff4E515A),
            ),
            SquareButton(
              onPressed: rightFunction,
              label: rightLabel,
              width: buttonWidth,
              height: buttonHeight,
              fontSize: fontSize,
            ),
          ],
        ),
      ],
    );
  }
}
