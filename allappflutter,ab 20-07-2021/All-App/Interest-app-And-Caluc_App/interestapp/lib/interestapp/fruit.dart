import 'package:flutter/material.dart';

class Fruits {
  static final List fruitName = [
    "https://www.collinsdictionary.com/images/full/apple_158989157.jpg",
    "https://images.everydayhealth.com/images/diet-nutrition/how-many-calories-are-in-a-banana-1440x810.jpg",
    "https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg",
    "https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg",
  ];
  static final List botomOptions = [
    BottomOption(Icon(Icons.home), "Title"),
    BottomOption(Icon(Icons.home), "Title"),
    BottomOption(Icon(Icons.home), "Title"),
    BottomOption(Icon(Icons.home), "Title"),
  ];
}

class BottomOption {
  Icon icon;
  String title;
  BottomOption(this.icon, this.title);
}
