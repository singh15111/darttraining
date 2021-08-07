import 'package:flutter/material.dart';

class CaluActionButton extends StatelessWidget {
  Function _function;
  String _title;

  CaluActionButton(this._function, this._title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        _function();
      },
      child: Text(
        _title,
        style: TextStyle(color: Colors.black45),
      ),
    ));
  }
}
