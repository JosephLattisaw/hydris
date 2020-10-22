import 'package:flutter/material.dart';
import 'package:hydris/screens/home_screen/home_screen.dart';
import 'package:hydris/contact_screen.dart';
import 'package:hydris/splashscreen.dart';
import 'package:hydris/about_us_screen.dart';

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

void main() {
  runApp(MaterialApp(
    home: AboutUsScreen(),
    title: 'HYDRIS',
    theme: ThemeData(
      primarySwatch: MaterialColor(0xFF003065, custom_swatch_color),
    ),
  ));
}
