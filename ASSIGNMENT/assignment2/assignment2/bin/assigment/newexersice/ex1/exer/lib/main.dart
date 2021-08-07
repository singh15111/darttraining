import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyNew());
}

class MyNew extends StatelessWidget {
  const MyNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewHome(),
    );
  }
}

class NewHome extends StatefulWidget {
  NewHome({Key? key}) : super(key: key);

  @override
  _NewHomeState createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  TextEditingController _newapp = TextEditingController();
  String _myapp = "";

  void _buttonTry() {
    setState(() {
      _myapp = _newapp.text;
    });
  }

  void _newVal(value) {
    setState(() {
      _myapp = (value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New app"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
                controller: _newapp,
                onSubmitted: (value) {
                  _newVal(value);
                }),
            Text("$_myapp")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _buttonTry,
        child: Text("plz Cleck Here"),
      ),
    );
  }
}
