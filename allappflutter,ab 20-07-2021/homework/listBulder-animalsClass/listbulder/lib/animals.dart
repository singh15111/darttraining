import 'package:flutter/material.dart';

class AnimalsData {
  static final List<AnimalsName> animalname = [
    AnimalsName(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "cat",
        "Black cat",
        Colors.amberAccent),
    AnimalsName(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "Dog",
        "German Dog",
        Colors.amberAccent),
    AnimalsName(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "Goat",
        "Goat",
        Colors.amberAccent),
    AnimalsName(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "maus",
        "maus",
        Colors.amberAccent),
  ];
}

class AnimalsName {
  Icon icon, icons;
  String title, subtitle;
  Color color;
  AnimalsName(this.icon, this.icons, this.subtitle, this.title, this.color);
}
