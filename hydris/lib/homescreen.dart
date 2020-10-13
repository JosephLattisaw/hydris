import 'package:flutter/material.dart';
import 'package:hydris/collapsible_sidebar/custom_navigation_drawer.dart';
import 'package:hydris/collapsible_sidebar/theme.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawer_background_color,
        title: Text("Collapsing Navigation Drawer/Sidebar"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: selected_color,
          ),
          CollapsingNavigationDrawer()
        ],
      ),
    );
  }
}

//TODO remove the below code
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selected_index = 0;

  static const TextStyle option_style =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widget_options = <Widget>[
    Text(
      "Index 0: Home",
      style: option_style,
    ),
    Text(
      "Index 1: Projects",
      style: option_style,
    ),
    Text(
      "Index 2: Proposal",
      style: option_style,
    ),
    Text(
      "Index 3: Appointment",
      style: option_style,
    ),
    Text(
      "Index 4: More",
      style: option_style,
    ),
    Text(
      "Index 4: More",
      style: option_style,
    ),
    Text(
      "Index 4: More",
      style: option_style,
    ),
  ];

  void _on_item_tapped(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: const Text(
          "H Y D R I S",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: _widget_options.elementAt(_selected_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "Projects"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Proposal"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Appointment"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Contact")
        ],
        currentIndex: _selected_index,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        onTap: _on_item_tapped,
        type: BottomNavigationBarType.fixed,
        elevation: 200.0,
      ),
    );
  }
}
