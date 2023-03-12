import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter/material.dart';

class PatientRegister extends StatefulWidget {
  const PatientRegister({Key? key}) : super(key: key);

  @override
  State<PatientRegister> createState() => _PatientRegisterState();
}

class _PatientRegisterState extends State<PatientRegister> {
  bool gender = true;
  late String pass;
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFecfefe),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 130,
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),

                      ///full name text field
                      TextFormField(
                        validator: (value) {
                          if (value == null ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Full name must be entered';
                          }
                          return null;
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                          fillColor: Color(0xffa6e3e9),
                          filled: true,
                          hintText: 'Enter your full name',
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'UserName',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),

                      ///Username text field
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Username can\'t be empty';
                          }
                          return null;
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                          fillColor: Color(0xffa6e3e9),
                          filled: true,
                          hintText: 'Enter your username',
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email Address',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),

                      ///Email text field
                      TextFormField(
                        validator: (value) {
                          if (value == null ||
                              !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                                  .hasMatch(value)) {
                            return 'please enter valid email format \n example:user@email.com';
                          }
                          return null;
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                          fillColor: Color(0xffa6e3e9),
                          filled: true,
                          hintText: 'Enter your email address',
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),

                      ///password text field
                      TextFormField(
                        validator: (value) {
                          if (value == null ||
                              !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-+=:\[\]?\._;])[A-Za-z\d\s!@#$%^&*()\-+=:\[\]?\._;~`]')
                                  .hasMatch(value)) {
                            return 'please enter valid password';
                          } else {
                            pass = value;
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                          fillColor: Color(0xffa6e3e9),
                          filled: true,
                          hintText: 'Enter your password',
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Text('at least one capital letter.'),
                      Text('at least one special character(@,#,*,_,-).'),
                      Text('at least one number.'),
                      SizedBox(height: 10),
                      Text(
                        'Confirm Password',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),

                      ///confirm pass text field
                      TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'Password can\'t be empty';
                          } else if (!RegExp(
                                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-+=:\[\]?\._;]).{5,}[A-Za-z\d\s!@#$%^&*()\-+=:\[\]?\._;~`]')
                                  .hasMatch(value) ||
                              value != pass) {
                            return 'password doesn\'t match';
                          } else if (value == pass) {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 9),
                          fillColor: Color(0xffa6e3e9),
                          filled: true,
                          hintText: 'Re-enter your password',
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Date of birth (optional)',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      DOBInputField(
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now(),
                        autovalidateMode: AutovalidateMode.disabled,
                        inputDecoration: InputDecoration(
                          fillColor: Color(0xffa6e3e9),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 3, color: Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffa6e3e9)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 'male',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                value = gender;
                                print(value);
                              });
                            },
                          ),
                          Text(
                            'male',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Radio(
                              value: 'female',
                              groupValue: gender,
                              onChanged: (value) {}),
                          Text(
                            'female',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('success');
                          }
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFFacdfe8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Verify email',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
