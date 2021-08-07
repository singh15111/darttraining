import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int _number = 0;

  void _Button() {
    setState(() {
      _number + 2;
    });
  }

  void _NewButton() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$_number"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _Button,
        tooltip: "Click Mee",
        child: Icon(Icons.accessibility_sharp),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _NewButton,
        tooltip: "Click Mee",
        child: Icon(Icons.ac_unit_rounded),
      ),
    );
  }
}
