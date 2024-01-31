import 'package:flutter/material.dart';
import 'package:tada/screens/login_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tada App - ToDo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.deepOrange.shade300,
        scaffoldBackgroundColor: Colors.teal.shade500,
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.teal.shade50,
            ),
      ),
      home: const LoginScreen(),
    );
  }
}
