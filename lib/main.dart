import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_smile_app/screens/OTP%20request/otp_screen.dart';
import 'package:free_smile_app/screens/doctor%20register/doctor_register_screen.dart';
import 'package:free_smile_app/screens/home%20page/home_screen.dart';
import 'package:free_smile_app/screens/landing_page.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';
import 'package:free_smile_app/screens/onboarding/onboarding_screen.dart';
import 'package:free_smile_app/screens/patient%20register/patient_register_screen.dart';
import 'package:free_smile_app/shared/bloc_observer.dart';
import 'package:free_smile_app/shared/shared_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  var token = CacheHelper.getData(key: 'token');
  Widget widget;

  if (token != null) {
    widget = HomeScreen();
  } else {
    widget = LoginScreen();
  }

  runApp(MyApp(
    startingWidget: widget,
  ));
}

class MyApp extends StatefulWidget {
  final Widget startingWidget;

  MyApp({required this.startingWidget});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
//widget.startingWidget
