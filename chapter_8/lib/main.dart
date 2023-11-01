import 'package:flutter/material.dart';
import 'widgets/gridview_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Builder'),
        ),
        body: SafeArea(
          child: const GridViewBuilderWidget(),
        ),
      ),
    );
  }
}
