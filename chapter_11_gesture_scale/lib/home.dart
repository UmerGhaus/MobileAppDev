import 'package:flutter/material.dart';
import 'gestures_handler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Scale and Move Image'),
      ),
      body: GestureDetectorDemo(),
    );
  }
}
