import 'package:flutter/material.dart';
import 'buttons.dart';

class ButtonNewFile extends StatelessWidget {
  Function _coluCalate, _clear;

  String labelclear, labelcaluc, labeltext;
  ButtonNewFile(this._coluCalate, this._clear, this.labelclear, this.labelcaluc,
      this.labeltext);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CaluActionButton(_coluCalate, labelclear),
          CaluActionButton(_clear, labelcaluc),
          CaluActionButton(_clear, labeltext),
        ],
      ),
    );
  }
}
