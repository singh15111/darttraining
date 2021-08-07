import 'dart:html';

import 'package:flutter/material.dart';
import 'package:praktis5/newhomepage.dart';

class InputText extends StatelessWidget {
  TextEditingController _amount, _interest, _months;
  String label, hint;
  Color color;
  double padding;
  InputText(this._amount, this._interest, this._months, this.label, this.hint,this.color,this.padding);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [

        TextField(
          controller: _amount,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "hey im hint",
            labelText: "hey im label",
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            

          ),
       

        ),

          TextField(
          controller: _interest,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "hey im hint",
            labelText: "hey im label",
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            

          ),
       

        ),


          TextField(
          controller: _months,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "hey im hint",
            labelText: "hey im label",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            

          ),
          
       

        ),



      ],
    ));
  }
}
