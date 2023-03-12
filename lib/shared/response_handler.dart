import 'package:free_smile_app/network/dio_func.dart';

class ResponseHandler {
  void checkStatus() {
    if (DioHelper.response.statusCode == 200) {
      print(DioHelper.response.data['message']);
    }

    if (DioHelper.response.statusCode != 200) {}
  }
}
