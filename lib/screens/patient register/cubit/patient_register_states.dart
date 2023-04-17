import 'package:free_smile_app/model/login_model.dart';

abstract class PatientRegisterStates {}

class PatientRegisterInitialState extends PatientRegisterStates {}

class PatientRegisterLoadingState extends PatientRegisterStates {}

class PatientRegisterSucceedState extends PatientRegisterStates {
  late final UserData loginModel;
  PatientRegisterSucceedState(this.loginModel);
}

class PatientRegisterErrorState extends PatientRegisterStates {
  final String error;
  PatientRegisterErrorState(this.error);
}
