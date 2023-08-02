import 'package:flutter/material.dart';
import './extensions.dart';
import './lala_style.dart';

class Clock extends StatelessWidget {
  const Clock({
    this.fontSize = 28,
    this.fontWeight = FontWeight.w500,
    required this.color,
    super.key,
  });
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(minutes: 1)),
      builder: (context, snapshot) {
        final DateTime now = DateTime.now();
        List<String> time = now.forClock();
        return Column(
          children: [
            Text(
              '${time[0]} ${time[1]} ${time[2]}',
              style: TextStyle(
                fontFamily: LalaBtnStyle.fontFamily,
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: color,
              ),
            ),
          ],
        );
      },
    );
  }
}
