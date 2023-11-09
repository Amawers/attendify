import 'package:flutter/material.dart';
import 'package:my_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/logo.png', width: 300),
            const SizedBox(height: 16), // Add some space above the buttons
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0, // Adjust the top padding value as needed
                bottom: 30.0, // Adjust the bottom padding value as needed
                left: 28.0, // Adjust the left padding value as needed
                right: 28.0, // Adjust the right padding value as needed
              ),
              child: Column(
                children: [
                  const Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize:
                                20, // Adjust the font size for the first Text widget
                            color: const Color.fromARGB(255, 8, 22, 49),
                            fontWeight: FontWeight.bold
                            // Add any other styles you want for the first Text widget
                            ),
                      ),
                      Text(
                        'Get started with your account',
                        style: TextStyle(
                          fontSize:
                              12, // Adjust the font size for the second Text widget
                          color: const Color.fromARGB(255, 8, 22, 49),
                          // Adjust the text color for the second Text widget
                          // Add any other styles you want for the second Text widget
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(30.0),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 163, 163, 163)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 8, 22, 49),
                        ),
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Add some space between the buttons
                  const SizedBox(
                    width: 260,
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: const Color.fromARGB(255, 8, 22, 49),
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'or',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 8, 22, 49),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: const Color.fromARGB(255, 8, 22, 49),
                            thickness: 2,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ), // Add some space between the line and the "Register" button
                  Container(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add register functionality here
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 8, 22, 49),
                        ),
                        elevation: MaterialStateProperty.all<double>(30.0),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 163, 163, 163)),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
