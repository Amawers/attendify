import 'package:flutter/material.dart';
import 'package:my_app/core/notifiers.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Column(
          children: [
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
