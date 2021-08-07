import 'package:flutter/material.dart';

import 'inputtext.dart';
import 'inputsecondfile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _amount = TextEditingController();
  TextEditingController _interest = TextEditingController();
  TextEditingController _months = TextEditingController();
  String res = "";
  String calu = "";

  void _buttonClick() {
    setState(() {
      double enteramount = double.parse(_amount.text);
      double enterinterest = double.parse(_interest.text);
      double entermonths = double.parse(_months.text);
      double calu = enteramount * enterinterest * entermonths / 100;

      res = '$calu';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
        title: Text("INTERSET"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: SecondFile(_amount, _interest, _months, "hint", "label",
                    8.5, Colors.black)),
            Container(
              child: Expanded(
                child: Text('$res',style: TextStyle(color: Colors.blueAccent,fontWeight:FontWeight.bold),),
              ),
            ),
            ElevatedButton(onPressed: _buttonClick, child: Text("Click Me")),
          ],
        ),
      ),
    );
  }
}
