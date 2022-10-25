import 'package:get_storage/get_storage.dart';

class GetStorageManager {
  static var box = GetStorage();

  static saveToken(String token) {
    box.write('token', token);
  }

  static String getToken() {
    return box.read('token');
  }

  static bool isLoggedIn() {
    var token = box.read('token');
    if (token != null) {
      return true;
    }
    return false;
  }
}
