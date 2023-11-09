import 'package:flutter/material.dart';
import 'package:my_app/pages/settings_page.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                  ),
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
                        color: const Color(0xFF081631),
                      ), 
                      SizedBox(width: 15), 
                      Text(
                        'About App',
                        style: TextStyle(
                          color: const Color(0xFF081631),
                          fontSize: 18,
                        ),
                      ), 
                      SizedBox(
                          width: 10),
                    ],
                  ),
                  label: const Text(''), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    elevation: 5, 
                    padding: const EdgeInsets.all(18),
                  ),
                ),

                const SizedBox(height: 25), 

                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Welcome to the QR Code Attendance Checker app, your trusted attendance management solution designed especially for schools and students!\n\n\nWhat Our App Offers: \n• Effortless Attendance Tracking: Say goodbye to manual attendance taking. Our mobile app allows teachers to quickly and accurately record attendance with just a few taps on their smartphones. \n• Real-Time Insights: Stay updated with real-time attendance data, enabling educators to identify attendance patterns and provide timely support to students who may be facing challenges. \n• Customization: Tailor our app to your school\'s specific needs. Whether you manage a small elementary school or a large university, our app can be adapted to your unique requirements. \n• Security: We prioritize the security of student data. Our app employs robust encryption and data protection measures to ensure the confidentiality and privacy of student information.',
                    style: TextStyle(
                      color: const Color(0xFF081631),
                      fontSize: 13,
                    ),
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.clip,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF081631),
                    elevation: 5, 
                    padding: const EdgeInsets.all(
                        18),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsPage()),
                    );
                  },
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
