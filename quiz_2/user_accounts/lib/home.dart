import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'user_accounts_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AccountScreen(),
          ],
        ),
      ),
    );
  }
}
