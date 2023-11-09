import 'package:flutter/material.dart';
import 'package:my_app/pages/los_page.dart';
import 'package:my_app/pages/scan_page.dart';
import 'package:my_app/pages/settings_page.dart';
import '../pages/dashboard_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPage = 0;

  List<Widget> pages = const [
    DashboardPage(),
    LosPage(),
    ScanPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false, // This line removes the back arrow

        centerTitle: true, // Center both the title and the leading widget
        title: Image.asset(
          'assets/images/logo.png',
          // You can set width, height, and other properties to customize the logo
          width: 80, // Adjust the width as needed
          height: 80, // Adjust the height as needed
        ),
        elevation: 10,
      ),
      body: pages.elementAt(currentPage),
      bottomNavigationBar: SizedBox(
        height: 65, // You can adjust this value to change the height
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Los',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: currentPage,
          showUnselectedLabels: true,
          onTap: (int value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
      ),
    );
  }
}
