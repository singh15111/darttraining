import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my first app",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _twoc = TextEditingController();
  int one = 0;
  int two = 0;

  String _myname = "";
  void updateName() {
    setState(() {
      one = int.parse(_name.text);
      two = int.parse(_twoc.text);
      int result = one + two;
      _myname = "Sum  of Two Number ${result}";
    });
  }

  void updateNameWith(value) {
    setState(() {
      _myname = value;
    });
  }

  int _textapp = 0;
  void _butten() {
    setState(() {
      _textapp++;
    });
  }

  int _dc = 0;
  void _newbutten() {
    setState(() {
      _dc--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hey"),
      ),
      body: (Center(
        child: Column(
          children: <Widget>[
            TextField(controller: _twoc),
            TextField(
                controller: _name,
                onSubmitted: (value) {
                  updateNameWith(value);
                },
                onChanged: (value) {
                  //updateNameWith(value);
                }),
            Text(
              "$_myname",
            ),
            FloatingActionButton(
              onPressed: updateName,
              child: Icon(Icons.access_time_filled_rounded),
            ),
            (Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "$_dc",
                  ),
                  FloatingActionButton(
                    onPressed: _newbutten,
                    child: Icon(Icons.access_time_filled_rounded),
                  ),
                ],
              ),
            )),
          ],
        ),
      )),
    );
  }
}
