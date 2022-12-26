import 'dart:developer';

import 'package:get/get.dart';
import 'package:infinity_learning_zone/pages/auth/login_page.dart';
import 'package:infinity_learning_zone/pages/basepage/base_page.dart';
import 'package:infinity_learning_zone/storage/get_storage_manager.dart';

class AuthController extends GetxController {
  static var isLoading = false.obs;

  static userLogin(String email, String password) {
    isLoading.value = true;
    Future.delayed(Duration(milliseconds: 1500), () {
      GetStorageManager.saveToken('token');
      Get.off(const BasePage());
      isLoading.value = false;
    });
  }

  static userRegister(String userName, String email, String password) {
    isLoading.value = true;
    Future.delayed(Duration(milliseconds: 1500), () {
      Get.off(const LoginPage());
      isLoading.value = false;
    });
  }
}
