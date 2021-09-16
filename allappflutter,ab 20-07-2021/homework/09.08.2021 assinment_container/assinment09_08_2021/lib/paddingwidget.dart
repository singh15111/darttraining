import 'package:flutter/material.dart';
import 'homepage.dart';
import 'inputtrxt.dart';

class PaddingField extends StatelessWidget {
  TextEditingController editingController;

  String hint, label;
  int padding;
  Color color;

  PaddingField(
      {required this.editingController,
      this.hint = "",
      this.label = "",
      required this.padding,
      this.color = Colors.redAccent});

  @override
  Widget build(BuildContext context) {
    return (padding == 1)
        ? Padding(
            child: InputText(
              editingController: editingController,
              hint: hint,
              label: label,
              color: Colors.red,
            ),
            padding: EdgeInsets.all(8))
        : Padding(
            padding: EdgeInsets.all(8),
            child: Text('$label'),
          );
  }
}
