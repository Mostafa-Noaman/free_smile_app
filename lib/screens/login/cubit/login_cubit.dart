import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:free_smile_app/network/dio_func.dart';
import 'package:free_smile_app/network/end_points.dart';
import 'package:free_smile_app/screens/login/cubit/login_states.dart';

import '../../../model/login_model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  late UserData loginModel;
  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({required String emailUsername, required String password}) {
    emit(LoginLoadingState());
    DioHelper.postData(
      'https://9523-167-172-184-1.ngrok-free.app' + LOGIN,
      {'usernameoremail': emailUsername, 'password': password},
      '',
    ).then((value) {
      // print(value.data);
      loginModel = UserData.fromJson(value.data);
      // print(loginModel.message);
      // print(loginModel.nextPage);
      print(loginModel.error);
      emit(LoginSucceedState(loginModel));
    }).catchError((error) {
      if (error is DioError) {
        if (error.response!.statusCode == 400) {
          final data = error.response!.data as Map<String, dynamic>;
          if (data.containsKey('errors')) {
            //this a validation error
            //handle it from here
            //that errors key will contains fields and their errors
            print(data['errors']);
          } else if (data.containsKey('error')) {
            //thats a regular error from me
            print(data['error']);
            //redirect user to nextPage;
          }
        } else if (error.response!.statusCode == 401) {
          // Unauthorized maybe token expired طبعا مينفعش يحصل هنا كدة اصلا
          // redirect to login and print('you should login again')
        } else if (error.response!.statusCode == 403) {
          // Forbidden, a patient is trying to verifyDentist Ex
          print('not allowed');
        }
        emit(LoginErrorState(error.response?.data['error']));
      }
      //
      // emit(LoginErrorState(error.toString()));
      // print(error.toString());
    });
  }
}
