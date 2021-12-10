import 'package:flutter/material.dart';
import 'package:listwithmap/allcatagorydata.dart';
import 'package:listwithmap/homepage.dart';
import 'package:listwithmap/maps.dart';

void main() {
  debugPrint(Maps.data['transport'][1]);
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
