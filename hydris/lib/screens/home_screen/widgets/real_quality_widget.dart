import 'package:flutter/material.dart';

class RealQualityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "REAL QUALITY",
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            "Hydris uses the highest quality materials for your project, guaranteeing you the best results.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue[900],
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
