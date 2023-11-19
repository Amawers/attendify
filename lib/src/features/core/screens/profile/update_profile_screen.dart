import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/authentication/models/user_model.dart';
import 'package:my_app/src/features/core/controllers/profile_controller.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title:
            const Text("Edit Profile", style: TextStyle(color: Colors.amber)),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  final id = TextEditingController(text: userData.id);

                  final email = TextEditingController(text: userData.email);
                  final password =
                      TextEditingController(text: userData.password);
                  final fullName =
                      TextEditingController(text: userData.fullName);
                  final phoneNo = TextEditingController(text: userData.phoneNo);
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    image: AssetImage(
                                        'assets/images/person.jpg'))),
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
                                Icons.camera_alt,
                                size: 18.0,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Form(
                          child: Column(
                        children: [
                          TextFormField(
                            controller: fullName,
                            decoration: const InputDecoration(
                              label: Text("Full Name"),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: email,
                            decoration: const InputDecoration(
                              label: Text("Email"),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: phoneNo,
                            decoration: const InputDecoration(
                              label: Text("Phone Number"),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            controller: password,
                            decoration: const InputDecoration(
                              label: Text("Password"),
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () async {
                                  final userData = UserModel(
                                      email: email.text.trim(),
                                      password: password.text.trim(),
                                      fullName: fullName.text.trim(),
                                      phoneNo: phoneNo.text.trim(),
                                      id: id.text);

                                  await controller.updateRecord(userData);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.amber,
                                    side: BorderSide.none,
                                    shape: const StadiumBorder()),
                                child: const Text("Edit Profile")),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text.rich(TextSpan(
                                  text: "Joined",
                                  style: TextStyle(fontSize: 12),
                                  children: [
                                    TextSpan(
                                        text: "Nov 6, 2023",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20))
                                  ])),
                              ElevatedButton(
                                  onPressed: () {}, child: const Text("Delete"))
                            ],
                          )
                        ],
                      ))
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text("Something went wrong"));
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
