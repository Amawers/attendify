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
    scaffoldBackgroundColor: Colors.red,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.pink,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: Colors.yellow,
    ),
  );

  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
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
