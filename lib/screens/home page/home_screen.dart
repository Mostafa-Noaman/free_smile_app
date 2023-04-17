import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/login/cubit/login_cubit.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';
import 'package:free_smile_app/shared/shared_preference.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              CacheHelper.sharedPreferences!.get('token').toString(),
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
                onPressed: () {
                  CacheHelper.clearData(key: 'token').then((value) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  });
                },
                child: Text('Sign out'))
          ],
        ),
      ),
    );
  }
}
