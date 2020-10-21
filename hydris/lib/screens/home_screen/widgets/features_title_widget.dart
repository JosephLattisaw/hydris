import 'package:flutter/material.dart';

class FeaturesTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        "FEATURES",
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = .4
            ..color = Colors.white,
        ),
      ),
      Text(
        "FEATURES",
        style: TextStyle(
            color: Colors.transparent,
            fontSize: 60,
            fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
