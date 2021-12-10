import 'package:flutter/material.dart';
import 'package:loginandsinguppage/login.dart';
import 'package:loginandsinguppage/maps.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(MapData.mapdata),
    );
  }
}
