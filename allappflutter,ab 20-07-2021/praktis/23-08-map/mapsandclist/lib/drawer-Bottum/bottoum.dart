import 'dart:ui';

import 'package:flutter/material.dart';

class BottoumNavigationList extends StatefulWidget {
  BottoumNavigationList({Key? key}) : super(key: key);

  @override
  _BottoumNavigationListState createState() => _BottoumNavigationListState();
}

class _BottoumNavigationListState extends State<BottoumNavigationList> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              "data",
              style: TextStyle(color: Colors.amber),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("data"),
            backgroundColor: Colors.deepOrange,
            tooltip: "hey"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.redAccent,
            ),
            title: Text("data")),
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("data")),
      ],
    );
  }
}
