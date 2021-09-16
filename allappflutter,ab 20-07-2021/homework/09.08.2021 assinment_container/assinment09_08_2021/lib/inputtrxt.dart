import 'package:flutter/material.dart';
import 'homepage.dart';

class InputText extends StatelessWidget {
  TextEditingController editingController;

  String hint, label;

  Color color;

  InputText(
      {required this.editingController,
      this.hint = "",
      this.label = "",
     
      this.color = Colors.redAccent});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: editingController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(28.50))),
    
    );
  }
}
