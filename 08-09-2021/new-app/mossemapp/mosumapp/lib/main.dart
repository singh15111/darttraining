import 'package:flutter/material.dart';
import 'package:mosumapp/pages/homepage.dart';
import 'package:mosumapp/pages/loading.dart';
import 'package:mosumapp/pages/loction.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => LoadingPage(),
      "/home": (context) => HomePage(),
        "/loction": (context) => LoctionPage(),
      },
    ),
  );
}
