import 'package:alphabitandtranspot/catagoryall.dart';
import 'package:alphabitandtranspot/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(AllCatagory.allcatagory),
    );
  }
}
