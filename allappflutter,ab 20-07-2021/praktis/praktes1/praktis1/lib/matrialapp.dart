import 'package:flutter/material.dart';
import 'package:praktis1/loginpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
      appBar: AppBar(
        title: Text("AppBarr"),
      ),
    );
  }
}
