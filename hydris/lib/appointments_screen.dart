import 'package:flutter/material.dart';
import 'package:hydris/app_bar.dart';
import 'package:hydris/category_card.dart';
import 'package:hydris/employee_card.dart';
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/unrecognizable_people.jpg",
                          fit: BoxFit.fitWidth,
                        )),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Stack(children: [
                              Text(
                                "Make an",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = Colors.white,
                                ),
                              ),
                              Text(
                                "Make an",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                            Stack(children: [
                              Text(
                                "Appointment",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 3
                                    ..color = Colors.white,
                                ),
                              ),
                              Text(
                                "Appointment",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                            Stack(children: [
                              Text(
                                "With Us",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 2
                                    ..color = Colors.blue[900],
                                ),
                              ),
                              Text(
                                "With Us",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                          width: 10.0, color: Theme.of(context).accentColor)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Find Your Desired Representative',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.blue[900]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(width: 4.0, color: Colors.blue[900])),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                        title: "CEO / Founder",
                        imageUrl: "assets/man.png",
                        bgColor: Colors.blue[900]),
                    CategoryCard(
                        title: "Sales Assistant",
                        imageUrl: "assets/dentist.png",
                        bgColor: Colors.blue[900]),
                    CategoryCard(
                        title: "Project Manager",
                        imageUrl: "assets/project_manager.png",
                        bgColor: Colors.blue[900]),
                    CategoryCard(
                        title: "Architect",
                        imageUrl: "assets/building_icon.png",
                        bgColor: Colors.blue[900]),
                    CategoryCard(
                        title: "R&D",
                        imageUrl: "assets/engineer.png",
                        bgColor: Colors.blue[900]),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    EmployeeCard(
                        name: "Jon Ramey",
                        description: "CEO/Founder",
                        imageUrl: "assets/man.png",
                        bgColor: Colors.blue[900]),
                    SizedBox(
                      height: 5,
                    ),
                    EmployeeCard(
                        name: "Sue Clarkson",
                        description: "Sales Assistant",
                        imageUrl: "assets/dentist.png",
                        bgColor: Colors.blue[900]),
                    SizedBox(
                      height: 5,
                    ),
                    EmployeeCard(
                        name: "Samuel Riggs",
                        description: "Architect",
                        imageUrl: "assets/building_icon.png",
                        bgColor: Colors.blue[900]),
                    SizedBox(
                      height: 5,
                    ),
                    EmployeeCard(
                        name: "Dani Dupont",
                        description: "Project Manager",
                        imageUrl: "assets/project_manager.png",
                        bgColor: Colors.blue[900]),
                    SizedBox(
                      height: 5,
                    ),
                    EmployeeCard(
                        name: "Oliver Paul",
                        description: "R&D",
                        imageUrl: "assets/engineer.png",
                        bgColor: Colors.blue[900]),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
