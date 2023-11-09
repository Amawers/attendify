import 'package:flutter/material.dart';
import 'package:my_app/core/notifiers.dart';
import 'package:my_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /* Lightmode nga theme, mao ang default na theme sa app,
  ma apply rani siya na theme starting dashboard up to settings*/
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

  /* Bottom of the list, nanay code pero wala pa ge implement kai lisod 
  mag contrast sa colors sa darkmode tas limited colors ra magamit*/
  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
    ),
     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      selectedItemColor: Color(0xff081631),
      unselectedItemColor: Color.fromARGB(255, 116, 114, 114), 
    ),
  );

  // Main widget tas naa diri ang logic para e check if na click pa ang darkmode or light mode
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
