import 'package:flutter/material.dart';

import './common_style.dart';

class HalfSquareButton extends StatelessWidget {
  const HalfSquareButton({
    required this.onPressed,
    required this.label,
    this.width = 711.5,
    this.height = 115,
    this.forLight = true,
    this.fontSize = 40,
    super.key,
  });

  final void Function()? onPressed;
  final String label;
  final bool forLight;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: BtnStyle.halfButton(
        forLight: forLight,
        width: width,
        height: height,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
