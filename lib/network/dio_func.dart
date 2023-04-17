import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:free_smile_app/model/login_model.dart';

class DioHelper {
  static Future<String> getServerDomain() async {
    final dio = Dio();
    final response = await dio
        .get('https://api.github.com/gists/458cc68066d2c1e0fa01ba1271e81699');
    final gist = response.data;
    final url = gist['files']['ngrok.txt']['content'];
    String finalUrl = url.toString();
    return finalUrl;
  }

  // static late String Url =
  //     getServerDomain().then((value) => {value = Url}) as String;

  static Dio dio = Dio();
  static Response response = Response(requestOptions: RequestOptions());
  int? status = response.statusCode;
  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: 'https://df8d-167-172-184-1.eu.ngrok.io',
          headers: {'Content-Type': 'application/json'}),
    );
  }

  static Future<Response> putData(
      @required String url, @required Map<String, dynamic> query) async {
    return await dio.put(url, queryParameters: query);
  }

  static Future<Response> getData(
      String url, Map<String, dynamic> query, String token) async {
    dio.options.headers = {'Authorization': token};

    return await dio.get(url, queryParameters: query);
  }

  static Future<Response> postData(@required String url,
      @required Map<String, dynamic> data, String token) async {
    return await dio.post(
      url,
      data: data,
    );
  }
}
