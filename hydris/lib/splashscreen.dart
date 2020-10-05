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
            Color.fromRGBO(186, 4, 34, 1.0),
            Color.fromRGBO(36, 11, 54, 1.0)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: Container(
            child: Image.asset(
              'assets/launcher/icon_foreground.png',
              height: 250,
              width: 250,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
