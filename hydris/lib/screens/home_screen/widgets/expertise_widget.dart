import 'package:flutter/material.dart';

class ExpertiseWidget extends StatelessWidget {
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
            "EXPERTISE",
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            "Save time and money by letting Hydris handle every aspect of your construction project.",
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
