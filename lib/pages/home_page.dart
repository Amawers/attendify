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
                  const Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize:
                                20, 
                            color: const Color.fromARGB(255, 8, 22, 49),
                            fontWeight: FontWeight.bold
                            
                            ),
                      ),
                      Text(
                        'Get started with your account',
                        style: TextStyle(
                          fontSize:
                              12, 
                          color: const Color.fromARGB(255, 8, 22, 49),
                          
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Para sa login button na container
                  Container(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                      // Navigate sa Log In Page 
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      // Para ma oval iyang shape sa button
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

                  /* Kani siya na SizedBox para ni siya tong mura'g separator between
                  Log In ug Register buttons, naay mura'g divider dayun ani */ 
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
                  ),

                  // Kani siya na Container para ni siya sa Register 
                  Container(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                      // Wala pa ge implement para mo navigate sa Register Page
                      onPressed: () {
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
