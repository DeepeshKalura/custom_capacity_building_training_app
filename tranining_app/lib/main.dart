import 'package:flutter/material.dart';

import 'view/screen/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Mangaement App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 24, 53),
            fontFamily: "Roboto",
          ),
          displayMedium: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Roboto",
          ),
          displaySmall: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Roboto",
          ),
          labelLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey[600],
            fontFamily: "Open_Sans",
          ),
          labelMedium: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontFamily: "Open_Sans",
          ),
          labelSmall: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.indigo,
            fontFamily: "Open_Sans",
          ),
          bodyLarge: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontFamily: "Open-sans",
          ),
          bodyMedium: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontFamily: "Open-sans",
          ),
          bodySmall: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontFamily: "Open-sans",
          ),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(229, 238, 243, 1),
      ),
      home: const SignUpScreen(),
    );
  }
}
