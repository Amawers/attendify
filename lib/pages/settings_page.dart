import 'package:flutter/material.dart';
import 'package:my_app/core/notifiers.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081631),
      appBar: AppBar(        
        title: const Text('Settings'),
        backgroundColor: const Color(0xFF1C2C4B)
      ),
      body: Center(
        child: Column(
          // Button ni siya para sa kadtong options
          children: <Widget>[
              ElevatedButton(
                onPressed: () {
                },
                child: const Text('Manage Account'),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: const Text('Privacy Policy'),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: const Text('Contact Support'),
              ),

              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('About App'),
              ),
              ElevatedButton(
                onPressed: () {
                 
                },
                child: Text('Exit from the App'),
              ),
              
            ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkNotifier.value = !isDarkNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),
    );
  }
}
