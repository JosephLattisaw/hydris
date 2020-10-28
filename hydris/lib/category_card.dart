import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  var title;
  var imageUrl;
  var bgColor;

  CategoryCard(
      {@required this.title, @required this.imageUrl, @required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 110,
              height: 137,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(imageUrl),
            ),
          )
        ],
      ),
    );
  }
}
