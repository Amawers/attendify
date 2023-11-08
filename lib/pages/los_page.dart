import 'package:flutter/material.dart';
import '../class/student_class.dart';

class LosPage extends StatefulWidget {
  const LosPage({super.key});

  @override
  State<LosPage> createState() => _LosPageState();
}

class _LosPageState extends State<LosPage> {
  //filtered list is use for filtering the list of student based on the value
  //of their present property.
  //by default the filtered list contain all students
  List<Student> filteredStudents = students;

  //list of option in the filter dropdown button
  List<String> filterOption = <String>['All', 'Present', 'Absent'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0), // here the desired height
          child: AppBar(
            elevation: 5.0,
            backgroundColor: const Color(0xffffffff),
          )),
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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Attendance Report',
                      style: TextStyle(
                        color: Color(0xFF1C2C4B),
                        fontSize: 26.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Monday, 21 Sep 2023',
                      style: TextStyle(
                        color: Color(0xFF1C2C4B),
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
                //dropdown button option widget for filtering list of student
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF1C2C4B),
                    ),
                    child: DropdownMenu<String>(
                      menuStyle: const MenuStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xFF1C2C4B),
                        ),
                      ),
                      initialSelection: filterOption.first,
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          filterStudentList(value);
                        });
                      },
                      dropdownMenuEntries: filterOption
                          .map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(
                            value: value, label: value);
                      }).toList(),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 50),
          //Container of the student card
          //The student card is the the container storing the student information
          //including pictures, names, and time-in
          Column(
            children:
                filteredStudents.map((student) => createCard(student)).toList(),
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
    *
    * filter the list based on the selected filter option
    *
    * */
  void filterStudentList(value) {
    switch (value) {
      case 'All':
        filteredStudents = students;
        break;
      case 'Present':
        filteredStudents =
            students.where((student) => student.present == true).toList();
        break;
      case 'Absent':
        filteredStudents =
            students.where((student) => student.present == false).toList();
    }
  }

  /*
    * Function for creating a student card Widget
    * student card is the container where the student image, name, and time-in
    * is placed.
    * */
  Widget createCard(currentStudent) {
    return Container(
      margin: const EdgeInsets.fromLTRB(35, 0, 35, 30),
      //This box decoration purpose is to make the edge of the student card a
      //a bit round.
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: const Color(0x009a9a9a).withOpacity(1),
            offset: const Offset(0, 3),
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
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
                      style: const TextStyle(
                        color: Color(0xFF1C2C4B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //last name of the student
                    Text(
                      '${currentStudent.lastName}',
                      style: const TextStyle(
                        color: Color(0xFF1C2C4B),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //This is the container for student attendance status
            //This is located at the right side of the student card
            attendanceStatus(currentStudent),
          ],
        ),
      ),
    );
  }

  /*
  *
  * function for creating attendanceStatus of studentcard
  * based on their present status
  *
  * */
  Widget attendanceStatus(currentStudent) {
    if (currentStudent.present) {
      return const Column(
        children: [
          //This is the time n of the student
          Row(
            children: [
              Icon(
                Icons.how_to_reg_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'PRESENT',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //This is the time-in label text
          Row(
            children: [
              Text(
                '4:00 AM', //temporary
                style: TextStyle(
                    color: Color(0xFF1C2C4B),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'TIME IN',
                style: TextStyle(
                  color: Color(0xFF1C2C4B),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      );
    } else {
      return const Row(
        children: [
          Icon(
            Icons.person_off,
            color: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'ABSENT',
            style: TextStyle(
                color: Colors.red, fontSize: 18, fontWeight: FontWeight.w900),
          )
        ],
      );
    }
  }
}
