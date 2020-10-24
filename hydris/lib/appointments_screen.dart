import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';

class AppointmentsScreen extends StatefulWidget {
  @override
  _AppointmentsScreenState createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HydrisAppBar(),
      drawer: MainDrawer(),
      body: Container(
        child: Text(
          "APPOINTMENT SCREEN",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
