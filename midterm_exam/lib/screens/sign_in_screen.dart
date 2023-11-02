import 'package:flutter/material.dart';
import 'package:midterm/screens/sign_up_screen.dart';
import 'package:midterm/screens/friend_list_screen.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'background_image.jpg', // Replace with your image asset path
            fit: BoxFit.cover, // You can adjust the fit as needed
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Your existing UI components here
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 26.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 36, // Adjust the font size as needed
                          fontWeight: FontWeight.bold, // Make it bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0.0,
                          right: 46.0), // Add padding from left and right
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red), // Border color
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0.0), // Top left corner
                            topRight:
                                Radius.circular(120.0), // Top right corner
                            bottomLeft:
                                Radius.circular(0.0), // Bottom left corner
                            bottomRight:
                                Radius.circular(120.0), // Bottom right corner
                          ),
                        ),
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            // Username text field
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person), // User icon
                                labelText: 'Username',
                                border: InputBorder.none, // No input border
                              ),
                            ),
                            // Password text field
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock), // Lock icon
                                labelText: 'Password',
                                border: InputBorder.none, // No input border
                              ),
                              obscureText:
                                  true, // Password input should be obscured
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle sign-in logic and navigate to the friend list screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FriendListScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Red color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Rounded button
                      ),
                    ),
                    child: Text('Sign In'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Navigate to the sign-up screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.red, // Red color
                      ),
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 26, // Set text size to 26
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
