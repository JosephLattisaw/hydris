import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hydris/main_drawer.dart';
import 'package:hydris/screens/home_screen/widgets/expertise_widget.dart';
import 'package:hydris/screens/home_screen/widgets/features_title_widget.dart';
import 'package:hydris/screens/home_screen/widgets/quality_construction_widget.dart';
import 'package:hydris/screens/home_screen/widgets/real_quality_widget.dart';
import 'dart:developer';

import 'package:hydris/screens/home_screen/widgets/slogan_widget.dart'; //needed for log

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
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 600,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        image: AssetImage('assets/1598.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 20.0),
                child: QualityConstructionWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 50.0),
                child: Text(
                  "GOVERNMENT CONTRACTOR",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -3.0),
                ),
              ),
              Positioned(left: 20, top: 240, child: SloganWidget()),
              Positioned(
                bottom: 200,
                left: 30,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange[900],
                  textColor: Colors.white,
                  elevation: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Learn More',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 10.0, color: Colors.orange[900])),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Text(
                  "SERVICES",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900],
                      fontSize: 15),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Stack(children: [
                    Text(
                      "SERVICES",
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = .4
                          ..color = Colors.grey,
                      ),
                    ),
                    Text(
                      "SERVICES",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ),
              Positioned(
                left: 20,
                top: 75,
                child: Container(
                  child: Text("DEPENDING ON YOUR NEEDS",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                ),
              )
            ],
          ),
          Container(
            color: Colors.orange[900],
            height: 4,
            margin: EdgeInsets.only(left: 20, right: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Color.fromRGBO(244, 244, 244, 1), width: 2)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset("assets/png-icon-01.png"),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "BUILDING & CONSTRUCTION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset("assets/png-icon-02.png"),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "GOVERNMENT CONRTRACTING",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: Column(
                        children: [
                          Image.asset("assets/png-icon-03.png"),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "OFFICE & INTERIOR DESIGN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Column(
                        children: [
                          Image.asset("assets/png-icon-04.png"),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "INFORMATION & TECHNOLOGY",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: SizedBox(
              height: 30,
            ),
          ),
          Stack(children: [
            Container(
              height: 600,
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      image: AssetImage('assets/bg-01.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              top: 260,
              left: 15,
              child: Container(
                width: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/png-icon-05.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/png-icon-07.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(child: ExpertiseWidget())
                  ],
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 40,
              child: Container(
                width: 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        "assets/png-icon-05.png",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/png-icon-06.png",
                        fit: BoxFit.cover,
                      ),
                    ]),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(child: RealQualityWidget())
                  ],
                ),
              ),
            ),
            Positioned(
              left: 5,
              child: FeaturesTitleWidget(),
            ),
            Positioned(
              top: 95,
              left: 60,
              child: Text(
                "CORE FEATURES",
                style: TextStyle(
                    color: Colors.orange[900],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 130,
              child: Container(
                width: 250,
                child: Text(
                  "BUILD SERVICES",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      height: .8),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
