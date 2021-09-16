import 'package:flutter/material.dart';
import 'drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _button(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("HOME WORK"),
        centerTitle: true,
      ),
      drawer: DrawerPage("trailing", "title"),
    );
  }
}
