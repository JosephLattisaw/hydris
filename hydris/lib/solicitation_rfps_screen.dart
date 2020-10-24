import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';

class SolicitationRFPSScreen extends StatefulWidget {
  @override
  _SolicitationRFPSScreenState createState() => _SolicitationRFPSScreenState();
}

class _SolicitationRFPSScreenState extends State<SolicitationRFPSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HydrisAppBar(),
      drawer: MainDrawer(),
      body: Container(
        child: Text(
          "Solicitation RFPS",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
