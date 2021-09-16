import 'package:flutter/material.dart';

class CaluHome extends StatefulWidget {
  CaluHome({Key? key}) : super(key: key);

  @override
  _CaluHomeState createState() => _CaluHomeState();
}

class _CaluHomeState extends State<CaluHome> {
  int one = 0;
  int two = 0;
  String res = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: Text("CaluCater"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
