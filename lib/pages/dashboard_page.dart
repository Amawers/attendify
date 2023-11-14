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
            SizedBox(height: 30.0),

            // Kani na container para sa 1st section/widget, naay greetings ug profile
            Container(
              width: 300,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
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
                            fontSize: 14,
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

            SizedBox(height: 20),

            // Para sa main overview na widget
            Container(
              width: 320,
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
                              fontSize: 18),
                        ),
                        Card(
                          color: Color(0xFF081631),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              top: 7,
                              right: 10,
                              bottom: 7,
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 20),
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

            SizedBox(height: 20),

            // Para sa katong 3 ka buttons (attendace, class scheduling, reg)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Attendance na button
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // class scheduling na button
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                // Register student na button
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              ],
            ),

            //Para sa katong Recent Attendance na section
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "Recent Attendance",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff081631),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  /* Mock data para naay pang display lang pero name ug profile
                  lang siya, way labot tong present or absent then tong time ins
                  nila kai ge hard code nalang siya para makita lang visually*/
                  final mockData = [
                    {
                      "Name": "Lebron Germs",
                      "imageUrl": "https://picsum.photos/200/300",
                    },
                    {
                      "Name": "Skusta Clean",
                      "imageUrl": "https://picsum.photos/200/301",
                    },
                    {
                      "Name": "Ed Shernan",
                      "imageUrl": "https://picsum.photos/200/302",
                    },
                  ];

                  final record = mockData[index];

                  // Template para gamiton sa pag create sa records
                  return Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(record["imageUrl"]!),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            record["Name"]!,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff081631),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100.0),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.person_add_alt_1,
                                color: Color.fromARGB(255, 0, 104, 17),
                                size: 18,
                              ),
                              Text(
                                "PRESENT",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 104, 17),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "7:20 AM TIME IN",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff081631),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
                // Para pud naay space between records
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}