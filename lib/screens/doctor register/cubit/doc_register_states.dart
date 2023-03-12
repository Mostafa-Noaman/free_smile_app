import 'package:free_smile_app/model/login_model.dart';

abstract class DocRegisterStates {}

class DocRegisterInitialState extends DocRegisterStates {}

class DocRegisterLoadingState extends DocRegisterStates {}

class DocRegisterSucceedState extends DocRegisterStates {
  late final UserData loginModel;
  DocRegisterSucceedState(this.loginModel);
}

class DocRegisterErrorState extends DocRegisterStates {
  final String error;
  DocRegisterErrorState(this.error);
}
