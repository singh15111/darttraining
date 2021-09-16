import 'package:appwithclassandlist/fruits.dart';
import 'package:flutter/material.dart';
import 'fruits.dart';

class Bodys extends StatefulWidget {
  Bodys({Key? key}) : super(key: key);

  @override
  _BodysState createState() => _BodysState();
}

class _BodysState extends State<Bodys> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
      // color: Colors.amber,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage("Fruits.fruitsName")),
      ),
    );
  }
}
