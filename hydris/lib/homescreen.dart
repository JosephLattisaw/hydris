import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hydris/main_drawer.dart';
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
  final timeout = const Duration(seconds: 3);
  final ms = const Duration(milliseconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      drawer: MainDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage('assets/1598.jpg'),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.orange[900],
              textColor: Colors.white,
              elevation: 130,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Learn More',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
