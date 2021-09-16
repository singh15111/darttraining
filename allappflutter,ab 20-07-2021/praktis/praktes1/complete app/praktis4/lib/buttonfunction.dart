import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonFunction extends StatelessWidget {
  Function _function, _clear;
  String _Calculate, _clearCalculate;
  ButtonFunction(
      this._function, this._clear, this._clearCalculate, this._Calculate);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ElevatedButton(
            onPressed: () {
              _function();
            },
            child: Text(_Calculate,
                style: TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.2))),
      ),
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            _clear();
          },
          child: Text(_clearCalculate,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.2)),
        ),
      )
    ]);
  }
}
