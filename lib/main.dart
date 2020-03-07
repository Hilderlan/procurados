import 'package:flutter/material.dart';
import 'package:procurados/view/home_screen.dart';

void main() => runApp(MyApp());

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