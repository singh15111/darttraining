import 'package:flutter/material.dart';
import 'package:routes_generator/routes_generator.dart';
import 'package:mosumapp/worker/worker.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  late String temp;
  late String hum;
  late String air_speed;
  late String des;
  late String main;
  void startApp() async {
    Worker instance = Worker(location: "Delhi");
    await instance.getData();

    temp = instance.temp;
    hum = instance.humidity;
    air_speed = instance.air_speed;
    des = instance.description;
    main = instance.temp;
    // Navigator.of(context).pushNamed("/home", arguments: {
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "temp_value": temp,
      "hum_value": hum,
      "air_speed_value": air_speed,
      "des_value": des,
      "main_value": main,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    startApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Column(
        children: [
          Text("Loading"),
        ],
      ),
    );
  }
}
