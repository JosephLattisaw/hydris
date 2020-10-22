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
            Align(
              child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                width: MediaQuery.of(context).size.width * .75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                ),
                child: Column(
                  children: [
                    Text(
                      "About Us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 4.0,
                      width: MediaQuery.of(context).size.width * .50,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Hydris is a veteran owned small business that has been in business since October of 2016. We are a DC based firm limited liability corporation that is VOB, MBE, 8a (pending) registered general contracting in the capital district. Hydris is 100% owned by a former veteran with the United States Army of Eight years with the infantry/Intel battalions. Our executive team is staffed with former veterans with a combined knowledge of 40 years of IT support, Construction management, Engineering, Physical Security, Access Controls, Telecommunications, Financial Management, Human Resourcing and Staffing, Intelligence and Insurance Related products.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
