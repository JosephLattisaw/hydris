import 'package:flutter/material.dart';
import 'package:hydris/main_drawer.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  var toggleServicesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/launcher/icon_foreground.png",
                fit: BoxFit.scaleDown,
                height: 35,
                width: 35,
              ),
              Text("H Y D R I S"),
              SizedBox(
                height: 35,
                width: 35,
              )
            ],
          ),
          centerTitle: true,
        ),
        drawer: MainDrawer(),
        body: Stack(
          children: [
            Image.asset(
              "assets/png-img-18.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        border: Border(
                            top: BorderSide(color: Colors.black, width: 3.0))),
                    child: Column(
                      children: [
                        Text(
                          "Get in touch!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Contact us for a quote, help or to join the team",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Container(
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.orange[900],
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Column(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("123 Street Ave"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Expanded(
                                child: RaisedButton(
                                  elevation: 40.0,
                                  color: Colors.orange[900],
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Column(
                                    children: [
                                      Icon(Icons.phone),
                                      Text("1-800-HYDRIS"),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.orange[900],
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Column(
                                    children: [
                                      Icon(Icons.mail),
                                      Text("email@hydris"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Send us a message",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.blue[900], width: 2.0)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.orange[900], width: 2.0)),
                            fillColor: Colors.white,
                            labelText: "Name",
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue[900],
                            ),
                            //filled: true,
                            contentPadding: EdgeInsets.all(0),
                          ),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue[900], width: 2.0)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange[900], width: 2.0)),
                              fillColor: Colors.white,
                              labelText: "Email Address",
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.blue[900],
                              ),
                              //filled: true,
                              contentPadding: EdgeInsets.all(0)),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue[900], width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange[900], width: 2)),
                              fillColor: Colors.white,
                              labelText: "Phone Number",
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.blue[900],
                              ),
                              //filled: true,
                              contentPadding: EdgeInsets.all(0)),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.blue[900], width: 2)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.orange[900], width: 2)),
                              fillColor: Colors.white,
                              labelText: "Message",
                              prefixIcon: Icon(
                                Icons.edit,
                                color: Colors.blue[900],
                              ),
                              //filled: true,
                              contentPadding: EdgeInsets.all(0)),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            toggleServicesIndex = 0;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.orange[900], width: 2.0)),
                        child: Text("Quote"),
                        color: toggleServicesIndex == 0
                            ? Colors.orange[900]
                            : Colors.white,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            toggleServicesIndex = 1;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.orange[900], width: 2.0)),
                        child: Text("Proposal"),
                        color: toggleServicesIndex == 1
                            ? Colors.orange[900]
                            : Colors.white,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            toggleServicesIndex = 2;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.orange[900], width: 2.0)),
                        child: Text("Questions"),
                        color: toggleServicesIndex == 2
                            ? Colors.orange[900]
                            : Colors.white,
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            toggleServicesIndex = 3;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.orange[900], width: 2.0)),
                        child: Text("Apply"),
                        color: toggleServicesIndex == 3
                            ? Colors.orange[900]
                            : Colors.white,
                      ),
                    ],
                  ),
                  RaisedButton(
                    elevation: 20,
                    onPressed: () {},
                    child: Text(
                      "Send Message",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.orange[900],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
