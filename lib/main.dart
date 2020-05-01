import 'package:flutter/material.dart';
import 'package:flutter_pages/Kryesore.dart';
import 'package:flutter_pages/Peticione.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  
  int _currentIndex = 0;
  final List<Widget> _children = [  
    Kryesore(),
    Peticione(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(
          icon: new Icon (Icons.home),
          title: new Text("Kryesore")
          ),
        BottomNavigationBarItem(
          icon: new Icon (Icons.assignment),
          title: new Text("Peticione")
          ),
        ]),
        
    );
  }
}
