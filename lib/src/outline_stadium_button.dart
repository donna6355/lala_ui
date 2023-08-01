import 'package:flutter/material.dart';
import './common_style.dart';

class OutlinedStadiumButton extends StatelessWidget {
  const OutlinedStadiumButton({
    required this.label,
    required this.onPressed,
    this.width = 340,
    this.height = 100,
    this.fontSize = 40,
    super.key,
  });
  final String label;
  final void Function()? onPressed;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: BtnStyle.outlinedRoundedButton(
        width: width,
        height: height,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
