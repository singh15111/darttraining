import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  Map<String, dynamic> name;
  HomePage(this.name);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(widget.name['name'][0]['LastName'])),
    );
  }
}
