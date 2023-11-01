import 'package:flutter/material.dart';
import 'package:chapter_7/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Starter Template',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
      //home: Quantity(), // Quantity Page
    );
  }
}
