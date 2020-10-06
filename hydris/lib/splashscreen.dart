import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(186, 4, 26, 1.0),
              Color.fromRGBO(36, 11, 36, 1.0)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/launcher/icon_foreground.png",
                    height: 250,
                    width: 250,
                  ),
                  Text(
                    'H Y D R I S',
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )),
      backgroundColor: Colors.transparent,
    );
  }
}
