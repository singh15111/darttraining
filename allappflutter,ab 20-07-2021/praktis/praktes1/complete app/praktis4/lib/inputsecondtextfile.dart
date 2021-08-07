import 'package:flutter/material.dart';
import 'package:praktis4/inputtextedit.dart';

class InputSecondText extends StatelessWidget {
  TextEditingController _amountController,_interestamountController,_monthsController;

  String lable, hint;
  Color colors;

  double padding;
  InputSecondText(this._amountController, this. _interestamountController,
      this. _monthsController, this.lable, this.hint, this.colors, this.padding);

  @override
  Widget build(BuildContext context) {
    return Column( children: [
      InputTextEdit(editingController: _amountController,
      label: "Enter AMOUNT",
      hint: "ENTER AMOUNT",
      color: colors,
      padding: 8.0,
      ),

       InputTextEdit(editingController: _interestamountController,
      label: "Enter INTEREST",
      hint: "ENTER INTEREST",
      color: colors,
      padding: 8.0,
      ),


       InputTextEdit(editingController: _monthsController,
      label: "Enter MONTHS",
      hint: "ENTER MONTHS",
      color: colors,
      padding: 8.0,
      ),

     


      
    ],


 
    );
  }
}
