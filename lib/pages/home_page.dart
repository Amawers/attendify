import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(128, 28, 44, 75),
      body: Center(
        child: Card(
          color: Color.fromARGB(255, 8, 22, 49),
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 16), // Add some space between the buttons
                ElevatedButton(
                  onPressed: () {
                    // Add register functionality here
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
