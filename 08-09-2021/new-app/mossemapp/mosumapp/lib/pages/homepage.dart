import 'package:flutter/material.dart';
import 'package:routes_generator/routes_generator.dart';

import 'loading.dart';
import 'routes.map.dart';

import 'package:flutter/widgets.dart';
import 'package:routes_generator/routes_generator.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*
  /// Future and init state function
  
  
   void timmer() {
    Future.delayed(Duration(seconds: 5), () {
      print("alarm is rining");
      Navigator.pushNamed(context, "/loction");
    });
    print("object");
  }

  @override
  void initState() {
    
    super.initState();
    timmer();
    */

  /// void getData() async {
  ///Response response = await get(Uri.parse(
  /// 'https://api.openweathermap.org/data/2.5/weather?q=D%C3%BCsseldorf&appid=2695a9d6f9bdfe38f3a65e1cdd5575cf'));
/*
    Map data = jsonDecode(response.body);
    Map mousm = data['main'];
    double mousmdata = mousm['temp'];
    print(mousmdata);
    */

  /// Map weaterData = jsonDecode('weather');
  ///
  ///  Map datam = jsonDecode(response.body);
  ///List listWeatherData = datam['weather'];
  ///Map data = listWeatherData[0];

  ///print(data['main']);

  // @override
  //void initState() {
  // TODO: implement initState

  ///getData();
  //}

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Wetter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            //Text(info["temp_value"]),
          ],
        ),
      ),
    );
  }
}
