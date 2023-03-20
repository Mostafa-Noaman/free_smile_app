import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_smile_app/network/dio_func.dart';
import 'package:free_smile_app/network/end_points.dart';
import 'package:free_smile_app/screens/doctor%20register/cubit/doc_register_states.dart';

import '../../../model/login_model.dart';

class DocRegisterCubit extends Cubit<DocRegisterStates> {
  DocRegisterCubit() : super(DocRegisterInitialState());

  late UserData loginModel;
  static DocRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister(
      {required String Username,
      required String password,
      required String email,
      required String fullName,
      String? phone,
      required bool gender}) {
    emit(DocRegisterLoadingState());
    DioHelper.postData(
      'https://0db6-161-35-216-189.eu.ngrok.io' + DOCREGISTER,
      {
        'fullname': fullName,
        'username': Username,
        'email': email,
        'password': password,
        'phone': phone,
        'gender': gender
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
          //print('not allowed')
        }
        emit(DocRegisterErrorState(error.response?.data['error']));
      }

      emit(DocRegisterErrorState(error.response?.data['error']));
      // print(error.toString());
    });
  }
}
