import 'package:flutter/material.dart';

import 'package:praktis4/myhomepage.dart';
import 'inputsecondtextfile.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
