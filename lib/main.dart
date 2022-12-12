import 'package:coba/viewmodel/beranda_controller.dart';
import 'package:coba/views/landing.dart';
import 'package:coba/views/beranda.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  Get.put(BerandaController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Beranda(),
      // routes: <String, WidgetBuilder>{
      //   'landing': (BuildContext context) => new LandingPage(),
      // },
    );
  }
}
