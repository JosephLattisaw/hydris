import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "assets/png-img-18.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              color: Colors.indigo[900],
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                            color: Colors.blue[100],
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
                            color: Colors.blue[100],
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
                            color: Colors.blue[100],
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
            )
          ],
        ),
      ),
    );
  }
}
