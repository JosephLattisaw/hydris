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
                    color: Theme.of(context).primaryColor,
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
                          color: Theme.of(context).primaryColor,
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
                                      Icon(Icons.phone),
                                      Text("1-800-HYDRIS.")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
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
                                      Text("email@hydris")
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.orange[900],
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Column(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text("123 Street Ave.")
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                          height: 4,
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
                            labelText: "E-mail Address",
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.blue[900],
                            ),
                            //filled: true,
                            contentPadding: EdgeInsets.all(0),
                          ),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 4,
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
                            labelText: "Phone Number",
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.blue[900],
                            ),
                            contentPadding: EdgeInsets.all(0),
                          ),
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * .75,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue[900], width: 2.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.orange[900], width: 2.0)),
                          labelText: "Message",
                          prefixIcon: Icon(
                            Icons.edit,
                            color: Colors.blue[900],
                          ),
                        ),
                        maxLines: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      children: [
                        Text(
                          "Select which service below you wish to inquire about:",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white24,
                                  style: BorderStyle.solid)),
                          child: Row(
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
                                child: Text("Job Application"),
                                color: toggleServicesIndex == 3
                                    ? Colors.orange[900]
                                    : Colors.white,
                              ),
                            ],
                          ),
                        ),
                        RaisedButton(
                          elevation: 20,
                          onPressed: () {},
                          child: Text(
                            "Send Message",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          color: Colors.orange[900],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
