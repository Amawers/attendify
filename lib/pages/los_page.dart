import 'package:flutter/material.dart';

import '../class/student_class.dart';
class LosPage extends StatefulWidget {
    const LosPage({super.key});

    @override
    State<LosPage> createState() => _LosPageState();
  }

  class _LosPageState extends State<LosPage> {
  //temporary collection for student list
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
            //Appbar Present Button
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
            //The Gap between Present and Absent button in the appBar
            const VerticalDivider(
              color: Color(0xFF081631),
              width: 1, // Adjust the width of the divider
            ),
            //Appbar Absent Button
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
        /*
        *
        *  The Main content of Los page
        *  This is the container of student Card
        *
        */
        body: ListView(
          children: [
            //It is the space between the the Column container of student cards
            //and the appbar
            const SizedBox(height: 50),
            //Container of the student card
            //The student card is the the container storing the student information
            //including pictures, names, and time-in
            Column(
              children: students.map((student) => createCard(student)).toList(),
            ),
            Center(
              //This is the export button located at the last part of
              // the student card list
              //Its purpose is to export all data
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

    /*
    * Function for creating a student card Widget
    * student card is the container where the student image, name, and time-in
    * is placed.
    * */
    Widget createCard(currentStudent) {
      return Container(
        margin: const EdgeInsets.fromLTRB(35, 0, 35, 30),
        //This boxdecoration purpose is to make the edge of the student card a
        //a bit round.
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: const Color(0xFF1C2C4B),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 22, 10),
          //This row container has two children which are Row container use
          //for containing the image and name of the student that is place at the
          //left side of the student card. The other child is a Column container
          //also use to place the time-in of the student that is located at the
          //left side of the student card.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //container for image and name of the student that is place at the
              // left side of the student card
              Row(
                children: [
                  //This is the first child of the left container.
                  //This is use to contain the student image
                  //but right now i use account_circle icon as substitute
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    child: const Icon(
                      Icons.account_circle,
                      size: 50,
                      color: Colors.blueAccent,
                    ),
                  ),
                  //This is the second child of the left container.
                  //This is used to contain the student first and last name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //first name of the student
                      Text(
                        '${currentStudent.firstName}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      //last name of the student
                      Text(
                        '${currentStudent.lastName}',
                        style: const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              //This is the container for time-in of student.
              //This is located at the right side of the student card
              const Column(
                children: [
                  //This is the time in of the student
                  Text(
                    '4:00 AM', //temporary
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  //This is the time-in label text
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