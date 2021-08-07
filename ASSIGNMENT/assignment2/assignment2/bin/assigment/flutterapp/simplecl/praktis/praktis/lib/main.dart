import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: newPage(),
    );
  }
}

class newPage extends StatefulWidget {
  newPage({Key? key}) : super(key: key);

  @override
  _newPageState createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _myname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarr"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _name,
            ),
            TextField(
              controller: _myname,
            ),
          ],
        ),
      ),
    );
  }
}
