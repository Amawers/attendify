import 'package:flutter/material.dart';

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

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
                  margin: const EdgeInsets.only(top: 80),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print("mugana lagi aysig balik balik");
                  },
                  icon: const Row(
                    children: [
                      SizedBox(width: 15),
                      Icon(
                        Icons.account_circle,
                        size: 40,
                        color: Colors.white,
                      ), // First icon
                      SizedBox(width: 25), // Space between icons and label
                      Text(
                        'Manage Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          ),
                      ), // Label text
                      SizedBox(width: 25), // Space between label and second icon
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: Colors.white,
                      ), // Second icon
                    ],
                  ),
                  label: const Text(''), // Empty label text
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF081631),
                    elevation: 5, // Set the elevation for the shadow
                    padding: const EdgeInsets.all(18),
                  ),
                ),

                const SizedBox(height: 16.0), // Add space between boxes

                Container(
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.only(left: 20),
                  // height: 150, // Adjust the height as needed
                  // decoration: BoxDecoration(
                  //   color: Colors.green,
                  //   borderRadius: BorderRadius.circular(12.0),
                  // ),
                  child: const Align(
                    alignment: Alignment.centerLeft, // Align the text to the left
                      child: Text(
                        'Change Password: ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                  ),
                ),

                const SizedBox(height: 20), // Add space between boxes

                Container(
                  // height: 175, // Adjust the height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Current Password',
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color(0xFF697DA5), // Set your desired background color
                          hintText: 'Enter text here',
                          hintStyle: const TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF081631),
                        ),
                      ),

                      const SizedBox(height: 15,),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'New Password',
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color(0xFF697DA5), // Set your desired background color
                          hintText: 'Enter text here',
                          hintStyle: const TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF081631),
                        ),
                      ),

                      const SizedBox(height: 15,),
                      
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm New Password',
                          labelStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: const Color(0xFF697DA5), // Set your desired background color
                          hintText: 'Enter text here',
                          hintStyle: const TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set border radius
                            borderSide: const BorderSide(color: Colors.transparent),
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF081631),
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 15), // Add space between boxes

                Container(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: [
                      ElevatedButton.icon(
                      onPressed: () {
                        print("mugana lagi aysig balik balik");
                      },
                        icon: const Row(
                          children: [
                            Icon(
                              Icons.check,
                              size: 20,
                              color: Colors.white,
                              ),

                            SizedBox(width: 10),

                            Text(
                              'Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                ),
                            ), // Label text
                          ],
                        ),
                        label: const Text(''), // Empty label text
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF081631),
                          elevation: 5, // Set the elevation for the shadow
                          padding: const EdgeInsets.all(15),
                        ),
                      ),

                      SizedBox(width: 15,),

                      ElevatedButton.icon(
                        onPressed: () {
                          print("mugana lagi aysig balik balik");
                        },
                        icon: const Row(
                          children: [
                            Icon(
                              Icons.clear_rounded,
                              size: 20,
                              color: Colors.white,
                              ),

                            SizedBox(width: 10,),

                            Text(
                              'Cancel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                ),
                            ), // Label text
                          ],
                        ),
                        label: const Text(''), // Empty label text
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF081631),
                          elevation: 5, // Set the elevation for the shadow
                          padding: const EdgeInsets.all(15),
                        ),
                      ),

                    ],
                  ),
                ),

              /*  const SizedBox(height: 16.0), // Add space between boxes

                Container(
                  height: 150, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  // Content for the fifth box
                ),

                const SizedBox(height: 16.0), // Add space between boxes

                Container(
                  height: 150, // Adjust the height as needed
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  // Content for the sixth box
                ), */

              ],
            ),
          ),
        ),
      ),
    );
  }
}