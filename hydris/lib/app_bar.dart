import 'package:flutter/material.dart';

AppBar HydrisAppBar() {
  return AppBar(
    elevation: 0.0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/launcher/icon_foreground.png",
          fit: BoxFit.scaleDown,
          height: 35,
          width: 35,
        ),
        Text("H Y D R I S"),
        SizedBox(
          height: 35,
          width: 35,
        )
      ],
    ),
    centerTitle: true,
  );
}
