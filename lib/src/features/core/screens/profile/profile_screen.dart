import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:my_app/src/features/core/screens/profile/widget/profile_menu_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text("Profile", style: TextStyle(color: Colors.amber)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? Icons.sunny : Icons.nights_stay))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: AssetImage('assets/images/person.jpg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      child: const Icon(
                        Icons.draw_sharp,
                        size: 18.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text("Code with Amaw"),
              const Text("amaw@gmail.com"),
              const SizedBox(height: 20),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () =>
                          Get.to(() => const UpdateProfileScreen()),
                      child: const Text("Edit Profile "))),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Settings", icon: Icons.settings, onPress: () {}),
              ProfileMenuWidget(
                  title: "Billing Details",
                  icon: Icons.attach_money_sharp,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "User Management", icon: Icons.check, onPress: () {}),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Information", icon: Icons.info, onPress: () {}),
              ProfileMenuWidget(
                  title: "Log Out",
                  icon: Icons.logout,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
