import 'package:flutter/material.dart';

class Apples extends StatelessWidget {
  String imagePath;
  Apples(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 1000,
        width: 500,
        // color: Colors.amberAccent,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          image: DecorationImage(image: NetworkImage(imagePath)

              // image: NetworkImage("https://www.collinsdictionary.com/images/full/apple_158989157.jpg"),

              ),
        ),
      ),
    ));
  }
}
