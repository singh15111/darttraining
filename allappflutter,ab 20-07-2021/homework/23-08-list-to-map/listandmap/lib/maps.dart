import 'package:flutter/material.dart';

class DrawerList {
  //static final List exp = [];

  static final List<DrawerOption> drawelist = [
    DrawerOption(
        Icon(Icons.access_alarm), Icon(Icons.ac_unit), "Sarbjeet", "subtitle"),
    DrawerOption(
        Icon(Icons.access_alarm), Icon(Icons.ac_unit), "Germany", "subtitl"),
    DrawerOption(
        Icon(Icons.access_alarm), Icon(Icons.ac_unit), "a", "subtitle"),
    DrawerOption(
        Icon(Icons.access_alarm), Icon(Icons.ac_unit), "b", "subtitle"),
  ];
}

class DrawerOption {
  Icon icon, icontrailing;
  String title, subtitle;
  DrawerOption(this.icon, this.icontrailing, this.title, this.subtitle);
}
