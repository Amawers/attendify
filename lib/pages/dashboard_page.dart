import "package:flutter/material.dart";

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Card(
              child: Text('This is '),
            ),
            Card(
              child: Text('Dashboard'),
            )
          ],
        ),
      ),
    );
  }
}
