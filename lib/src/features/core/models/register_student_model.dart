import 'package:cloud_firestore/cloud_firestore.dart';

class StudentModel{
  final String? id;
  final String fullName;
  final String course;

  const StudentModel({
    this.id,
    required this.fullName,
    required this.course

  });

  toJson(){
    return{
      "FullName": fullName,
      "Course": course
    };
  }

  factory StudentModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return StudentModel(
        id: document.id,
        fullName: data["FullName"],
        course: data["Course"]);
  }
}