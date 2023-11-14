import 'package:flutter/material.dart';
import 'package:my_app/src/features/authentication/screens/login/login_page.dart';
import 'package:my_app/src/features/authentication/screens/signup/signup_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  // Function to build the welcome text
  Widget buildWelcomeText() {
    return const Column(
      children: [
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 8, 22, 49),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Get started with your account',
          style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 8, 22, 49),
          ),
        ),
      ],
    );
  }

  // Function to build the login button
  Widget buildLoginButton(BuildContext context) {
    return Container(
      width: 250,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(30.0),
          shadowColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 163, 163, 163),
          ),
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
    );
  }

  // Function to build the divider with 'or'
  Widget buildDividerOrText() {
    return const SizedBox(
      width: 260,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 8, 22, 49),
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
                color: Color.fromARGB(255, 8, 22, 49),
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: Color.fromARGB(255, 8, 22, 49),
              thickness: 2,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }

  // Function to build the register button
  Widget buildRegisterButton(BuildContext context) {
    return Container(
      width: 250,
      height: 45,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 8, 22, 49),
          ),
          elevation: MaterialStateProperty.all<double>(30.0),
          shadowColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 163, 163, 163),
          ),
        ),
        child: const Text(
          'Registser',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Logo sa app
            Image.asset('assets/images/logo.png', width: 300),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                bottom: 30.0,
                left: 28.0,
                right: 28.0,
              ),
              child: Column(
                children: [
                  buildWelcomeText(),
                  const SizedBox(height: 16),
                  buildLoginButton(context),
                  const SizedBox(height: 16),
                  buildDividerOrText(),
                  const SizedBox(height: 16),
                  buildRegisterButton(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
