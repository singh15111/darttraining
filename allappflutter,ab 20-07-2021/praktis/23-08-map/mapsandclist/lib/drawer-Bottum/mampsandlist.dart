import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerOption {
  static final List<DrawerOptionList> drawelist = [
    DrawerOptionList(Icon(Icons.home), "home", Colors.cyan),
    DrawerOptionList(Icon(Icons.home), "home", Colors.cyan),
    DrawerOptionList(
      Icon(Icons.home),
      "home",
      Colors.amberAccent,
    ),
  ];
}

class DrawerOptionList {
  Icon icon;
  String title;
  Color color;
  DrawerOptionList(this.icon, this.title, this.color);
}
