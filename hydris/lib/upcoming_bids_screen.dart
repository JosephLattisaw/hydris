import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';

class UpcomingBidsScreen extends StatefulWidget {
  @override
  _UpcomingBidsScreenState createState() => _UpcomingBidsScreenState();
}

class _UpcomingBidsScreenState extends State<UpcomingBidsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HydrisAppBar(),
      drawer: MainDrawer(),
      body: Container(
        child: Text(
          "Upcoming Bids",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
