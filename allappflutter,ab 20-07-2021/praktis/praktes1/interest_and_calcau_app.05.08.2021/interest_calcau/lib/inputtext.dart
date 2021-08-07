import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  TextEditingController editingController;
  String hint, label;
  Color colors;
  double padding;
  InputText(
      {required this.editingController,
      this.hint = "",
      this.label = "",
      this.colors = Colors.black87,
      this.padding = 82.5});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextField(
            controller: editingController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: hint,
                labelText: label,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.5))),
            style: TextStyle(color: Colors.red),
          )
        ],
      ),
    );
  }
}
