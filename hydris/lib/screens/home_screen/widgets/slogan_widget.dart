import 'package:flutter/material.dart';

class SloganWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Listen Better.",
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Plan Better.",
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Build Better.",
            style: TextStyle(
                color: Colors.blue[900],
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
