import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/constant/app_constant.dart';
import 'package:infinity_learning_zone/pages/auth/login_page.dart';
import 'package:infinity_learning_zone/pages/basepage/base_page.dart';
import 'package:infinity_learning_zone/storage/get_storage_manager.dart';

class AuthController extends GetxController {
  static var isLoading = false.obs;
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static userLogin(String email, String password) async {
    isLoading.value = true;
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      String token = credential.user!.uid;
      log(token);
      GetStorageManager.saveToken(token);
      Get.off(const BasePage());
      isLoading.value = false;
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      AppConstant.SnackBar('Error', e.message.toString());
      isLoading.value = false;
    }
  }

  static userRegister(String userName, String email, String password) async {
    isLoading.value = true;
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      log(credential.user!.uid);
      Get.off(const LoginPage());
      isLoading.value = false;
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      AppConstant.SnackBar('Error', e.message.toString());
      isLoading.value = false;
    }
  }
}
