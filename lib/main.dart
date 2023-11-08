import 'package:flutter/material.dart';
import 'package:my_app/core/notifiers.dart';
import 'package:my_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color.fromARGB(255, 54, 244, 114),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 30, 233, 91),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Colors.yellow,
    ),
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: Color(0xff081631), // Change selected item icon and label color
      unselectedItemColor: Color.fromARGB(255, 116, 114, 114), 
    ),
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder(
      valueListenable: isDarkNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: isDark ? darkTheme : lightTheme,
          home: const HomePage(),
          
        );
      },
    );
  }
}
