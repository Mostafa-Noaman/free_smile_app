import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/OTP%20request/otp_screen.dart';
import 'package:free_smile_app/screens/doctor%20register/doctor_register_screen.dart';
import 'package:free_smile_app/screens/landing_page.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';
import 'package:free_smile_app/screens/patient%20register/patient_register.dart';
import 'package:free_smile_app/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
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
      home: DoctorRegister(),
    );
  }
}
