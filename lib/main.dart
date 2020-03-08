import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:procurados/controller/home_controller.dart';
import 'package:procurados/services/api.dart';
import 'package:procurados/view/home_screen.dart';

void main() {
  GetIt.I.registerSingleton<Api>(Api());
  GetIt.I.registerSingleton<HomeController>(HomeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Procurados',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen()
    );
  }
}