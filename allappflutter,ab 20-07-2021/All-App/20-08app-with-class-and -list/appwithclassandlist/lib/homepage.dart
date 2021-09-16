import 'dart:ui';

import 'package:appwithclassandlist/DraweNavigation/drawer.dart';
import 'package:appwithclassandlist/bodys.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: Text("APP WITH CLASS AND LIST",
            style: TextStyle(color: Colors.purple)),
      ),
      drawer: Drawers(),
      body: Bodys(),
    );
  }
}
