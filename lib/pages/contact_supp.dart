import 'package:flutter/material.dart';

class ContactSupp extends StatelessWidget {
  const ContactSupp({super.key});

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
                        Icons.contact_support_rounded,
                        size: 35,
                        color: Colors.white,
                      ), // First icon
                      SizedBox(width: 15), // Space between icons and label
                      Text(
                        'Contact Support',
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
                    'Contact Us: \n' +
                    'If you have any questions or concerns about our Privacy Policy or data practices, please contact us at [69iners45261@gmail.com/999-222-111]. \n' +
                    '\nOur support team operates during regular business hours, and we aim to respond to inquiries promptly.\n\n' +
                    '\nFeedback:' +
                    '\nWe welcome your feedback and suggestions on how we can improve our app and services. Your input is valuable to us and helps us enhance your experience with the QR Code Attendance Checker App. Please send your feedback to [69iners45261@gmail.com].\n' +
                    '\nYour satisfaction is our top priority, and we are committed to providing you with excellent service and support. We look forward to assisting you and ensuring your experience with our app is a positive one.\n' +
                    '\nThank you for choosing QR Code Attendance Checker App.',
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