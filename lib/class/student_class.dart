class Student {
  String? firstName;
  String? lastName;
  bool? present;

  Student({this.firstName, this.lastName, this.present});
}

//temporary collection for student list
List<Student> students = [
  Student(firstName: 'Lebron', lastName: 'Germs', present: true),
  Student(firstName: 'Taylor', lastName: 'Sheesh', present: true),
  Student(firstName: 'Skusta', lastName: 'Clean', present: true),
  Student(firstName: 'James', lastName: 'Read', present: true),
  Student(firstName: 'Ed', lastName: 'Shernan', present: false),
  Student(firstName: 'Ed', lastName: 'Caluag', present: false),
];