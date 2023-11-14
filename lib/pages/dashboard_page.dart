import 'package:flutter/material.dart';
import 'package:my_app/src/repository/authentication_repository/authentication_repository.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(onPressed: () {
          AuthenticationRepository.instance.logout();
        }, icon: const Icon(Icons.abc, color: Colors.red,)),
      ),
    );
  }
}
