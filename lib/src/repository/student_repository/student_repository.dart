import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:my_app/src/features/authentication/models/user_model.dart';
import 'package:my_app/src/features/core/models/register_student_model.dart';
import 'package:my_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:my_app/src/repository/user_repository/user_repository.dart'; // Import the UserRepository

class StudentRepository extends GetxController {
  static StudentRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository()); // Get the UserRepository

  Future<void> createStudent(StudentModel student) async {
    final email = _authRepo.firebaseUser.value?.email;
    final user = await _userRepo.getUserDetails(email!); // Get user details

    await _db
        .collection("Users")
        .doc(user.id)
        .collection("Students")
        .add(student.toJson());

    print("Student added for user with ID: ${user.id}");
  }
}
