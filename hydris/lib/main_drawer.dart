import 'package:flutter/material.dart';
import 'package:hydris/about_us_screen.dart';
import 'package:hydris/contact_screen.dart';
import 'package:hydris/screens/home_screen/home_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(bottom: 10),
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage('assets/1796.jpg'),
                          fit: BoxFit.cover)),
                ),
                Text(
                  'Menu',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text(
            'Events',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.lock_clock),
          title: Text(
            'Upcoming Bids',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.add_circle),
          title: Text(
            'Solicitation RFPs',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.construction),
          title: Text(
            'Projects',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.today),
          title: Text(
            'Appointment',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'About',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutUsScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_mail),
          title: Text(
            'Contact',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ContactScreen(),
              ),
            );
          },
        ),
        ListTile(),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
      ],
    ));
  }
}
