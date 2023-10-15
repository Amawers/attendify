import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 22, 49),
      body: Center(
        child: Card(
          color: const Color.fromARGB(255, 8, 22, 49),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/ATtendify.png', width: 400),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)), // Set your desired background color here
                    ),
                    child: const Text(
                      'Log In',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color(0xFF081631)),
                    ),
                  ),
                ),

                const SizedBox(
                    height: 16), // Add some space between the buttons
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add register functionality here
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 255, 255, 255)),
                    ),
                    child: const Text(
                      'Register',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color(0xFF081631)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
