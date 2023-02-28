import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/doctor_register.dart';
import 'package:free_smile_app/screens/landing_page.dart';
import 'package:free_smile_app/screens/patient_register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}
