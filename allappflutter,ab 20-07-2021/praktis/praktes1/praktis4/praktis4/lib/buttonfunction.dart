import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonFunction extends StatelessWidget {
  Function _function,_clear;
  String _title,_cleartitle;
  ButtonFunction(this._function,this._clear,this._cleartitle, this._title);
  @override
  Widget build(BuildContext context) {
    return Row( children: [ Expanded( 
      child: ElevatedButton(
          onPressed: () {
            _function();
          },
          child: Text(_title)),
    ),
    
    Expanded( 
      child: ElevatedButton(
          onPressed: () {
            _clear();
          },
          child: Text(_cleartitle)),
    ),
    
    ]);
  }
}
