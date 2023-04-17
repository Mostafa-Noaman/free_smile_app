import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:free_smile_app/model/register_model.dart';
import 'package:free_smile_app/network/dio_func.dart';
import 'package:free_smile_app/network/end_points.dart';
import 'package:free_smile_app/screens/doctor%20register/cubit/doc_register_states.dart';

import '../../../model/login_model.dart';

class DocRegisterCubit extends Cubit<DocRegisterStates> {
  DocRegisterCubit() : super(DocRegisterInitialState());

  late UserData loginModel;
  late RegisterData registerModel;
  static DocRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister(
      {required String Username,
      required String password,
      required String email,
      required String fullName,
      String? phone,
      required bool gender,
      String? birthDate}) {
    emit(DocRegisterLoadingState());
    DioHelper.postData(
      'https://df8d-167-172-184-1.eu.ngrok.io' + DOCREGISTER,
      {
        'fullname': fullName,
        'username': Username,
        'email': email,
        'password': password,
        'phone': phone,
        'gender': gender,
        'birthdate': birthDate
      },
      '',
    ).then((value) {
      // print(value.data);
      loginModel = UserData.fromJson(value.data);
      // print(loginModel.message);
      // print(loginModel.nextPage);
      print(loginModel.error);
      emit(DocRegisterSucceedState(loginModel));
    }).catchError((error) {
      var dioStatus = DioHelper().status;
      if (error is DioError) {
        if (dioStatus == 400) {
          final data = error.response!.data as Map<String, dynamic>;
          if (data.containsKey('errors')) {
            Fluttertoast.showToast(
                msg: data['errors']['username'],
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            //this a validation error
            //handle it from here
            //that errors key will contains fields and their errors
            // print(data['errors'][0]['Username']);
            print(data.toString());
          } else if (data.containsKey('error')) {
            //thats a regular error from me
            print(data['error']['username']);
            //redirect user to nextPage;
          }
        } else if (dioStatus == 401) {
          // Unauthorized maybe token expired طبعا مينفعش يحصل هنا كدة اصلا
          // redirect to login and print('you should login again')
        } else if (dioStatus == 403) {
          // Forbidden, a patient is trying to verifyDentist Ex
          //print('not allowed')
        } else if (error.response!.statusCode == 404) {
          Fluttertoast.showToast(
              msg: 'something went wrong, please try again later ',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          // Forbidden, a patient is trying to verifyDentist Ex
          //print('not allowed')
        } else if (error.response!.statusCode == 500) {
          Fluttertoast.showToast(
              msg: 'Something went wrong, please try again later!',
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      }

      emit(DocRegisterErrorState(error.toString()));
      // print(error.toString());
    });
  }
}
