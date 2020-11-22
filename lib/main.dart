import 'package:bottom_navigation/four.dart';
import 'package:bottom_navigation/one.dart';
import 'package:bottom_navigation/three.dart';
import 'package:bottom_navigation/two.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentIndex=0;
  final pages=[
    one(),
    two(),
    three(),
    four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.orange,
              icon: Icon((Icons.message)),
              title: Text("Message")),
          BottomNavigationBarItem(
              icon: Icon((Icons.call)), title: Text("Call")),
          BottomNavigationBarItem(
              icon: Icon((Icons.pan_tool)), title: Text("Tools")),
          BottomNavigationBarItem(
              icon: Icon((Icons.message)), title: Text("Message")),
        ],

        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: pages[
        _currentIndex
      ],
    );
  }
}
