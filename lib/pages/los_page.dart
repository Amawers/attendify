import 'package:flutter/material.dart';
import '../class/student_class.dart';

class LosPage extends StatefulWidget {
  const LosPage({super.key});

  @override
  State<LosPage> createState() => _LosPageState();
}

class _LosPageState extends State<LosPage> {
  //filtered list of student based on chosen filter option
  //by default the filtered list contain all students
  List<Student> filteredStudents = students;

  //filter option
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
        *
        */
      body: ListView(
        children: [
          //It is the space between the appbar and main content
          const SizedBox(height: 50),
          //container for attendance report label and filter option button
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
                        fontSize: 22.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Monday, 21 Sep 2023',
                      style: TextStyle(
                        color: Color(0xFF1C2C4B),
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
                //dropdown button option widget for filtering list of student
                Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF1C2C4B),
                    ),
                    child: DropdownMenu<String>(
                      width: 110.0,
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
          //space between filteroption button container and student list card
          const SizedBox(height: 50),
          /*
           *Container of the student card
           *The student card is the the container storing the student information
           *including pictures, names, and attendance status
           *
          */
          Column(
            children:
                filteredStudents.map((student) => createCard(student)).toList(),
          ),
          Center(
            /*
             *This is the export button located at the last part of
             *the student card list
             *Its purpose is to export all data
             */
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
   * function handler when use select a filter option
   * this filter the list based on the selected filter option
   *
   */
  void filterStudentList(selectedOption) {
    switch (selectedOption) {
      case 'All':
        filteredStudents = students;
        break;
      case 'Present':
      case 'Late':
        filteredStudents = students
            .where((student) =>
                student.attendanceStatus == 'present' ||
                student.attendanceStatus == 'late')
            .toList();
        break;
      case 'Absent':
        filteredStudents = students
            .where((student) => student.attendanceStatus == false)
            .toList();
    }
  }

  /*
    * Function for creating a student card Widget
    * student card is the container where the student image, name, and time-in
    * is placed.
    */
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
        /*
         *Row container that has two children which are
         * 1.Row container(left side) for containg image and student names and
         * 2.Column container(right side) for containing attendance status
         */
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //left side row container for image and student names
            Row(
              children: [
                //Image container
                Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: const Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.blueAccent,
                  ),
                ),
                //student name column container
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
            //right side row container for attendance status
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
          //present status label and time in
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
    }
    //absent label
    else {
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
