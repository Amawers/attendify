import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300, // Set the desired width
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff101010),
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, // Center the Row horizontally
                mainAxisSize: MainAxisSize
                    .min, // Take up as little vertical space as possible
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          'Morning, Kid Khulafu',
                          style: TextStyle(
                            color: Color(0xff081631),
                            fontWeight: FontWeight.bold,
                            fontSize: 14, // Change the font size here
                          ),
                        ),
                        Text(
                          'Monday, 9 Nov 2023',
                          style: TextStyle(
                            color: Color(0xff081631),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    width: 50,
                    height: 50,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/person.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20), // Add space between the containers

            // Add 3 rows for this container
            // main overview
            Container(
              width: 320, // Set the desired width
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius:
                    BorderRadius.circular(20), // Adjust the radius as needed
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff101010),
                    blurRadius: 2,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Overview',
                          style: TextStyle(
                              color: Color(0xFF081631),
                              fontWeight: FontWeight.w900,
                              fontSize: 18), // Change text color to white
                        ),
                        Card(
                          color: Color(0xFF081631),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 10, // Adjust the left padding as needed
                              top: 7, // Adjust the top padding as needed
                              right: 10, // Adjust the right padding as needed
                              bottom: 7, // Adjust the bottom padding as needed
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Seen All',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 8),
                                ),
                                Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.white,
                                  size: 10,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20), // Add space between the containers

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_add_alt_1,
                                    color: Color(0xff081631), size: 25),
                                Text(
                                  'Present',
                                  style: TextStyle(
                                      color: Color(0xff081631),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            Text(
                              '69',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 104, 17),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.no_accounts_rounded,
                                    color: Color(0xff081631), size: 25),
                                Text(
                                  'Absent',
                                  style: TextStyle(
                                    color: Color(0xff081631),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '7',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 177, 0, 0),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20), // Add space between the containers

                    const Text(
                      'As of 8:00AM',
                      style: TextStyle(
                          color: Color(0xff081631),
                          fontWeight: FontWeight.bold,
                          fontSize: 8),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between the containers

            // 3 buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // Center the buttons horizontally
              children: [
                // Attendance
                Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Vertically center content
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Horizontally center content

                    children: [
                      Card(
                          color: Color.fromARGB(255, 18, 104, 22),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.people,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 25),
                          )),
                      Text(
                        'Attendance',
                        style: TextStyle(
                            color: Color(0xff081631),
                            fontSize: 10,
                            fontWeight: FontWeight
                                .bold // Adjust the font size as needed
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // class scheduling
                Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Vertically center content
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Horizontally center content
                    children: [
                      Card(
                        color: Colors.orange,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.lock_clock,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 25),
                        ),
                      ),
                      Text(
                        'Class Scheduling',
                        style: TextStyle(
                            color: Color(0xff081631),
                            fontSize: 10,
                            fontWeight: FontWeight
                                .bold // Adjust the font size as needed
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Register student
                Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Vertically center content
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Horizontally center content
                    children: [
                      Card(
                          color: Colors.purple,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.create,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 25),
                          )),
                      Text(
                        'Register Student',
                        style: TextStyle(
                            color: Color(0xff081631),
                            fontSize: 10,
                            fontWeight: FontWeight
                                .bold // Adjust the font size as needed
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "Recent Attendance",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ),
             Expanded(
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200/300"),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                "Recent Attendance",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
                     Text(
                "Recent Attendance",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
                      Text(
                "Recent Attendance",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
                    ],
                  ),
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}
