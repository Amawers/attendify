import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/authentication/models/user_model.dart';
import 'package:my_app/src/features/core/models/register_student_model.dart';
import 'package:my_app/src/repository/student_repository/student_repository.dart';

class RegisterStudentController extends GetxController {
  static RegisterStudentController get instance => Get.find();

  final fullNameController = TextEditingController(); // Adjusted controller
  final courseController = TextEditingController(); // Adjusted controller

  final studentRepo = Get.put(StudentRepository());

  Future<void> createStudent(StudentModel student) async {
    await studentRepo.createStudent(student);
    fullNameController.clear();
    courseController.clear();
  }
}
