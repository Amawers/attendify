import 'package:flutter/material.dart';

import '../class/student_class.dart';
class LosPage extends StatefulWidget {
    const LosPage({super.key});

    @override
    State<LosPage> createState() => _LosPageState();
  }

  class _LosPageState extends State<LosPage> {
    List<Student> students = [
      Student(firstName: 'Lebron', lastName: 'Germs'),
      Student(firstName: 'Taylor', lastName: 'Sheesh'),
      Student(firstName: 'Skusta', lastName: 'Clean'),
      Student(firstName: 'James', lastName: 'Read'),
      Student(firstName: 'Ed', lastName: 'Shernan'),
      Student(firstName: 'Ed', lastName: 'Caluag'),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFF081631),
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C2C4B),
          actions: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'PRESENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              color: Color(0xFF081631),
              width: 1, // Adjust the width of the divider
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'ABSENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: 50),
            Column(
              children: students.map((student) => createCard(student)).toList(),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1C2C4B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                    child: Text(
                      'EXPORT DATA',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      );
    }

    /* Function for creating a student card Widget */
    Widget createCard(currentStudent) {
      return Container(
        margin: const EdgeInsets.fromLTRB(35, 0, 35, 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: const Color(0xFF1C2C4B),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 22, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${currentStudent.firstName}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '${currentStudent.lastName}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const Column(
                children: [
                  //CHANGE THIS LATER
                  Text(
                    '4:00 AM', //temporary
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'TIME IN',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }