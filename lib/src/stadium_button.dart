import 'package:flutter/material.dart';
import './common_style.dart';

class StadiumButton extends StatelessWidget {
  const StadiumButton({
    required this.label,
    required this.onPressed,
    this.forBig = false,
    this.width = 340,
    this.height = 100,
    this.fontSize = 40,
    super.key,
  });
  final String label;
  final void Function()? onPressed;
  final bool forBig;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: BtnStyle.roundedButton(width: width, height: height),
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
