import 'package:flutter/material.dart';
import 'package:midterm/screens/sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.red, // Set the background color to blue
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person), // User icon
                  labelText: 'Full Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email), // Email icon
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock), // Lock icon
                  labelText: 'Password',
                ),
                obscureText: true, // Password input should be obscured
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // Red color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Rounded button
                ),
              ),
              onPressed: () {
                // Handle sign-up logic here
                // You can add your sign-up code here
                // After successful sign-up, navigate back to the sign-in screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 16, // Set text size to 26
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
