import 'package:CoffeeAppUI/home.dart';
import 'package:flutter/material.dart';
import './login_scrreen.dart';
import './food_details.dart';
import 'dart:html';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Tajawal"),
      home: LoginScreen(),
    );
  }
}
