import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  String title;
  TextPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Text('$title');
  }
}
