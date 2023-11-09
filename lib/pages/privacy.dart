import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

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
                        Icons.privacy_tip,
                        size: 35,
                        color: Colors.white,
                      ), // First icon
                      SizedBox(width: 15), // Space between icons and label
                      Text(
                        'Privacy Policy',
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
                    'Thank you for choosing the QR Code Attendance Checker App. We are committed to safeguarding your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect your data. By using our app, you consent to the practices described herein.\n\n' +
                    'Information We Collect: \n' +
                    '1. User Account Information: To use our app, you may be required to create an account. We collect information such as your name, email address, and password to set up and manage your account. \n' +
                    '2. Attendance Data: Our app collects attendance records, which may include student names, dates, and times of attendance. This information is used solely for attendance tracking purposes.\n' +
                    '3. ODevice Information: We may collect information about the device you use to access our app, including the device\'s unique identifier, operating system, and version.\n' +
                    '4. Usage Data: We gather data on how you interact with our app, including your interactions with features and the frequency and duration of your app usage.\n' +
                    '\nHow We Use Your Information:\n' +
                    'We use the information we collect for the following purposes:\n' +
                    '1. Attendance Tracking: Your attendance data is used to facilitate efficient attendance management for educational institutions.\n' +
                    '2. App Improvement: We use usage data to analyze app performance and make improvements to enhance the user experience.\n' +
                    '3. Account Management: Your account information is used to manage your app account and provide customer support.\n' +
                    '4. Communication: We may use your email address to send important updates, service-related announcements, and promotional information. You can opt out of promotional',
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