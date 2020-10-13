import 'package:flutter/material.dart';
import 'package:hydris/collapsible_sidebar/custom_navigation_drawer.dart';
import 'package:hydris/collapsible_sidebar/theme.dart';
import 'dart:developer'; //needed for log

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
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
  int _selected_index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  static const TextStyle option_style =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widget_options = <Widget>[
    Text(
      "Index 0: Home",
      style: option_style,
    ),
    Text(
      "Index 1: Events",
      style: option_style,
    ),
    Text(
      "Index 2: Upcoming Bids",
      style: option_style,
    ),
    Text(
      "Index 3: Proposal",
      style: option_style,
    ),
    Text(
      "Index 4: Projects",
      style: option_style,
    ),
    Text(
      "Index 5: Appointment",
      style: option_style,
    ),
    Text(
      "Index 6: About",
      style: option_style,
    ),
    Text(
      "Index 7: Contact",
      style: option_style,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log("did this get called again");
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawer_background_color,
        title: const Text(
          "H Y D R I S",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: _widget_options.elementAt(_selected_index),
          ),
          CollapsingNavigationDrawer(
            onTap: _onItemTapped,
          )
        ],
      ),
    );
  }
}