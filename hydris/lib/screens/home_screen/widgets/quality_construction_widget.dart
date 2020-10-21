import 'package:flutter/material.dart';

class QualityConstructionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Text(
        "QUALITY CONSTRUCTION",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 2
            ..color = Colors.blue[900],
        ),
      ),
      Text(
        "QUALITY CONSTRUCTION",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
