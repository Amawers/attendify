import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:my_app/src/features/authentication/models/user_model.dart';
import 'package:my_app/src/features/core/controllers/register_student_controller.dart';
import 'package:my_app/src/features/core/models/register_student_model.dart';

class RegisterStudentForm extends StatelessWidget {
  const RegisterStudentForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterStudentController());
    final formKey = GlobalKey<FormState>();

    return Container(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.fullNameController, // Adjusted controller
              decoration: const InputDecoration(
                label: Text("Full Name"),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: controller.courseController, // Adjusted controller
              decoration: const InputDecoration(
                label: Text("Course"),
                prefixIcon: Icon(Icons.school),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    final student = StudentModel(
                      fullName: controller.fullNameController.text.trim(),
                      course: controller.courseController.text.trim(),
                    );
                    const user = UserModel();
                    RegisterStudentController.instance
                        .createStudent(student);
                    
                            print("Student form ID: ${user.id}");

                  }
                },
                child: const Text("Register Student"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
