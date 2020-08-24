import 'package:climate/screens/city_screen.dart';
import 'package:climate/screens/loading_screen.dart';
import 'package:climate/screens/location_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Climate',
      home: LoadingScreen(),
    );
  }
}
