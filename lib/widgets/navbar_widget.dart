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
      body: pages.elementAt(currentPage),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Los'),
          NavigationDestination(
              icon: Icon(Icons.qr_code_scanner), label: 'Scan'),
          NavigationDestination(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        backgroundColor: Colors.cyan,
        selectedIndex: currentPage,
        onDestinationSelected: (int value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }
}
