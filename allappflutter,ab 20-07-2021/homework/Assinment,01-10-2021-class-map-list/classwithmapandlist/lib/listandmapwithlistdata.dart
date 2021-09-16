import 'package:flutter/material.dart';

class ListData {
  static final List<ListOption> listData = [
    ListOption(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "title",
        "subtitle",
        Colors.amberAccent),
    ListOption(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "sin",
        "subtitle",
        Colors.amberAccent),
    ListOption(
        Icon(Icons.home),
        Icon(
          Icons.home_max,
        ),
        "5e",
        "subtitle",
        Colors.amberAccent),
    ListOption(
      Icon(Icons.home),
      Icon(
        Icons.home_max,
      ),
      "4le",
      "subtitle",
      Colors.amberAccent,
    ),
  ];
}

class ListOption {
  Icon icon, trailingicon;
  String title, subtitle;
  Color color;

  ListOption(
      this.icon, this.trailingicon, this.title, this.subtitle, this.color);
}
