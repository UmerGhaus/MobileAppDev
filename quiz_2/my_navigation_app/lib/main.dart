import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavigation(),
  ));
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [Page1(), Page2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation App')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // Add a notch
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.business),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Define your action
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
