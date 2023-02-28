import 'package:flutter/material.dart';

class PatientRegister extends StatefulWidget {
  const PatientRegister({Key? key}) : super(key: key);

  @override
  State<PatientRegister> createState() => _PatientRegisterState();
}

class _PatientRegisterState extends State<PatientRegister> {
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
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Expanded(
                  //       child: Column(
                  //         children: [
                  //           Text(
                  //             'First Name',
                  //             style: TextStyle(
                  //                 fontSize: 20, fontWeight: FontWeight.w500),
                  //           ),
                  //           txtFields(hintText: 'Enter first name')
                  //         ],
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 20,
                  //     ),
                  //     Expanded(
                  //       child: Column(
                  //         children: [
                  //           Text(
                  //             'Last Name',
                  //             style: TextStyle(
                  //                 fontSize: 20, fontWeight: FontWeight.w500),
                  //           ),
                  //           txtFields(hintText: 'Enter last name')
                  //         ],
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Text(
                    'Full Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtFields(
                    hintText: 'Enter your full name',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'UserName',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtFields(
                    hintText: 'Enter your username',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email Address',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtFields(
                    hintText: 'Enter your email address',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtFields(
                    hintText: 'Enter your password',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  txtFields(
                    hintText: 'Enter your password',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class txtFields extends StatelessWidget {
  txtFields({required this.hintText});
  late String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
