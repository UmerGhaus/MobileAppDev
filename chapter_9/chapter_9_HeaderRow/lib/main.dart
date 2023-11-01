import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/row_with_card.dart';
import 'widgets/row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Builder Example'),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return HeaderWidget(index: index);
              } else if (index >= 1 && index <= 3) {
                return RowWithCardWidget(index: index);
              } else {
                return RowWidget(index: index);
              }
            },
          ),
        ),
      ),
    );
  }
}
