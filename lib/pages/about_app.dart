import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081631),

      body: SingleChildScrollView(

        child: Center(

          child: Container(
            padding: const EdgeInsets.all(15),

            child: Column(

              children: [
               Container(
                margin: const EdgeInsets.only(top: 80,),
               ),

               ElevatedButton.icon(
                  onPressed: () {
                    print("mugana lagi aysig balik balik");
                  },
                  icon: const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(
                        Icons.info,
                        size: 35,
                        color: Colors.white,
                      ), // First icon
                      SizedBox(width: 15), // Space between icons and label
                      Text(
                        'About App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          ),
                      ), // Label text
                      SizedBox(width: 10), // Space between label and second icon
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  label: const Text(''), // Empty label text
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF081631),
                    elevation: 5, // Set the elevation for the shadow
                    padding: const EdgeInsets.all(18),
                  ),
                ),

                const SizedBox(height: 25), // Add space between boxes
                
                const Padding(padding: EdgeInsets.all(25),
                  child: Text(
                    'Welcome to the QR Code Attendance Checker app, your trusted attendance management solution designed especially for schools and students!\n\n' +
                    'Who We Are: \n' +
                    'At QR Code Attendance Checker, we are dedicated to simplifying attendance tracking for educational institutions. Our app is the brainchild of passionate individuals who understand the unique needs and challenges faced by schools and students. We are committed to providing an innovative mobile solution that saves time, reduces administrative burdens, and enhances efficiency in the education sector. \n' +
                    '\nOur Mission: ' +
                    '\nOur mission is clear - to transform attendance management in schools through a user-friendly, feature-rich mobile app. We aim to empower educators, streamline administrative processes, and ensure students\' academic success by providing an intuitive and reliable QR code-based attendance tracking platform.\n' +
                    '\nWhat Our App Offers: ' +
                    '\n• Effortless Attendance Tracking: Say goodbye to manual attendance taking. Our mobile app allows teachers to quickly and accurately record attendance with just a few taps on their smartphones. ' +
                    '\n• Real-Time Insights: Stay updated with real-time attendance data, enabling educators to identify attendance patterns and provide timely support to students who may be facing challenges. ' +
                    '\n• Customization: Tailor our app to your school\'s specific needs. Whether you manage a small elementary school or a large university, our app can be adapted to your unique requirements. ' +
                    '\n• Security: We prioritize the security of student data. Our app employs robust encryption and data protection measures to ensure the confidentiality and privacy of student information.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.clip,
                  ),
                ),
                
              ],),
          ),
        ),
      ),
    );
  }
}