import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/authentication/controllers/signup_controller.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.fullName,
                decoration: const InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text("Phone Number"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: controller.password,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                  width: double.infinity,
                  child:
                      ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                            
                          }
                      }, child: Text("Sign Up"))),
              TextButton(
                  onPressed: () {},
                  child: const Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Log In",
                        style:
                            TextStyle(color: Color.fromARGB(255, 14, 178, 28)))
                  ])))
            ],
          )),
    );
  }
}
