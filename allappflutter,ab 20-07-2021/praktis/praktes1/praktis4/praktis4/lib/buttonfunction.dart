import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonFunction extends StatelessWidget {
  Function _caluca, _clear;
  String _Calucate, _Clear;
  ButtonFunction(this._caluca, this._clear, this._Calucate, this._Clear);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ElevatedButton(
            onPressed: () {
              _caluca();
            },
            child: Text(_Calucate)),
      ),
      Expanded(
        child: ElevatedButton(
            onPressed: () {
              _clear();
            },
            child: Text(_Clear)),
      ),
    ]);
  }
}
