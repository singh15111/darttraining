import 'package:flutter/material.dart';
import 'package:assinment28knolageandsports/knolageclass.dart';

class KnoalagePage extends StatefulWidget {
  KnoalagePage({Key? key}) : super(key: key);

  @override
  _KnoalagePageState createState() => _KnoalagePageState();
}

class _KnoalagePageState extends State<KnoalagePage> {
  int counter = 0;
  nextPage() {
    setState(() {
      if (counter < KnolageClass.knolage.length - 1) {
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Knoald"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Text(KnolageClass.knolage[counter]['qussin']),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
            ),
            ...(KnolageClass.knolage[counter]['answer'] as List)
                .map((e) => ElevatedButton(onPressed: nextPage, child: Text(e)))
                .toList()
          ],
        ),
      ),
    );
  }
}
