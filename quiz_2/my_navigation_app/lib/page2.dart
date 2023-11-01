import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
      body: Center(
        child: Hero(
          tag: 'uniqueTag',
          child: Icon(
            Icons.add,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
