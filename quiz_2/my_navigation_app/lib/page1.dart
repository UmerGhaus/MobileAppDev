import 'package:flutter/material.dart';
import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: Hero(
          tag: 'uniqueTag',
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Page2()));
            },
            child: Icon(
              Icons.add,
              size: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
