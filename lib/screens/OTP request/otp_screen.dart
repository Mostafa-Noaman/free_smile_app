import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_smile_app/screens/login/login_screen.dart';

class RequestOTP extends StatefulWidget {
  const RequestOTP({Key? key}) : super(key: key);

  @override
  State<RequestOTP> createState() => _RequestOTPState();
}

class _RequestOTPState extends State<RequestOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecfefe),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/sparkletooth.png'),
                    height: 130,
                    width: 140,
                  ),
                  Text(
                    'Free Smile',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'We have sent verification code to your email address',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              Form(
                child: SizedBox(
                  height: 68,
                  width: 200,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length == 6) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: Theme.of(context).textTheme.headline6,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(6),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      hintText: '- - - - - -',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Color(0xffa6e3e9)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFacdfe8),
                  fixedSize: Size(300, 40),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Success! Your account is verified.'),
                            content: Text('Now you can login.'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  child: Text('Login')),
                            ],
                          ));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
