class UserData {
  late var id;
  late var token;
  late var message;
  late var error;
  late var nextPage;

  UserData(this.id, this.token, this.message, this.error, this.nextPage);

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    token = json['token'];
    message = json['message'];
    error = json['error'];
    nextPage = json['nextPage'];
  }
}
