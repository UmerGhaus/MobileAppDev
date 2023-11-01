import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgetPasswordScreen(email: 'user@gmail.com'),
    );
  }
}

class ForgetPasswordScreen extends StatelessWidget {
  final String email;

  ForgetPasswordScreen({required this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'lockicon.png',
                      width: 40.0, // Set the desired width
                      height: 40.0, // Set the desired height
                    ),
                    Text(
                      '  Forget Password?',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Arial',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Opacity(
                opacity: 0.6, // Set the desired opacity value
                child: Text(
                  'Enter your email that you used to register your account, so we can send you a link to reset your password.',
                  style: TextStyle(
                    fontSize: 16.0, // Set the desired font size
                    fontFamily: 'Arial',
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 16.0,
                right: 16.0,
                bottom: 6.0,
              ),
              child: Row(
                children: [
                  Text(
                    'Email ',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Arial',
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '*',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Arial',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 0.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic for sending the link here
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Text(
                      'Send Link',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Arial',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forget your email? ',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Arial',
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your logic for handling "Try Phone Number" click
                    },
                    child: Text(
                      'Try Phone Number',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Arial',
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
