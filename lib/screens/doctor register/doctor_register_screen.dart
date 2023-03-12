import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:free_smile_app/screens/doctor%20register/cubit/doc_register_cubit.dart';
import 'package:free_smile_app/screens/doctor%20register/cubit/doc_register_states.dart';

class DoctorRegister extends StatefulWidget {
  const DoctorRegister({Key? key}) : super(key: key);

  @override
  State<DoctorRegister> createState() => _DoctorRegisterState();
}

class _DoctorRegisterState extends State<DoctorRegister> {
  late String pass;
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var userNameController = TextEditingController();
  var phoneController = TextEditingController();

  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DocRegisterCubit(),
      child: BlocConsumer<DocRegisterCubit, DocRegisterStates>(
        listener: (context, state) {
          if (state is DocRegisterSucceedState) {
            print(state.loginModel.message);
            Fluttertoast.showToast(
                msg: state.loginModel.message,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 5,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                fontSize: 16.0);
          } else if (state is DocRegisterErrorState) {
            //print(state.error);
            Fluttertoast.showToast(
                msg: state.error.toString(),
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }
        },
        builder: (context, state) {
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
                          ),
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
                              controller: fullNameController,
                              validator: (value) {
                                if (value == null ||
                                    !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                  return 'Full name must be entered';
                                }
                                return null;
                              },
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Enter your full name',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
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
                              controller: userNameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Username can\'t be empty';
                                }
                                return null;
                              },
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Enter your username',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
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
                              controller: emailController,
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
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Enter your email address',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
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
                              controller: passwordController,
                              validator: (value) {
                                if (value == null ||
                                    !RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()\-+=:\[\]?\._;])[A-Za-z\d\s!@#$%^&*()\-+=:\[\]?\._;~`]{10,}')
                                        .hasMatch(value)) {
                                  return 'please enter valid password';
                                } else {
                                  pass = value;
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Enter your password',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Text('password must be 10 characters or more.'),
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
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Re-enter your password',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Phone Number (optional)',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            TextFormField(
                              controller: phoneController,
                              validator: (value) {
                                if (value == null) {
                                  return null;
                                } else if (value != null ||
                                    !RegExp(r'^(?:[0][1-9])?[0-9]{10}$')
                                        .hasMatch(value)) {
                                  return 'Please enter correct phone number';
                                }
                              },
                              obscureText: false,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 9),
                                fillColor: Color(0xffa6e3e9),
                                filled: true,
                                hintText: 'Enter your phone number',
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Color(0xffa6e3e9)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            ConditionalBuilder(
                              condition: state is! DocRegisterLoadingState,
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator()),
                              builder: (context) => TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    DocRegisterCubit.get(context).userRegister(
                                      Username: userNameController.text,
                                      password: passwordController.text,
                                      email: emailController.text,
                                      fullName: fullNameController.text,
                                      phone: phoneController.text,
                                      gender: true,
                                    );

                                    // print(emailController.text);
                                    // print(passwordController.text);

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
        },
      ),
    );
  }
}
