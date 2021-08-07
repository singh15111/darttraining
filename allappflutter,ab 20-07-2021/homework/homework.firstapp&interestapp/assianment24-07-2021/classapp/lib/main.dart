import 'package:flutter/material.dart';

import 'school.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClassApp(),
    );
  }
}

class ClassApp extends StatefulWidget {
  ClassApp({Key? key}) : super(key: key);

  @override
  _ClassAppState createState() => _ClassAppState();
}

class _ClassAppState extends State<ClassApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("data"),
      ),*/
      body: AssinMent(),
    );
  }
}
