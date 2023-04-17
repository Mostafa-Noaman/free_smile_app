class RegisterData {
  late var id;
  late var token;
  late var message;
  late var error;
  late var nextPage;
  late ErrorDataModel errors;

  RegisterData(this.id, this.token, this.message, this.error, this.nextPage,
      this.errors);

  RegisterData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    message = json['message'];
    error = json['error'];
    nextPage = json['nextPage'];
    errors = ErrorDataModel.fromJson(json['errors']);
  }
}

class ErrorDataModel {
  late List<emailModel> email;
  late List<userNameModel> userName;
  late List<birthDateModel> birthDate;
  ErrorDataModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    userName = json['username'];
    birthDate = json['birthdate'];
  }
}

class emailModel {
  emailModel.fromJson(Map<String, dynamic> json) {}
}

class birthDateModel {
  birthDateModel.fromJson(Map<String, dynamic> json) {}
}

class userNameModel {
  userNameModel.fromJson(Map<String, dynamic> json) {}
}
