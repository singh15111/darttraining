import 'package:flutter/material.dart';
import 'package:listbulder/animals.dart';

class HomeSreen extends StatefulWidget {
  AnimalsName animalsvarible;
  HomeSreen(this.animalsvarible);

  @override
  _HomeSreenState createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text(widget.animalsvarible.title),
          Text(widget.animalsvarible.subtitle),
        ],
      )),
    );
  }
}
