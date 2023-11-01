import 'package:flutter/material.dart';
import 'account_screen.dart';

class UserAccountsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Accounts Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AccountScreen(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Icon(Icons.lock, size: 48),
                            Text('Forgot password?',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate back to the previous screen.
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                      'Enter your email that you used to register your account, so we can send you a link to reset your password.'),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Send Link'),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Forgot your email? '),
                        Text('Try phone number',
                            style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
