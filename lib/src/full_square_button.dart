import 'package:flutter/material.dart';

import './common_style.dart';

class FullSquareButton extends StatelessWidget {
  const FullSquareButton({
    required this.onPressed,
    required this.label,
    this.width = 1424,
    this.height = 115,
    this.fontSize = 40,
    super.key,
  });

  final void Function()? onPressed;
  final String label;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: BtnStyle.fullButton(
        width,
        height,
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
