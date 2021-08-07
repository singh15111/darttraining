import 'package:flutter/material.dart';


class InputTextEdit extends StatelessWidget {
  TextEditingController editingController;
  String label, hint;

  Color color;
  double padding;

  InputTextEdit(
      {required this.editingController,
      this.label = "",
      this.hint = "",
      this.color = Colors.transparent,
      this.padding = 8.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: editingController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: hint,
                labelText: label,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.2))),
            style: TextStyle(color: color),
          ),
        ],
      ),
    );
  }
}


 