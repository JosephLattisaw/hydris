import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  var name;
  var description;
  var imageUrl;
  Color bgColor;

  EmployeeCard(
      {@required this.name,
      @required this.description,
      @required this.imageUrl,
      @required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bgColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(imageUrl),
            title: Text(
              name,
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              description,
              style: TextStyle(
                color: Colors.blue[900].withOpacity(0.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
