import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

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
      "Index 1: Business",
      style: option_style,
    ),
    Text(
      "Index 2: School",
      style: option_style,
    )
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
        title: const Text("BottomNavigatioBar Sample"),
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
              icon: Icon(Icons.business), label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School")
        ],
        currentIndex: _selected_index,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber[800],
        onTap: _on_item_tapped,
      ),
    );
  }
}
