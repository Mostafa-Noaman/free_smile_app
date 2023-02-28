import 'package:flutter/material.dart';

class DoctorRegister extends StatefulWidget {
  const DoctorRegister({Key? key}) : super(key: key);

  @override
  State<DoctorRegister> createState() => _DoctorRegisterState();
}

class _DoctorRegisterState extends State<DoctorRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecfefe),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                child: Row(
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
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Full Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    txtFields(
                      obsecurePass: false,
                      hintText: 'Enter your full name',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'UserName',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    txtFields(
                      obsecurePass: false,
                      hintText: 'Enter your username',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Email Address',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    txtFields(
                      obsecurePass: false,
                      hintText: 'Enter your email address',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    txtFields(
                      obsecurePass: true,
                      hintText: 'Enter your password',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Confirm Password',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    txtFields(
                      obsecurePass: true,
                      hintText: 'Enter your password',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class txtFields extends StatelessWidget {
  txtFields({required this.hintText, required this.obsecurePass});
  late String hintText;
  late bool obsecurePass;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecurePass,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 9),
        fillColor: Color(0xffa6e3e9),
        filled: true,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3, color: Color(0xffa6e3e9)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
