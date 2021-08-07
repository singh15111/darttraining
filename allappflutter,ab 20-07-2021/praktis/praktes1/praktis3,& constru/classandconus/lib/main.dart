import 'package:flutter/material.dart';
import 'class.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Text(
            "class and Conus",
            style: TextStyle(color: Colors.cyanAccent),
          ),
        ),
        body: Center(
          child: Column(
            children: [Text("data")],
          ),
        ),
      ),
    );
  }
}
