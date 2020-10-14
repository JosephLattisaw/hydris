import 'package:flutter/material.dart';
import 'dart:developer'; //needed for log

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HYDRIS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        /* title: const Text(
          "H Y D R I S",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),*/
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/launcher/icon_foreground.png",
                height: 30,
                width: 30,
              ),
              Text('HYDRIS'),
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
