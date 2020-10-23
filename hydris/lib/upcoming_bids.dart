import 'package:flutter/material.dart';

class UpcomingBids extends StatefulWidget {
  @override
  _UpcomingBidsState createState() => _UpcomingBidsState();
}

class _UpcomingBidsState extends State<UpcomingBids> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "UPCOMING BIDS",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
