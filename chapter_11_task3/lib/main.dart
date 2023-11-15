import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Task3(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen, // Change the primarySwatch to lightGreen
      ),
    );
  }
}
