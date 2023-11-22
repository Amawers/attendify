import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/about_app.dart';
import 'package:my_app/src/features/core/screens/profile/profile_screen.dart';
import 'package:my_app/src/features/core/screens/register/register_student_screen.dart';
import 'package:my_app/src/repository/authentication_repository/authentication_repository.dart';


// For icons and button texts
final Map<String, IconData> buttonIcons = {
  'Manage Account': Icons.account_circle,
  'Private Policy': Icons.privacy_tip,
  'Contact Support': Icons.contact_support,
  'About App': Icons.info,
  'Log Out': Icons.logout,
};


// Main class para sa Settings Page
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, Key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // CenteredMarginContainer constructor para pag create sa buttons
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
            child: CenteredMarginContainer(
              margin: const EdgeInsets.only(top: 30.0),
              text: 'Manage Account',
              icon: buttonIcons['Manage Account'],
            ),
          ),
          CenteredMarginContainer(
            margin: const EdgeInsets.only(top: 30.0),
            text: 'Private Policy',
            icon: buttonIcons['Private Policy'],
          ),
          CenteredMarginContainer(
            margin: const EdgeInsets.only(top: 30.0),
            text: 'Contact Support',
            icon: buttonIcons['Contact Support'],
          ),
          // Mo navigate sa About App page kung tuplokon
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterStudentScreen()),
              );
            },
            child: CenteredMarginContainer(
              margin: const EdgeInsets.only(top: 30.0),
              text: 'Sample Register',
              icon: buttonIcons['About App'],
            ),
          ),
          InkWell(
            onTap: () {
              AuthenticationRepository.instance.logout();
            },
            child: CenteredMarginContainer(
              margin: const EdgeInsets.only(top: 30.0),
              text: 'Log Out',
              icon: buttonIcons['About App'],
            ),
          ),
        ],
      ),
    );
  }
}

/*Template class para sa pag create sa mga buttons, 
diri na class gina define ang mga styles sa buttons*/
class CenteredMarginContainer extends StatelessWidget {
  final EdgeInsets margin;
  final String text;
  final IconData? icon;

  const CenteredMarginContainer({super.key, 
    required this.margin,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin,
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.08,
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff101010),
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      color: const Color(0xff081631),
                    ),
                  const SizedBox(width: 8),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Color(0xff081631),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}