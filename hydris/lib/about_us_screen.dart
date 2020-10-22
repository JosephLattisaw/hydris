import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/main_drawer.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HydrisAppBar(),
        drawer: MainDrawer(),
        body: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/american-flag-3001893.png",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                color: Colors.redAccent[700],
                colorBlendMode: BlendMode.lighten,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.blue[900].withOpacity(0.9),
                Colors.black.withOpacity(.6),
              ])),
            ),
            Container(
              decoration: BoxDecoration(),
            )
          ],
        ),
      ),
    );
  }
}
