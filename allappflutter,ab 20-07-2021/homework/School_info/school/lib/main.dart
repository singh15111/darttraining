import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SchoolInfo(),
    );
  }
}

class SchoolInfo extends StatefulWidget {
  SchoolInfo({Key? key}) : super(key: key);

  @override
  _SchoolInfoState createState() => _SchoolInfoState();
}

class _SchoolInfoState extends State<SchoolInfo> {
  TextEditingController _roolnumber = TextEditingController();

  String _name = "";

  String resu = "";
  void Info(schoolinfo) {
    setState(() {
      _name = (_roolnumber.text);

      switch (schoolinfo) {
        case 1:
          resu = "Baljeet,Singh,19";
          resu = "45";
          break;

        case 2:
          resu = "Baljeet, 29";
          break;

        case 3:
          resu = "Singh,19";
          resu = "45";
          break;
        default:
      }
      _name = "${resu}";
    });
  }

  TextField createTextField(TextEditingController editingController) {
    return TextField(
      controller: editingController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School Info"),
      ),
      body: Center(
        child: Column(
          children: [
            createTextField(_roolnumber),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 245,
                ),
                child: Text(
                  "$_name",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Info(1);
                },
                child: Text("multiply")),
          ],
        ),
      ),
    );
  }
}
