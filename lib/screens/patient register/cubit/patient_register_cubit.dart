import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:free_smile_app/network/dio_func.dart';
import 'package:free_smile_app/network/end_points.dart';
import 'package:free_smile_app/screens/patient%20register/cubit/patient_register_states.dart';

import '../../../model/login_model.dart';

class PatientRegisterCubit extends Cubit<PatientRegisterStates> {
  PatientRegisterCubit() : super(PatientRegisterInitialState());

  late UserData loginModel;
  static PatientRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister(
      {required String Username,
      required String password,
      required String email,
      required String fullName,
      String? phone,
      required bool gender,
      required String birthDate}) {
    Response response = Response(requestOptions: RequestOptions());
    emit(PatientRegisterLoadingState());
    DioHelper.postData(
      'https://9406-167-172-184-1.eu.ngrok.io' + PATIENTREGISTER,
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
      emit(PatientRegisterSucceedState(loginModel));
    }).catchError((error) {
      var dioStatus = DioHelper().status;
      if (error is DioError) {
        if (error.response!.statusCode == 400) {
          final data = error.response!.data as Map<String, dynamic>;
          if (data.containsKey("errors")) {
            //this a validation error
            //handle it from here
            //that errors key will contains fields and their errors
            print(data["errors"]["Username"][0]);
            //print(data["errors"]['phone']);
          } else if (data.containsKey('error')) {
            //thats a regular error from me
            print(data['error']);
            //redirect user to nextPage;
          }
        } else if (dioStatus == 401) {
          // Unauthorized maybe token expired طبعا مينفعش يحصل هنا كدة اصلا
          // redirect to login and print('you should login again')
        } else if (error.response!.statusCode == 403) {
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
        //emit(PatientRegisterErrorState(error.response!.data['error']));
      }

      emit(PatientRegisterErrorState(error.toString()));

      // print(error.toString());
    });
  }
}
