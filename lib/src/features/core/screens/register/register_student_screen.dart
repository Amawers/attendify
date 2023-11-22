import 'package:flutter/material.dart';
import 'package:my_app/src/common_widgets/form/form_header_widget.dart';
import 'package:my_app/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';
import 'package:my_app/src/features/core/screens/register/widgets/register_student_widget.dart';

class RegisterStudentScreen extends StatelessWidget {
  const RegisterStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              FormHeaderWidget(title: "Signup", subTitle: "welcome"),
              RegisterStudentForm()
            ],
          ),
        ),
      ),
    );
  }
}
