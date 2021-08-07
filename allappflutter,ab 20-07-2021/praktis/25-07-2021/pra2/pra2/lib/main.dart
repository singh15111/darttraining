import 'package:flutter/material.dart';

import 'package:pra2/person.dart';
import 'package:pra2/wild.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController tex = TextEditingController();

  String _myname = "";

  void Button() {
    setState(() {
      PersonInfo mn = PersonInfo();
      String choice = tex.text;

      switch (choice) {
        case "name":
          _myname = mn.name;
          break;

        case "lastname":
          _myname = mn.lastname;
          break;

        default:
      }

      mn.name = tex.text;
      //_myname = '${mn.name} ${mn.lastname}';

      Wild animalsname = Wild();
    });
  }

  // get name => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("oop"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(controller: tex),
            Text("$_myname", style: TextStyle(color: Colors.indigo)),
            FloatingActionButton(onPressed: () {
              Button();
            }),
          ],
        ),
      ),
    );
  }
}
