
import 'package:flutter/material.dart';
import 'texteditingfile.dart';

class InpuText extends StatelessWidget {
  String label, hint;
 TextEditingController editingController;
  Color color;
  double padding;

  InpuText(
      {this.label = "",
      this.hint ="",
      required this.editingController,
      this.color =Colors.amber ,
      this.padding =8.0 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: TextField(
        controller: editingController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.2)))),
        style: TextStyle(color: color),
      ),
    );
  }
}
