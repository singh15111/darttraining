import 'package:flutter/material.dart';
import 'package:listbulder/animals.dart';
import 'package:listbulder/homepage.dart';
import 'package:listbulder/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// home: HomeSreen(AnimalsData.animalname[1]),
      home: HomePage(),
    );
  }
}
