import 'package:flutter/material.dart';
import 'dart:developer'; //needed for log

Map<int, Color> custom_swatch_color = {
  //TODO this should match the context file
  //TODO should optimize this into some type of function
  50: Color.fromRGBO(0, 48, 71, .1),
  100: Color.fromRGBO(0, 48, 71, .2),
  200: Color.fromRGBO(0, 48, 71, .3),
  300: Color.fromRGBO(0, 48, 71, .4),
  400: Color.fromRGBO(0, 48, 71, .5),
  500: Color.fromRGBO(0, 48, 71, .6),
  600: Color.fromRGBO(0, 48, 71, .7),
  700: Color.fromRGBO(0, 48, 71, .8),
  800: Color.fromRGBO(0, 48, 71, .9),
  900: Color.fromRGBO(0, 48, 71, 1),
};

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HYDRIS',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF003065, custom_swatch_color),
      ),
      home: HomeScreenWidget(),
    );
  }
}

class HomeScreenWidget extends StatefulWidget {
  HomeScreenWidget({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/launcher/icon_foreground.png",
                height: 30,
                width: 30,
              ),
              const Text(
                "H Y D R I S",
                style: TextStyle(
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
