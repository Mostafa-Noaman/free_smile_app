import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:free_smile_app/screens/doctor%20register/doctor_register_screen.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';
import 'package:free_smile_app/screens/patient%20register/patient_register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  Future<String> getServerDomain() async {
    final dio = Dio();
    final response = await dio
        .get('https://api.github.com/gists/458cc68066d2c1e0fa01ba1271e81699');
    final gist = response.data;
    final content = gist['files']['ngrok.txt']['content'];
    print(content);
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecfefe),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 120,
          ),
          Image(
            image: AssetImage('images/29630440_2205_w039_n003_226b_p1_226.jpg'),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  width: 160,
                  child: Column(
                    children: const [
                      Image(
                        image:
                            AssetImage('images/photo_2023-01-31_00-28-23.jpg'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Professional Doctors available for you',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ],
                  )),
              Container(
                width: 160,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage('images/photo_2023-01-31_00-28-24.jpg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Provide a suitable medical care for you',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DoctorRegister()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFacdfe8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Start as Doctor',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientRegister()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFacdfe8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Start as Patient',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'sign in',
                    style: TextStyle(
                      color: Color(0xFF88cdca),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
