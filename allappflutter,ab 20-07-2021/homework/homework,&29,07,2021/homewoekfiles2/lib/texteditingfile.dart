import 'package:flutter/material.dart';

import 'inputtext.dart';
import 'textino.dart';

class TextEditFile extends StatelessWidget {
  TextEditingController amountController, interestController, monthsController;

  String lable, hint;
  Color color;

  double padding;
  TextEditFile(this.amountController, this.interestController,
      this.monthsController, this.lable, this.hint, this.color, this.padding);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InpuText(
          label: "INterst",
          hint: hint,
          padding: padding,
          color: color,
          editingController: amountController),
      InpuText(
          hint: "Enter Interest",
          label: "Amount",
          editingController: interestController,
          color: Colors.black87,
          padding: 8.0),
      InpuText(
          label: "Enter Months",
          hint: "Months",
          editingController: monthsController,
          color: Colors.black87,
          padding: 8.0),
      Padding(
        padding: const EdgeInsets.all(8.0),
      ),
    ]);
  }
}
