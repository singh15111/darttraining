import 'package:flutter/material.dart';

class AssinMent extends StatefulWidget {
  AssinMent({Key? key}) : super(key: key);

  @override
  _AssinMentState createState() => _AssinMentState();
}

class _AssinMentState extends State<AssinMent> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _phone = TextEditingController();

  String namdata = "";
  void dataInfo(String Chice) {
    setState(() {});

    
  }

  TextField createTextField(TextEditingController editingController) {
    return TextField(
      controller: editingController,
    );
  }

  @override
  Widget build(BuildContext context) {
    var age;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("School Data"),
      ),
      body: Center(
        child: Column(
          children: [
            createTextField(_name),
            FloatingActionButton(
              onPressed: () {
                dataInfo("_name");
              },
              child: Icon(Icons.info),
            ),
          ],
        ),
      ),
    );
  }
}
