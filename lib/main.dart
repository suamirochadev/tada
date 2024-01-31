import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tada/screens/login_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBu4prQmIci_lwJzrzASOlPCbuBk1bLzz0",
        authDomain: "tada-suamirocha.firebaseapp.com",
        projectId: "tada-suamirocha",
        storageBucket: "tada-suamirocha.appspot.com",
        messagingSenderId: "537545322725",
        appId: "1:537545322725:web:971927923424fa34ad640c"
    ),
  );
  runApp(
    DevicePreview(
      enabled: kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

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
