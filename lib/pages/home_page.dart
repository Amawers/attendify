import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(128, 28, 44, 75),
      body: Center(
        child: Card(
          color: Color.fromARGB(255, 8, 22, 49),
          child: Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'This is what is ssr page',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      
    );
  }
}
