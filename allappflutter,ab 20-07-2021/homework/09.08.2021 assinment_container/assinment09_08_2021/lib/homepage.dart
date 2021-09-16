import 'package:flutter/material.dart';

import 'inputtrxt.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _country = TextEditingController();
  String name = "";
  int age = 0;
  String country = "";

  void _button() {
    setState(() {
      name = _name.text;
      age = int.parse(_age.text);
      country = _country.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.all(60.5),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 45),
            ],
            gradient: RadialGradient(colors: [
              Colors.transparent,
              Colors.red,
            ])),
        // color: Colors.deepOrange,
        child: Column(
          children: [
            InputText(
              editingController: _name,
              hint: "Enter Name",
              label: "Name",
              color: Colors.red,
            ),
            InputText(
              editingController: _age,
              hint: "Enter age",
              label: "Age",
              color: Colors.red,
            ),
            InputText(
              editingController: _country,
              hint: "Enter country",
              label: "country",
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$name'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$age'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$country'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _button,
        child: Text(
          "CLICK ME",
          style: TextStyle(color: Colors.cyanAccent),
        ),
      ),
    );
  }
}
