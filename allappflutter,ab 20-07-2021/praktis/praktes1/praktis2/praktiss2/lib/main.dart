import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:LoginPage(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "HomeApp",
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
    );
  }
}
