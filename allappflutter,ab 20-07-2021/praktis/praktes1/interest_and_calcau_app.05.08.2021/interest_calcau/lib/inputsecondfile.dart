import 'package:flutter/material.dart';
import 'inputtext.dart';

class SecondFile extends StatelessWidget {
  TextEditingController _amount, _interest, _months;
  String hint, label;
  double Padding;
  Color Colors;

  SecondFile(this._amount, this._interest, this._months, this.hint, this.label,
      this.Padding, this.Colors);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        InputText(editingController: _amount,
        hint: "PLEASE ENTER AMOUNT",
        label: "AMOUNT",
        padding: 8.8,
        colors: Colors),

         InputText(
            editingController: _interest,
            hint: "PLEASE ENTER INTEREST",
            label: "INTEREST",
            padding: 8.8,
            colors: Colors),

             InputText(
            editingController: _months,
            hint: "PLEASE ENTER MONTHS",
            label: "MONTHS",
            padding: 8.8,
            colors: Colors),
      ],
    );
  }
}
