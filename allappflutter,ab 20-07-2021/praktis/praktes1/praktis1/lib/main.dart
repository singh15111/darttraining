import 'package:flutter/material.dart';
import 'package:praktis1/loginpage.dart';
import 'package:praktis1/matrialapp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage(),
    );
  }
}

