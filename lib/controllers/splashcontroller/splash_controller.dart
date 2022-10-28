import 'dart:developer';

import 'package:get/get.dart';
import 'package:infinity_learning_zone/pages/auth/login_page.dart';
import 'package:infinity_learning_zone/pages/basepage/base_page.dart';
import 'package:infinity_learning_zone/storage/get_storage_manager.dart';

class SplashController extends GetxController {
  static navigate() async {
    log('loggedIn: ${GetStorageManager.isLoggedIn()}');
    Future.delayed(const Duration(seconds: 4), () {
      if (GetStorageManager.isLoggedIn() == true) {
        Get.off(const BasePage());
      } else {
        Get.off(const LoginPage());
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    navigate();
  }
}
