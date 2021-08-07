import 'package:flutter/material.dart';
import 'package:praktis6_02_08_2021/animals.dart';

class NewPageData extends StatefulWidget {
  NewPageData({Key? key, required this.animalsName}) : super(key: key);
  final AnimalsName animalsName;
  @override
  _NewPageDataState createState() => _NewPageDataState();
}

class _NewPageDataState extends State<NewPageData> {
  String resu = "";
  void MyButton() {
    setState(() {});
    resu = AnimalsName() as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("secondpage"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text('${widget.animalsName.name1}'),
            ),
            Expanded(
              child: Text('${widget.animalsName.name2}'),
            ),
            Expanded(
              child: Text('${widget.animalsName.name3}'),
            ),
           // Expanded(
             // child: Text('${resu.animalsName.name4}'),
            //),
            Expanded(
                child: Row(
              children: [
                ElevatedButton(onPressed: MyButton, child: Text("CLICK ME"))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
