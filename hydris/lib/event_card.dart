import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  String title;
  String description;
  String date;
  String month;
  Color bgColor;
  Color txtColor;
  Widget picture;

  EventCard(
      {this.title,
      this.description,
      this.date,
      this.month,
      @required this.bgColor,
      @required this.txtColor,
      @required this.picture});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bgColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: bgColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: TextStyle(
                      color: bgColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  month,
                  style: TextStyle(
                      color: bgColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: txtColor.withOpacity(0.7), fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
                color: txtColor.withOpacity(0.7), fontWeight: FontWeight.bold),
          ),
          trailing: Column(
            children: [
              Flexible(
                child: Container(color: Colors.black, child: picture),
              )
            ],
          ),
        ),
      ),
    );
  }
}
