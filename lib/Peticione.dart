import 'package:flutter/material.dart';

class Peticione extends StatefulWidget {
  @override
  _PeticioneState createState() => _PeticioneState();
}

class _PeticioneState extends State<Peticione> {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Peticione"),
      ),
      body: new Center(
        child: new Text("Peticionet Aktive"),
      ),
    ); 
  } 
}