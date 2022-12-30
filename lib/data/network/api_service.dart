import 'dart:developer';
import 'package:dio/dio.dart' as dio;

class ApiService {
  static String baseUrl = 'https://jsonplaceholder.typicode.com';
  static final _dio = dio.Dio();

  static Future<dynamic> getApi(String path, {body}) async {
    try {
      final response = await _dio.get(baseUrl + path);
      if (response.statusCode == 200) {
        return Future.value(response.data);
      } else {
        return Future.error(
            'api_service: ${response.statusCode}=>${response.statusMessage}');
      }
    } catch (e) {
      log('api_service: ${e.toString()}');
      return Future.error(e.toString());
    }
  }
}
